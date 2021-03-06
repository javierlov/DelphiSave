unit unConsEstabCUIT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  unCustomConsulta, FieldHider, ShortCutControl, Placemnt, artSeguridad,
  QueryPrint, QueryToFile, ExportDialog, SortDlg, Db, SDEngine, Grids,
  DBGrids, RXDBCtrl, ArtComboBox, ArtDBGrid, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls, Mask, ToolEdit, DateComboBox, unArtFrame,
  unArtDbFrame, unArtDBAwareFrame;

type
  TfrmConsEstabCUIT = class(TfrmCustomConsulta)
    procedure tbRefrescarClick(Sender: TObject);
  private
  protected
    procedure ClearData; override;
    procedure RefreshData; override;
  public
  end;

var
  frmConsEstabCUIT: TfrmConsEstabCUIT;

implementation

uses unPrincipal, unDmPrincipal, AnsiSql;


{$R *.DFM}

{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmConsEstabCUIT.ClearData;
begin
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmConsEstabCUIT.RefreshData;
begin
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmConsEstabCUIT.tbRefrescarClick(Sender: TObject);
begin
  sdqConsulta.Open;
  tbExportar.Enabled := not sdqConsulta.IsEmpty;

  inherited;
end;

end.

