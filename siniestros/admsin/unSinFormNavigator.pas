unit unSinFormNavigator;

interface

uses
  {$IFDEF VER180} rxPlacemnt, rxToolEdit, rxCurrEdit, {$ELSE} Placemnt, ToolEdit, CurrEdit, {$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  unSinForm, SDEngine, Db, StdCtrls, Mask, PatternEdit, ComboEditor,
  DBComboGrid, Buttons, artSeguridad, XPMenu, ExtCtrls,
  JvgGroupBox, ShortCutControl, QuickRpt, ActnList;

type
  TSinFormNavigator = class(TSinForm)
    gbNavegador: TJvgGroupBox;
    btnNavSiguiente: TSpeedButton;
    btnNavUltimo: TSpeedButton;
    btnNavPrimero: TSpeedButton;
    btnNavAnterior: TSpeedButton;
    edNroOrden: TDBComboGrid;
    procedure dsDatosDataChange(Sender: TObject; Field: TField);
    procedure sdqDatosAfterClose(DataSet: TDataSet);
    procedure btnNavPrimeroClick(Sender: TObject);
    procedure btnNavAnteriorClick(Sender: TObject);
    procedure btnNavSiguienteClick(Sender: TObject);
    procedure btnNavUltimoClick(Sender: TObject);
    procedure FSFormCreate(Sender: TObject);
    procedure FSFormDestroy(Sender: TObject);
    procedure CheckNavigatorEvent(DataSet: TDataSet);
  private
    ChildShortCutControl: TShortCutControl;
    procedure DoChangeFocus;
  protected
    vPK: Variant;
    iNewParte, InternalRecordCount: Integer;
    sPrefix, sTableName: string;
    function  GetAddButtonVisible: boolean; override;
    procedure CheckNavigator; virtual;
    procedure SetLocked(const Value: Boolean); override;
  public
    function  CanSaveCancel: Boolean; override;
    function  Save: boolean; override;
    procedure Cancel(ASinPreguntar: Boolean = False); override;
    procedure LoadData; override;
    procedure Insert; override;
  end;

implementation

{$R *.DFM}

uses
  VCLExtra, unAdmSiniestros, unDmPrincipal, AnsiSql;
  
{-------------------------------------------------------------------------------}
{ TSinFormNavigator }
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.CheckNavigator;
begin
  try
    btnNavPrimero.Enabled   := sdqDatos.Active and (sdqDatos.RecNo > {$IFDEF VER150}0{$ELSE}1{$ENDIF}) and not CanSaveCancel;
    btnNavAnterior.Enabled  := sdqDatos.Active and (sdqDatos.RecNo > {$IFDEF VER150}0{$ELSE}1{$ENDIF}) and not CanSaveCancel;
    btnNavSiguiente.Enabled := sdqDatos.Active and not (sdqDatos.RecNo {$IFDEF VER150}+ 1{$ENDIF} = sdqDatos.RecordCount) and not CanSaveCancel;
    btnNavUltimo.Enabled    := sdqDatos.Active and not (sdqDatos.RecNo {$IFDEF VER150}+ 1{$ENDIF} = sdqDatos.RecordCount) and not CanSaveCancel;
  except
    //Nada
  end;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.dsDatosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  CheckNavigator;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.sdqDatosAfterClose(DataSet: TDataSet);
begin
  inherited;
  CheckNavigator;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.btnNavPrimeroClick(Sender: TObject);
begin
  DoChangeFocus;
  sdqDatos.First;
  CambioTamanio(nil);  
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.btnNavAnteriorClick(Sender: TObject);
begin
  DoChangeFocus;
  sdqDatos.Prior;
  CambioTamanio(nil);
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.btnNavSiguienteClick(Sender: TObject);
begin
  DoChangeFocus;
  sdqDatos.Next;
  CambioTamanio(nil);
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.btnNavUltimoClick(Sender: TObject);
begin
  DoChangeFocus;
  sdqDatos.Last;
  CambioTamanio(nil);
end;
{-------------------------------------------------------------------------------}
function TSinFormNavigator.CanSaveCancel: Boolean;
begin
  Result := inherited CanSaveCancel;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.SetLocked(const Value: Boolean);
begin
  inherited SetLocked(Value);
  VCLExtra.LockControls(edNroOrden, not Value);
  if not edNroOrden.ReadOnly then
    edNroOrden.ListSource := dsDatos;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.DoChangeFocus;
begin
  SelectNext(ActiveControl, True, True);
end;
{-------------------------------------------------------------------------------}
function TSinFormNavigator.GetAddButtonVisible: boolean;
begin
  // Permite m�ltiples as� que lo habilito siempre
  Result := {inherited GetAddButtonVisible and} (Owner as TfrmAdmSiniestros).fraTrabajador.IsSelected;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.LoadData;
begin
  iNewParte := 0;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.FSFormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  iNewParte := 0;
  ChildShortCutControl := TShortCutControl(FindComponent('ShortCutControl'));

  with (Owner as TfrmAdmSiniestros) do
  try
    for i := 0 to ChildShortCutControl.ShortCuts.Count - 1 do
      with ShortCutControl.ShortCuts.Add do
      begin
        Key := ChildShortCutControl.ShortCuts[i].Key;
        LinkControl := ChildShortCutControl.ShortCuts[i].LinkControl;
      end;
  except
  end;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.Cancel(ASinPreguntar: Boolean = False);
begin
  inherited;
  iNewParte := 0;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.Insert;
  function GetNewNroParte(ADefValue: Integer): Integer;
  var
    iNroParte: Integer;
  begin
    { Por si hay alg�n registro borrado }
    iNroParte := IncSql('SELECT MAX(' + sPrefix + '_NROPARTE) ' +
                          'FROM ' + sTableName +
                        ' WHERE ' + sPrefix + '_IDEXPEDIENTE = ' + SqlValue(FIdExpediente));
    if ADefValue < iNroParte then
      Result := iNroParte
    else
      Result := ADefValue;
  end;
begin
  edNroOrden.ListSource := nil;

  if sdqDatos.Active and not sdqDatos.IsEmpty then
    InternalRecordCount := sdqDatos.RecordCount
  else
    InternalRecordCount := 0;

  iNewParte := GetNewNroParte(InternalRecordCount + 1);
  edNroOrden.Text := IntToStr(iNewParte);
  inherited;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.FSFormDestroy(Sender: TObject);
var
  i: integer;
begin
  with (Owner as TfrmAdmSiniestros) do
  try
    for i := 0 to ChildShortCutControl.ShortCuts.Count - 1 do
      ShortCutControl.ShortCuts.Items[ShortCutControl.ShortCuts.Count - 1].Free;
  except
  end;
  inherited;
end;
{-------------------------------------------------------------------------------}
function TSinFormNavigator.Save;
begin
  Result := inherited Save;
  if Result then
  begin
    sdqDatos.Close;
    sdqDatos.Open;
    sdqDatos.Locate(sPrefix + '_ID', vPK, []);
    CheckNavigator;
  end;
end;
{-------------------------------------------------------------------------------}
procedure TSinFormNavigator.CheckNavigatorEvent(DataSet: TDataSet);
begin
  inherited;
  CheckNavigator;
end;
{-------------------------------------------------------------------------------}
end.
