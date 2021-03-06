unit unFet;

interface
Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ToolWin, ComCtrls, StdCtrls, ImgList, artSeguridad, artDbLogin, General,
  shellapi, unPlanMejoras, unCapacitacion, unRiesgos, unEventos,
  DisplaySet, Placemnt, unfraEstablecimientoDomic, ExtCtrls, unFraEmpresa, Mask,
  ToolEdit, DateComboBox, IntEdit, Db, SDEngine, QueryToFile, ExportDialog,
  ABMDialog, QueryPrint, unFraPRS, Buttons, Grids, DBGrids, RXDBCtrl,
  Login, unArtFrame, unFraCodigoDescripcion, unfraCtbTablas, DateUtil,
  unFrmObras, unDenIncumplimiento, FormPanel, PatternEdit, DateTimeFuncs,
  unArtDBAwareFrame, unArtDbFrame, VCLExtra, OptionGroup, unConstFet,
  ShortCutControl, SortDlg, CUIT, DateTimeEditors, RXCtrls, CheckLst,
  DBCtrls, unfraCodigoDescripcionExt, RxRichEd, JvExControls,
  JvComponent, JvEnterTab, unContratoEstablecimiento, JvExComCtrls,
  JvComCtrls, ARTCheckListBox, unConsultaDictamenesAcusatorios, JvgGroupBox,
  unHistoricoPlanMejoras, unComunesFet,unRptAnexo2,unMoldeEnvioMail,
  OleServer, Variants, ArchFuncs, unPal, unRptPal, unUltimoRegistroDom,
  Excel2000, RxPlacemnt, RxToolEdit;

type
  TModoABM = (maNone, maAlta, maModificacion, maBaja);

  TfrmFet = class(TForm)
    DBLogin: TDBLogin;
    Seguridad: TSeguridad;
    FormPlacement: TFormPlacement;
    sdqDatos: TSDQuery;
    ImageList: TImageList;
    ilToolBar_Color: TImageList;
    ilToolBar_BN: TImageList;
    PrintSetup: TPrinterSetupDialog;
    PrintDialog: TPrintDialog;
    sdqEmpleadoresContratantes: TSDQuery;
    dsEmpresasContratantes: TDataSource;
    sdEmpleadoresContratantes: TSortDialog;
    edEmpleadoresContratantes: TExportDialog;
    sccEmpleadoresContratantes: TShortCutControl;
    qpEmpleadoresContratantes: TQueryPrint;
    sdqVisitas: TSDQuery;
    sdqMotivos: TSDQuery;
    dsVisitas: TDataSource;
    dsMotivos: TDataSource;
    sdqTiposMotivos: TSDQuery;
    sdqMotivosAsociados: TSDQuery;
    panComandosFET: TPanel;
    btnEliminar: TButton;
    btnGuardar: TButton;
    btnLimpiar: TButton;
    PageControl: TPageControl;
    tsAnexo1: TTabSheet;
    pnlGrupoBasico: TPanel;
    Label1: TLabel;
    edGBasCantTrab: TIntEdit;
    ScrollBox: TScrollBox;
    pnl1: TPanel;
    lbItem1: TLabel;
    edItem1: TIntEdit;
    pnl100: TPanel;
    lbItem4: TLabel;
    lbItem5: TLabel;
    nbItem4: TNotebook;
    edItem4: TIntEdit;
    rbGroupItem4: TRadioGroup;
    edItem5: TIntEdit;
    pnl7: TPanel;
    lblItem7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edHorasHombre: TIntEdit;
    edCantidadDiasNoTrabajados: TIntEdit;
    edCantidadtrabajadorasMujeres: TIntEdit;
    edCantidadtrabajadoresHombres: TIntEdit;
    pnlFicticio: TPanel;
    Label17: TLabel;
    tbarFicticio: TToolBar;
    btnFicticio: TToolButton;
    tsAnexo2: TTabSheet;
    tsAnexos: TPageControl;
    tsAnexoA: TTabSheet;
    lvAnexo2_A: TListView;
    tsAnexoB: TTabSheet;
    lvAnexo2_B: TListView;
    tsAnexoC: TTabSheet;
    lvAnexo2_C: TListView;
    btnAnexo2Copiar: TButton;
    fpCopiarEstableci: TFormPanel;
    BevelAbm: TBevel;
    btnCopEstAceptar: TButton;
    btnCopEstCancelar: TButton;
    tsPRS: TTabSheet;
    tsVisitas: TTabSheet;
    pnlHeaderVisitas: TPanel;
    chkTodosOps: TCheckBox;
    tbarVisitas: TToolBar;
    btnRefrescarVisitas: TToolButton;
    ToolButton3: TToolButton;
    btnNuevaVisita: TToolButton;
    btnModifVisita: TToolButton;
    btnDeleteVisita: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    dbgMotivos: TRxDBGrid;
    RxDBGrid1: TRxDBGrid;
    fpVisita: TFormPanel;
    Bevel4: TBevel;
    btnAceptarVisita: TButton;
    btnCancelar: TButton;
    tbVisitaAsoc: TToolBar;
    btnAsociarVisita: TToolButton;
    ToolButton5: TToolButton;
    btnLimpiarVisita: TToolButton;
    pnlDatos: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    fraPreventorVisita: TfraCodigoDescripcionExt;
    edObservacion : TMemo;
    edFechaVisita: TDateEdit;
    panObservaciones: TPanel;
    Label10: TLabel;
    redObservaciones: TRichEdit;
    tbEmpleadores: TTabSheet;
    dbgEmpresasContratantes: TRxDBGrid;
    fpEmpresasContratantes: TFormPanel;
    lbNombre: TLabel;
    Bevel3: TBevel;
    Label7: TLabel;
    btnDetDenAceptar: TButton;
    btnDetDenCancelar: TButton;
    mskCUITContrante: TMaskEdit;
    edNombreContratante: TEdit;
    tBarDiagEstableci: TToolBar;
    tbDiagRefrescar: TToolButton;
    ToolButton2: TToolButton;
    tbAgregarEmp: TToolButton;
    tbModificarEmp: TToolButton;
    tbEmpQuitar: TToolButton;
    ToolButton4: TToolButton;
    tbDiagOrdenar: TToolButton;
    ToolButton6: TToolButton;
    tbDiagExportar: TToolButton;
    tbDiagImprimir: TToolButton;
    tsPlanMej: TTabSheet;
    tsDenIncumplimiento: TTabSheet;
    btnExportado: TButton;
    lblModoConsulta: TLabel;
    sccVisitas: TShortCutControl;
    ToolBar1: TToolBar;
    btnBuscar: TToolButton;
    tbEstablecimientos: TToolButton;
    tsObras: TTabSheet;
    tbAfiliaciones: TToolButton;
    fraEstabCopia: TfraEstablecimientoDomic;
    tbCargaDiferida: TToolButton;
    fpNoExportar: TFormPanel;
    Bevel5: TBevel;
    Button1: TButton;
    Button2: TButton;
    clbNoExportar: TARTCheckListBox;
    JvgGroupBox1: TJvgGroupBox;
    pnlBusqueda: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnInfoEstableci: TSpeedButton;
    Label13: TLabel;
    Label6: TLabel;
    lblCUIT: TLabel;
    lbCPostalA: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    fraEstableciBusq: TfraEstablecimientoDomic;
    fraEmpresa: TfraEmpresa;
    fraTipoFet: TfraCtbTablas;
    fraOperativo: TfraCodigoDescripcion;
    edCPA: TEdit;
    edCiuu: TEdit;
    edPreventor: TEdit;
    qryDenuncias: TSDQuery;
    qryObsDenuncias: TSDQuery;
    edSubtipo: TEdit;
    Label18: TLabel;
    edObservacionInterna: TMemo;
    redObservacionesInterna: TRichEdit;
    tsCapacitacion: TTabSheet;
    tsRiesgos: TTabSheet;
    lbFechaNotificacion: TLabel;
    edFechaNotificacion: TDateEdit;
    pnl4: TPanel;
    edFechaRecepcion: TDateEdit;
    lbFecharecepcion: TLabel;
    tsEventos: TTabSheet;
    tbSeparator: TToolButton;
    rgOrigen: TRadioGroup;
    tbHistoricoPlanMejoras: TToolButton;
    Label14: TLabel;
    edFechaViaticos: TDateEdit;
    ToolBar2: TToolBar;
    btnFechaViaticos: TToolButton;
    tbConstanciaVisitas: TToolButton;
    tbConstanciaVistasVacia: TToolButton;
    lbTipoEmpresa: TLabel;
    ToolBar3: TToolBar;
    tbAnexo2Vacio: TToolButton;
    tbAnexo2: TToolButton;
    FormStorage: TFormStorage;
    ToolButton1: TToolButton;
    tbCambioTipoOperativo: TToolButton;
    btCambioVisita: TButton;
    lbArchivoOrigen: TLabel;
    edOrigen: TFilenameEdit;
    ExcelApplication: TExcelApplication;
    tbSumario: TButton;
    tbLimpiar: TToolButton;
    lbFechaViaticos: TLabel;
    edFechaInicioViaticos: TDateEdit;
    lbFechaViaticosHasta: TLabel;
    edFechaFinViaticos: TDateEdit;
    cbAnclarViaticos: TCheckBox;
    cbVerificarPreventor: TCheckBox;
    fpConstancias: TFormPanel;
    Bevel6: TBevel;
    Label19: TLabel;
    chkMedidas: TCheckBox;
    chkPRSPAPE: TCheckBox;
    btnAceptarConstancia: TButton;
    btnCancelaConstancia: TButton;
    dedFechaVisita: TDateEdit;
    tsPAL: TTabSheet;
    chkPal: TCheckBox;
    pnl5: TPanel;
    lbFechaDeNotificacion: TLabel;
    edFechaNotificacionAnexo: TDateEdit;
    edFechaInicioActividad: TDateEdit;
    lbFechaInicioActividad: TLabel;
    lbFechaRecepcionAnexo2: TLabel;
    edFechaRecepcionAnexo2: TDateEdit;
    pnFechaRecepcionAnexo2: TPanel;
    tbUltmimoRegDom: TToolButton;
    tbImpresionPreventor: TToolButton;
    tbAnexoItemsNo: TToolButton;
    fpItemsNo: TFormPanel;
    btnAceptarProcedencia: TButton;
    btnCancelarProcedencia: TButton;
    rgProcedencia: TRadioGroup;
    Bevel7: TBevel;
    tbImpresionVerosimilitud: TToolButton;
    tbCargaRelevPreventor: TToolButton;
    tbRelevRiesgo463: TToolButton;
    pnl2: TPanel;
    lbItem2: TLabel;
    chkItem2: TCheckBox;
    lbMeses: TLabel;
    edItem2: TIntEdit;
    lblTotalTrabajadores: TLabel;
    edItem4_1: TIntEdit;
    lblItem4_1: TLabel;
    edItem4_2: TIntEdit;
    lblItem4_2: TLabel;
    pnl6: TPanel;
    lbItem6: TLabel;
    edItem6: TIntEdit;
    pnl6_1: TPanel;
    lbItem6_1: TLabel;
    edItem6_1: TIntEdit;
    pnl6_1_1: TPanel;
    lbItem6_1_1: TLabel;
    lbItem6_1_1_A: TLabel;
    edItem6_1_A: TIntEdit;
    edItem6_1_B: TIntEdit;
    lbItem6_1_1_B: TLabel;
    pnl6_2: TPanel;
    lbItem6_2: TLabel;
    edItem6_2: TIntEdit;
    pnl6_2_1: TPanel;
    lbItem6_2_1: TLabel;
    lbItem6_2_1_A: TLabel;
    edItem6_2_A: TIntEdit;
    edItem6_2_B: TIntEdit;
    lbItem6_2_1_B: TLabel;
    pnl6_1_2: TPanel;
    lbl6_1_2: TLabel;
    editem6_1_2_A: TIntEdit;
    lbl6_1_2_A: TLabel;
    lblEmail: TLabel;
    edEMail: TEdit;
    edTelefono: TEdit;
    lblTelefono: TLabel;
    pnl8: TPanel;
    gbAmeriraPRS: TGroupBox;
    chkNoAmeritaPRS: TCheckBox;
    chkAmeritaPRS: TCheckBox;
    gbAmeritaPAL: TGroupBox;
    chkNoAmeritaPAL: TCheckBox;
    chkAmeritaPAL: TCheckBox;
    fpAsociarVisita: TFormPanel;
    Bevel8: TBevel;
    lblestablecimientos: TLabel;
    btnAceptarCambioPreventor: TButton;
    btnCancelarCambioPreventor: TButton;
    clbestablecimientos: TARTCheckListBox;
    Button3: TButton;
    chkVerTodas: TCheckBox;
    Label20: TLabel;
    cbCopiarMotivosVisita: TButton;
    cbMotivosAsociarVisita: TARTCheckListBox;
    cbMotivos: TARTCheckListBox;
    tbImportacionNomina: TToolButton;
    chkTraspaso: TCheckBox;
    pnNivelFirmaAnexo2: TPanel;
    Label21: TLabel;
    chkNivelFirmas: TCheckListBox;
    cbSinFirmasAnexo2: TCheckBox;
    cbAuditado: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure DBLoginLogin(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure SeguridadDisableComponent(Component: TComponent; var Cancel: Boolean);
    procedure chkItem2Click(Sender: TObject);
    procedure lvAnexo2CustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvAnexo2Click(Sender: TObject);
    procedure lvAnexo2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControlChange(Sender: TObject);
    procedure btnInfoEstableciClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnCopEstAceptarClick(Sender: TObject);
    procedure fpCopiarEstableciBeforeShow(Sender: TObject);
    procedure btnAnexo2CopiarClick(Sender: TObject);
    procedure tsAnexosChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Guardar;
    procedure rbGroupItem4Enter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tbAgregarEmpClick(Sender: TObject);
    procedure btnDetDenAceptarClick(Sender: TObject);
    procedure tbEmpQuitarClick(Sender: TObject);
    procedure dbgEmpresasContratantesGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure tbModificarEmpClick(Sender: TObject);
    procedure btnRefrescarVisitasClick(Sender: TObject);
    procedure CargarMotivos (Bajas: Boolean);
    procedure btnNuevaVisitaClick(Sender: TObject);
    procedure btnModifVisitaClick(Sender: TObject);
    procedure btnDeleteVisitaClick(Sender: TObject);
    function HayChequeados: Boolean;
    procedure btnAceptarVisitaClick(Sender: TObject);
    procedure btnAsociarVisitaClick(Sender: TObject);
    procedure btnLimpiarVisitaClick(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dbgMotivosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure sdqVisitasAfterScroll(DataSet: TDataSet);
    procedure fraEstableciBusqedCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure btnFicticioClick(Sender: TObject);
    procedure fraPreventorVisitacmbDescripcionDropDown(Sender: TObject);
    procedure btnExportadoClick(Sender: TObject);
    procedure tbEstablecimientosClick(Sender: TObject);
    procedure tbAfiliacionesClick(Sender: TObject);
    procedure tbCargaDiferidaClick(Sender: TObject);
    procedure fpNoExportarShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure fraEstableciBusqcmbDescripcionDropDown(Sender: TObject);
    procedure cbMotivosClickCheck(Sender: TObject);
    procedure tbSumarioClick(Sender: TObject);
    procedure tbHistoricoPlanMejorasClick(Sender: TObject);
    procedure btnFechaViaticosClick(Sender: TObject);
    procedure tbConstanciaVisitasClick(Sender: TObject);
    procedure btnAceptarConstanciaClick(Sender: TObject);
    procedure fpVisitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbConstanciaVistasVaciaClick(Sender: TObject);
    procedure tbAnexo2VacioClick(Sender: TObject);
    procedure tbAnexo2Click(Sender: TObject);
    procedure btCambioVisitaClick(Sender: TObject);
    procedure tbLimpiarClick(Sender: TObject);
    procedure tbUltmimoRegDomClick(Sender: TObject);
    procedure tbImpresionPreventorClick(Sender: TObject);
    procedure tbAnexoItemsNoClick(Sender: TObject);
    procedure btnAceptarProcedenciaClick(Sender: TObject);
    procedure tbImpresionVerosimilitudClick(Sender: TObject);
    procedure tbCargaRelevPreventorClick(Sender: TObject);
    procedure tbRelevRiesgo463Click(Sender: TObject);
    procedure edTelefonoChange(Sender: TObject);
    procedure edEMailChange(Sender: TObject);
    procedure chkAmeritaPRSClick(Sender: TObject);
    procedure chkNoAmeritaPRSClick(Sender: TObject);
    procedure chkAmeritaPALClick(Sender: TObject);
    procedure chkNoAmeritaPALClick(Sender: TObject);
    procedure btnAceptarCambioPreventorClick(Sender: TObject);
    procedure btnCancelarCambioPreventorClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edFechaVisitaChange(Sender: TObject);
    procedure chkVerTodasClick(Sender: TObject);
    procedure cbCopiarMotivosVisitaClick(Sender: TObject);
    procedure tbImportacionNominaClick(Sender: TObject);
    procedure chkTraspasoClick(Sender: TObject);
    procedure cbSinFirmasAnexo2Click(Sender: TObject);
    procedure chkNivelFirmasClickCheck(Sender: TObject);
  private
    FfrmUltimoRegistroDom: TfrmUltimoRegistroDom;
    FHabilitarCargaDiferida: Boolean;
    FFechaInicioViaticos : TDate;
    FFechaFinViaticos : TDate;
    FPreventorVisita : Integer;
    FModoVisita: TModoABM;
    FFrmPRS   : TFrmPRS;
    FFrmPAL   : TfrmPAL;
    FAnexoCopia : Boolean;
    frmPlanMej: TfrmPlanMejoras;
    FIdVisita : Integer;
    frmDenInc : TfrmDenIncumplimiento;
    frmObras: TfrmObras;
    frmCapacitacion : TfrmCapacitacion;
    frmRiesgos : TfrmRiesgos;
    frmEventos : TfrmEventos;
    Anexo2Enabled : Boolean;
    iAnexo2       : -1..2;
    LCID_1: LCID;
    FIdVisitaAsociada : Integer;
    FOnShortCutForm: TShortCutEvent;
    FFEntregaViaticos : TDateTime;
    procedure ExcavacionDemolicionMail;
    function ValidaAnexoFicticio : Boolean;
    function ImportarPRS(IdVisita : Integer) : Boolean;
    procedure GuardarVisita(NroEstablecimiento : Integer; ModoVis : TModoABM; visitaAsociada : boolean);
//    procedure OnEstableciChange(Sender: TObject);
    procedure OnOperativoChange(Sender: TObject);
    procedure OnPreventorChange(Sender: TObject);
    function Validar : Boolean;
    function ValidaDenuncias : Boolean;
    function ValidarVisita : Boolean;
    procedure LoadData;
    function Anexo1_Modified : Boolean;
    procedure Anexo1_ClearModified;
    procedure Load_Anexo1;
    procedure Save_Anexo1;
    function Anexo2_Allow : Boolean;
    function Anexo2_IsEmpty : Boolean;
    procedure Load_Anexo2;
    procedure Save_Anexo2;
    procedure Load_EmpresasContratantes;
    procedure ChangeItemValue(AListView : TListView; AItem : TListItem);
    function GetListView(AAnexo : String) : TListView;
    function GetListViewActive : TListView;
    function GetTipoFet : String;
    function PreguntaGuardar: boolean;
    function TieneAvisodeObra: boolean;
    function ValidarCantidadTrabajadores : Boolean;
    function VerificarRecomendacionesVencidas: boolean;
    procedure RegistrarMotivos(aidvisita: integer;VisitaAsociada : Boolean = False);
    function obtenerString(const S: String; Separator: Char; var StartPos,
      Anterior: Integer): String;
    procedure SubString(const S: String; Separator: Char; Sl: TStringList);
    procedure GuardarEnPal(aAnexo, aItem, aCumplimiento: String);
    procedure CargaFechasAnexo1;
    procedure CargaFechasAnexo2;
    procedure ActualizarPRSPAL;
    procedure MuestraUltimosDom(const flgMostrar: boolean);
    procedure SaveArchivoVisita;
    procedure GuardarNivelFirma;

//    procedure ActualizarVisita;
  public
//    procedure ActualizarTipoEmpresa;
    FIDAvisoObraWeb : Integer;
    FGuardadoAOWeb : Boolean;
    procedure SetPageDomicilio319;
    procedure SetIs319;
    procedure OnEmpresaChange(Sender: TObject);
    procedure OnTipoFetChange(Sender: TObject);
    procedure OnfraEstableciBusqChange(Sender: TObject);
    function GetActividadEstablecimiento(aCuit: string; aEstablecimiento: string): string;
    function Anexo1_IsEmpty : Boolean;
  end;

var
  frmFet: TfrmFet;
  IMG_CATEGORIA: integer;
  IMG_READONLY: integer;

implementation

uses
  unDmPrincipal, CustomDlgs, StrFuncs, AnsiSql, SqlFuncs, ValFuncs, Consts, unSesion,
  unPrincipal, unConsVisitasRealizadas, unTipoEstablecimientoPreventor,
  unRptConstanciaVisitas, unAlarmas, QuickRpt, unComunes, unArt, unRptRes463Preventor,
  unExportPDF, unVisorPDF, unRptVisitasNo, unCargaRelevamientoPreventor463,
  unRelevamientoRiesgosLaborales, Internet, Math, unConstantArchivo, unImportacionNominas,
  unRptNotaDenunciaRiegoInvalido, unFrmCargaDocumentacion, unComunesArchivo, unUtilsArchivo, unArchivo;

const
  TAB_ANEXO1     = 0;
  TAB_ANEXO2     = 1;
  TAB_PRS        = 2;
  TAB_VISITAS    = 4;
  TAB_EMPL_CONTRA= 5;
  TAB_PLAN_MEJ   = 6;
  TAB_DENINC     = 7;

{$R *.DFM}
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.FormCreate(Sender: TObject);
var
  sSQL : String;
begin
  Alarma.Desactivar;
  FIDAvisoObraWeb := 0;
  FGuardadoAOWeb := False;
  LCID_1 := LOCALE_USER_DEFAULT;
  PageControl.ActivePageIndex := 0;
  pnlFicticio.Visible := False;
  FHabilitarCargaDiferida := false;
  tbCargaDiferida.Visible := false;
  FFechaInicioViaticos := 0;
  FFechaFinViaticos := 0;
  FPreventorVisita := 0;
  Caption := Application.Title + ' - ' + DBLogin.Usuario;

  btnGuardar.Enabled := false;
  tbConstanciaVisitas.Enabled := false;
  btnExportado.Enabled := btnGuardar.Enabled;

  //Setea los Formatos de la Configuraci�n Regional para la Aplicaci�n
  Application.UpdateFormatSettings := False;
  CurrencyString    := '$';
  DecimalSeparator  := ',';
  ThousandSeparator := '.';
  DateSeparator     := '/';
  TimeSeparator     := ':';
  ShortTimeFormat   := 'H:mm:ss';
  LongTimeFormat    := 'H:mm:ss';
  ShortDateFormat   := 'dd/mm/yyyy';

  fraEmpresa.OnChange       := OnEmpresaChange;
  fraEmpresa.ShowBajas      := True;

  fraEmpresa.ExtraCondition := '     AND co_contrato = '+
                               ' (SELECT MAX (b.co_contrato) '+
                               '    FROM aco_contrato b '+
                               '   WHERE b.co_idempresa = em_id '+
                               '     AND NOT EXISTS (SELECT 1 '+
                               '    FROM art.abc_bajadecontrato '+
                               '   WHERE b.co_contrato = bc_contrato)) ';

  //     fraEstableciBusq.OnChange  := OnEstableciChange;
  fraEstableciBusq.ShowBajas := True;

  FFrmPRS := TFrmPRS.Create( Self );
  FFrmPRS.Parent     := tsPRS;
  FFrmPRS.Visible    := True;
  FFrmPRS.Align      := alClient;

  FFrmPAL := TfrmPAL.Create( Self );
  FFrmPAL.Parent     := tsPAL;
  FFrmPAL.Visible    := True;
  FFrmPAL.Align      := alClient;

  frmObras := TfrmObras.Create( Self );
  frmObras.FormPlacement.Active := False;
  frmObras.Visible   := False;

  frmDenInc := TfrmDenIncumplimiento.Create( Self );
  frmDenInc.Parent    := tsDenIncumplimiento;
  frmDenInc.Visible   := True;
  frmDenInc.Align     := alClient;

  frmCapacitacion := TfrmCapacitacion.Create( Self );
  frmCapacitacion.Parent    := tsCapacitacion;
  frmCapacitacion.Visible   := True;
  frmCapacitacion.Align     := alClient;

  frmRiesgos := TfrmRiesgos.Create( Self );
  frmRiesgos.Parent    := tsRiesgos;
  frmRiesgos.Visible   := True;
  frmRiesgos.Align     := alClient;

  frmEventos := TfrmEventos.Create( Self );
  frmEventos.Parent     := tsEventos;
  frmEventos.Visible    := True;
  frmEventos.Align      := alClient;

  frmPlanMej := TfrmPlanMejoras.Create( Self );
  frmPlanMej.Parent     := tsPlanMej;
  frmPlanMej.Visible    := True;
  frmPlanMej.Align      := alClient;

  fraTipoFet.Clave       := 'TFET';
  fraTipoFet.OnChange    := OnTipoFetChange;

  iAnexo2 := -1;

  pnl1.Visible := false;
  pnl7.Visible := false;
  nbItem4.ActivePage := 'Anexo 1';
  edItem1.Clear;

  With fraOperativo do begin
    TableName    := 'POP_OPERATIVO';
    FieldID      := 'OP_CODIGO';
    FieldCodigo  := 'OP_CODIGO';
    FieldDesc    := 'OP_DESCRIPCION';
    FieldBaja    := 'OP_FECHABAJA';
    OnChange     := OnOperativoChange;
    SelectLast;
  end;

  sSQL :=
    ' SELECT oa_descripcion, oa_id '+
    '   FROM hys.hoa_origenanexo '+
    '  WHERE oa_fechabaja IS NULL ';


  with GetQuery(sSQL) do
  try
    while not Eof do
    begin
      rgOrigen.Items.add(Fields[0].AsString);
      Next;
    end;
  finally
    Free;
  end;

  with fraPreventorVisita do
  begin
    TableName := 'ART.PIT_FIRMANTES';
    FieldDesc := 'UPPER(IT_NOMBRE)';
    FieldID := 'IT_ID';
    FieldCodigo := 'IT_CODIGO';
    FieldBaja := 'IT_FECHABAJA';
    CaseSensitive := false;
    OnChange     := OnPreventorChange;
  end;

  chkNivelFirmas.Clear;
  with GetQuery(' SELECT * ' +
                  ' FROM HYS.HFF_TIPOFIRMA ' +
                  ' WHERE FF_FECHABAJA IS NULL AND FF_TIPO LIKE ''%ANX4%'' ') do
  try
    while not Eof do
    begin
      chkNivelFirmas.AddItem(FieldByName('FF_DESCRIPCION').AsString, TObject(FieldByName('FF_ID').AsInteger));
      Next;
    end;
  finally
    free;
  end;

  vclextra.LockControls([edFechaViaticos,edFechaRecepcionAnexo2], True);
  vclextra.LockControls([edFechaNotificacionAnexo,edFechaInicioActividad, edTelefono],True);

  fraEstableciBusq.OnChange := OnfraEstableciBusqChange;
  edFechaNotificacion.Visible := False;
  chkTraspaso.Visible := false;
  lbFechaNotificacion.Visible := False;
  PageControl.Enabled := false;
  tbEmpleadores.TabVisible := false;
  tsObras.TabVisible := False;
  lblModoConsulta.Visible := false;

  FOnShortCutForm := OnShortCut;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(Sender) and
     fraEmpresa.edContrato.ReadOnly and
     btnGuardar.Enabled and
     (not PreguntaGuardar) then
  Exit;

  frmPrincipal.MnuFet.Enabled := true;
  FFrmPRS.Free;
  frmPlanMej.Free;
  frmObras.Free;
  frmDenInc.Free;
  frmCapacitacion.Free;
  frmRiesgos.Free;
  frmEventos.Free;
  ModalResult := mrOk;
  Alarma.Activar;
//   Action := caFree;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.DBLoginLogin(Sender: TObject);
begin
     Seguridad.Ejecutar ;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.OnEmpresaChange(Sender: TObject);
begin
  fraEstableciBusq.CUIT := fraEmpresa.mskCUIT.Text ;
  FfrmPRS.CUIT          := fraEmpresa.mskCUIT.Text ;
  FfrmPRS.RazonSocial   := fraEmpresa.cmbRSocial.Text;
  FfrmPRS.Contrato      := fraEmpresa.edContrato.Text ;

  lbTipoEmpresa.Caption := 'Tipo de Empresa = '+ValorSql(
          ' SELECT art.hys.get_tipo_empresa( '+
            SqlValue(fraEmpresa.CUIT)+',0,sysdate) FROM dual ');

  if (fraEstableciBusq.edCodigo.Text = '') Then
    btnLimpiarClick( Nil );

  {sumario := ValorSql (
      ' SELECT COUNT(*) '+
      '   FROM sex_expedientes expe, legales.lss_siniestrosumario lss '+
      '  WHERE ex_siniestro = lss.ss_siniestro '+
      '    AND expe.ex_orden = lss.ss_orden '+
      '    AND expe.ex_recaida = lss.ss_recaida '+
      '    AND lss.ss_fechabaja IS NULL '+
      '    AND expe.ex_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text));

  lblSumario.Enabled := sumario >0;
  lblSumario.Caption := 'Sumarios ('+ IntToStr(sumario) + ')';}
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.OnfraEstableciBusqChange(Sender: TObject);
var
  historico : Integer;
  operativovigente : string;
begin
  if fraEstableciBusq.IsSelected then
  begin
    edCPA.Text := fraEstableciBusq.CPostalA;
    edCiuu.Text := ValorSql('select substr(art.hys.get_codactividadrevdos(ac_id, ac_revision),1,6) from comunes.cac_actividad where ac_codigo = ' + SqlValue(fraEstableciBusq.Actividad));
    fraTipoFet.Value := ValorSql('select hys.get_tipo_estab_srt(' + SqlValue(fraEmpresa.CUIT) + ',' +
                                                                    SqlValue(fraEstableciBusq.edCodigo.text) + ') from dual');

    fraOperativo.Value := ValorSql('select hys.get_operativovigente_empresa(' + SqlValue(fraEmpresa.CUIT) + ') from dual');
    OnOperativoChange(Sender);

    operativovigente := ValorSql('select art.hys.get_operativovigente_empresa('+SqlValue(fraEmpresa.CUIT)+') from dual ');
    if (ValorSql(
          ' SELECT art.hys.get_tipo_empresa( '+
            SqlValue(fraEmpresa.CUIT)+',0,sysdate) FROM dual ') = 'ET') and
        (fraTipoFet.Codigo = 'GB') and
        (ValorSql(' SELECT ep_actividad ' +
                 ' FROM hys.hep_estabporpreventor ' +
                 ' WHERE ep_cuit = ' + SqlValue(fraEmpresa.CUIT) +
                 ' AND ep_estableci = ' + SqlValue(fraEstableciBusq.edCodigo.text)) <> 'C') and
        not ExisteSql('SELECT 1 '+
                      '  FROM art.pan_anexo2 '+
                      ' WHERE an_cuit = '+ SqlValue(fraEmpresa.CUIT)+
                      '   AND an_estableci = '+SqlValue(fraEstableciBusq.edCodigo.text)+
                      '   AND an_tipo = ''ET'' '+
                      '   AND an_operativo = '+SqlValue(operativovigente))  then
    begin
      fraTipoFet.Codigo := 'ET';
      OnTipoFetChange(nil);
      fraOperativo.Codigo := operativovigente;
      OnOperativoChange(nil);

    end;

    edPreventor.Text := ValorSql ('SELECT it_nombre ' +
                                  '  FROM art.pit_firmantes ' +
                                  ' WHERE it_id = (SELECT ep_idfirmante ' +
                                  '               FROM hys.hep_estabporpreventor ' +
                                  '               WHERE ep_cuit = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                                  '               AND ep_estableci = ' + SqlInteger(fraEstableciBusq.edCodigo.Text) +
                                  '                AND (   (ep_fechabaja IS NULL) ' +
                                  '                     OR (    ep_fechabaja IS NOT NULL ' +
                                  '                         AND ep_idestado IN(5, 6))))');

    historico := ValorSql (
      ' SELECT COUNT (*) '+
      '   FROM pms_planes '+
      '  WHERE ms_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
      '    AND ms_estableci = '+ SqlValue(fraEstableciBusq.edCodigo.Text) +
      '    AND ms_fechabaja IS NULL ');

    tbHistoricoPlanMejoras.Enabled := (historico >0) and not (fraEstableciBusq.IsEmpty);
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
(*
procedure TfrmFet.OnEstableciChange(Sender: TObject);
begin
//    if fraTipoFet.IsSelected and fraOperativo.IsSelected Then
//       LoadData;
end;
*)
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.btnGuardarClick(Sender: TObject);
var
  SQL: string;
begin
  CargaFechasAnexo1;
  CargaFechasAnexo2;
  ActualizarPRSPAL;
  if Validar then
  begin
    Guardar;
    if (btnGuardar.Tag > 0) and (pos(Sesion.Perfil, 'JUCAP;AMLUCAP;AUCAPI;COMPUTOS') > 0) then     //**-- SACAR COMPUTOS
    begin
      SQL :=  'SELECT  1 '
            + '  FROM  emi.iur_ultimoregistrodom iuf, '
            + '        afi.aes_establecimiento aes, '
            + '        aco_contrato aco, '
            + '        aem_empresa aem '
            + ' WHERE  (NVL (aes.es_existe_ultimodom, ''.'') <> ''N'' '
            + '     AND aes.es_iur_id IS NULL) '
            + '    AND aco.co_contrato = aes.es_contrato '
            + '    AND aem.em_id = aco.co_idempresa '
            + '    AND iuf.ur_cuit = aem.em_cuit '
            + '    AND aem.em_cuit = :cuit '
            + '    AND aes.es_nroestableci = :nroestab '
            + '    AND aco.co_contrato = :contrato'
            ;
      if ExisteSqlEx(SQL, [fraEmpresa.CUIT, fraEstableciBusq.edCodigo.Text, fraEmpresa.Contrato])
      then
        MuestraUltimosDom(False);
    end;
  end;
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.btnLimpiarClick(Sender: TObject);
begin
      FHabilitarCargaDiferida := false;
      tbCargaDiferida.Visible := false;
      sccVisitas.Enabled := false;
      tbHistoricoPlanMejoras.Enabled := False;
      sccEmpleadoresContratantes.Enabled := False;
      frmPlanMej.sccPlanMejoras.Enabled := False;
      frmDenInc.sccDenuncias.Enabled := False;
      FFrmPRS.sccDiagnostico.Enabled := False;
      FFrmPRS.sccRecomendaciones.Enabled := False;
      FFrmPRS.sccVisitas.Enabled := False;
      tbConstanciaVisitas.Enabled := False;
      tbUltmimoRegDom.Enabled := True;
      tbImpresionPreventor.Enabled := True;
      frmObras.Modificado := False;
      frmObras.PSModificado := False;
      frmObras.SetDomModificado(False);
      edSubtipo.Clear;

     if Assigned(Sender)
        and (fraEmpresa.edContrato.ReadOnly)
        and (btnGuardar.Tag = 0)
        and not PreguntaGuardar then Exit;

     if Assigned(Sender) Then
     begin
        edCPA.Clear;
        edCiuu.Clear;
        if (FIDAvisoObraWeb > 0)  then
          Close;
        if fraEstableciBusq.edCodigo.Text = '' then
        begin
            FraEmpresa.Clear;
            fraEstableciBusq.Limpiar;
            fraEmpresa.cmbRSocial.SetFocus ;
            fraOperativo.SelectLast ;
            edPreventor.Clear;
        end
        else begin
            fraEstableciBusq.Limpiar(false);
            PageControl.Enabled := false;
            fraEstableciBusq.edCodigo.SetFocus;
            edPreventor.Clear;
        end;
     end;

     rbGroupItem4.TabStop := true;

     FFrmPRS.Limpiar;
     frmObras.Clear;
     frmObras.ClearProgSeg;
     frmObras.ClearDomicilio319;
     frmObras.ClearRechazo;
     frmDenInc.Clear;
     frmPlanMej.Clear;

     btnEliminar.Tag     := 0;

     btnEliminar.Enabled := False;

     btnGuardar.Tag := 0;

     chkItem2.Tag     := 1;
     chkItem2.Checked := False;
     edItem2.Text     := '' ;

     rgOrigen.ItemIndex := -1;
     edFechaRecepcion.Clear;
     edFechaNotificacionAnexo.Clear;
     edTelefono.Clear;
     edEMail.Clear;

     edItem1.Text := '';
     edItem4.Text     := '' ;
     edItem4_1.Text     := '' ;
     edItem4_2.Text     := '' ;
     edItem5.Text     := '' ;
     edItem6.Text     := '' ;

     edItem6_1.Text   := '' ;
     edItem6_1_A.Text := '' ;
     edItem6_1_B.Text := '' ;
     editem6_1_2_A.Text := '' ;

     edItem6_2.Text   := '' ;
     edItem6_2_A.Text := '' ;
     edItem6_2_B.Text := '' ;

     chkAmeritaPRS.Checked := False;
     chkNoAmeritaPRS.Checked := False;
     chkAmeritaPAL.Checked := False;
     chkNoAmeritaPAL.Checked := False;

     edGBasCantTrab.Text := '' ;

     edFechaRecepcionAnexo2.Clear; 
     lvAnexo2_A.Items.BeginUpdate ;
     lvAnexo2_A.Items.Clear;
     lvAnexo2_A.Items.EndUpdate ;

     lvAnexo2_B.Items.BeginUpdate ;
     lvAnexo2_B.Items.Clear;
     lvAnexo2_B.Items.EndUpdate ;

     lvAnexo2_C.Items.BeginUpdate ;
     lvAnexo2_C.Items.Clear;
     lvAnexo2_C.Items.EndUpdate ;

     tsAnexo2.Tag := 0;
     iAnexo2      := -1;

     fraTipoFet.ReadOnly               := False;
     fraTipoFet.ForeColor              := clWindow;
     fraTipoFet.edCodigo.TabStop       := True;
     fraTipoFet.cmbDescripcion.TabStop := True;

     rbGroupItem4.ItemIndex := -1;
     rbGroupItem4.Tag := -1;
     edHorasHombre.Clear;
     edCantidadtrabajadorasMujeres.Clear;
     edCantidadDiasNoTrabajados.Clear;
     edCantidadtrabajadoresHombres.Clear;
     redObservaciones.Lines.Clear;
     redObservacionesInterna.Lines.Clear;
     cbSinFirmasAnexo2.Checked := False;

     VCLExtra.LockControls([fraEstableciBusq, fraEmpresa, fraTipoFet, fraOperativo], false);
     btnGuardar.Enabled   := False;
     btnExportado.Enabled := btnGuardar.Enabled;
     lblModoConsulta.Visible := false;
     //tbAfiliaciones.Enabled := not btnGuardar.Enabled;

     sdqVisitas.Close;
     sdqMotivos.Close;

     RollBackUpdates;
     PageControl.ActivePageIndex := 0;

     //Alarma.Activar
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.ValidarCantidadTrabajadores: Boolean;
begin
  Result := ExisteSql(
        ' SELECT DISTINCT 1 '+
        '   FROM pod_obradenuncia '+
        '  WHERE od_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
        '    AND (od_tipo = '+SqlValue(fraTipoFet.Codigo)+
        '         OR '+ SqlValue(fraTipoFet.Codigo) +' IS NULL)'+
        '    AND (od_operativo = '+SqlValue(fraOperativo.Codigo) +' OR '+SqlValue(fraOperativo.Codigo)+' IS NULL)'+
        '    AND od_estableci = '+ SqlValue(fraEstableciBusq.edCodigo.Text) ) or
            ExisteSql(
        ' SELECT DISTINCT 1 '+
        '   FROM art.poe_obradendetalle, ctb_tablas '+
        '  WHERE tb_clave = ''ID_'' || oe_grupo '+
        '    AND tb_codigo = oe_rubro '+
        '    AND oe_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
        '    AND oe_estableci =  '+SqlValue(fraEstableciBusq.edCodigo.Text)+
        '    AND (oe_tipo = '+SqlValue(fraTipoFet.Codigo)+' OR '+SqlValue(fraTipoFet.Codigo)+' IS NULL) '+
        '    AND (oe_operativo = '+ SqlValue(fraOperativo.Codigo) +' OR '+ SqlValue(fraOperativo.Codigo)+' IS NULL)' )

end;


{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.Validar: Boolean;
var
  Sql: TSql;
  qry: TSDQuery;
  ExistDetalle, bExisteNFirmaAnx2: boolean;
  sDetalle, Valor: string;
  sExist: integer;
  iTabs, iItems : Integer;
  i : integer;
  CantItems : integer;
//  CantVisitas : integer;
  CantItemsMarcados : integer;
  itemMarcados : array of Boolean;
begin
  result := false;
  ExistDetalle := true;

  if lblModoConsulta.Visible then
  begin
      PageControl.ActivePageIndex := 0;
      InvalidMsg(PageControl, 'Los datos que desea guardar no pertenecen al operativo vigente.');
      exit;
  end;

  if (fraTipoFet.Value = 'GB') and (ValidarCantidadTrabajadores or edGBasCantTrab.Modified) then
  begin
    if (edGBasCantTrab.Value = 0) then
    begin
      PageControl.ActivePageIndex := 0;
      InvalidMsg(edGBasCantTrab, 'Cantidad de Trabajadores del Establecimiento no puede ser cero.');
      exit;
    end;
  end;

  if fraTipoFet.Value = 'EP' then
  begin
    bExisteNFirmaAnx2 := false;
    if not ExisteSql(
      ' SELECT 1 '+
      '   FROM art.pan_anexo2 '+
      '  WHERE an_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
      '    AND an_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
      '    AND an_tipo = '+SqlValue(fraTipoFet.Value)+
      '    AND an_operativo = '+SqlValue(fraOperativo.Codigo)) and not Anexo2_IsEmpty then
    begin
      for i:=0 to chkNivelFirmas.Count-1 do
      begin
        if chkNivelFirmas.Checked[i] then
        begin
          bExisteNFirmaAnx2 := True;
          break;
        end;
      end;
      Verificar(not bExisteNFirmaAnx2 and not cbSinFirmasAnexo2.Checked, chkNivelFirmas, 'Debe especificar el nivel de firmas.');
      Verificar(bExisteNFirmaAnx2 and cbSinFirmasAnexo2.Checked, cbSinFirmasAnexo2, 'No puede estar marcado sin firma y firma a la vez');
    end;
  end;

  frmDenInc.tbDiagRefrescarClick(nil);

  if ((FFrmPRS.sdqDiagnostico.RecordCount > 0) or (FFrmPRS.sdqRecomendaciones.RecordCount > 0)) and
     (not FHabilitarCargaDiferida) and
     ((fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP')) and Anexo2_IsEmpty  then
  begin
    PageControl.ActivePageIndex := 1;
    if (fraTipoFet.Value = 'ET') then
      InvalidMsg(ScrollBox, 'Se debe completar el Anexo 2.')
    else
      InvalidMsg(ScrollBox, 'Se debe completar el Anexo 4.');
    Exit;
  end;

  if edFechaRecepcion.Date <> 0 then
  begin
    Verificar(edFechaRecepcion.Date < ValorSqlDateTime(
          ' SELECT VO_VIGENCIADESDE '+
          '   FROM hys.hvo_vigenciaoperativo '+
          '  WHERE VO_TIPO = '+sqlvalue(fraTipoFet.Codigo)+
          '    AND VO_OPERATIVO = '+SqlValue(fraOperativo.Codigo)),edFechaRecepcion,'La fecha de recepci�n debe ser mayor que la de notificaci�n de ET/EP');
  end;


  (*if((frmDenInc.sdqDenuncias.RecordCount > 0) or (frmDenInc.sdqDetDenuncias.RecordCount > 0) or
    (FFrmPRS.sdqDiagnostico.RecordCount > 0) or (FFrmPRS.sdqRecomendaciones.RecordCount > 0)) and
    (fraTipoFet.Value = 'CO') and (frmObras.fraResolucionAvisoObra.Codigo <> '1') and
    (frmObras.edObraFechaRecepcion.IsEmpty or frmObras.edObraFechaDeclaracion.IsEmpty or frmObras.edObraSuperficie.IsEmpty) then
  begin
    PageControl.ActivePageIndex := 0;
    InvalidMsg(ScrollBox, 'Se debe completar el Aviso de Obra.');
    Exit;
  end;
  *)
  if (iAnexo2 > -1) and (fraTipoFet.Value = 'ET') and (edFechaRecepcionAnexo2.Date = 0) then
  begin
    InfoHint(edFechaRecepcionAnexo2,'Debe igresar la fecha de recepcion del anexo 2');
    Exit;
  end;
  if (iAnexo2 > -1) and (fraTipoFet.Value = 'EP') and (edFechaRecepcionAnexo2.Date = 0) then
  begin
    InfoHint(edFechaRecepcionAnexo2,'Debe igresar la fecha de recepcion del anexo 4');
    Exit;
  end;
  if  (iAnexo2 > -1) and (Anexo1_IsEmpty or ValidaAnexoFicticio) then
  begin
    InfoHint(tsAnexo2, 'Debe tener Anexo 1 no ficticio para poder cargar el anexo 2.');
    Exit;
  end;


  if (FFrmPRS.sdqDiagnostico.RecordCount > 0) or (FFrmPRS.sdqRecomendaciones.RecordCount > 0) then
  begin
    Valor := ValorSql('SELECT DE_DIAGNOSTICO ' +
                      'FROM art.PDE_DIAGESTABLECI ' +
                      'WHERE NOT EXISTS (SELECT 1 ' +
                      '            FROM art.PDR_DIAGPORREC ' +
                      '            WHERE DR_CUIT = DE_CUIT ' +
                      '            AND DR_ESTABLECI = DE_ESTABLECI ' +
                      '            AND DR_TIPO = DE_TIPO ' +
                      '            AND DR_OPERATIVO = DE_OPERATIVO ' +
                      '            AND DR_FECHABAJA IS NULL ' +
                      '            AND DR_DIAGNOSTICO = DE_DIAGNOSTICO) ' +
                      ' AND DE_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                      ' AND DE_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text) +
                      ' AND DE_TIPO = ' + SqlValue(fraTipoFet.Codigo) +
                      ' AND DE_FECHABAJA IS NULL ' +
                      ' AND DE_OPERATIVO = ' + SqlValue(fraOperativo.Codigo), '0');

    if (Valor <> '0') then
    begin
      PageControl.ActivePageIndex := TAB_PRS;
      InvalidMsg(FFrmPRS, 'El diagn�stico ' + Valor + ' no tiene una recomendaci�n asociada.');

      exit;
    end;

    Valor := ValorSql('SELECT RE_RECOMENDACION ' +
                      'FROM art.PRE_RECOMENDACIONES ' +
                      'WHERE NOT EXISTS (SELECT 1 ' +
                      '            FROM art.PDR_DIAGPORREC ' +
                      '            WHERE DR_CUIT = RE_CUIT ' +
                      '            AND DR_ESTABLECI = RE_ESTABLECI ' +
                      '            AND DR_TIPO = RE_TIPO ' +
                      '            AND DR_OPERATIVO = RE_OPERATIVO ' +
                      '            AND DR_FECHABAJA IS NULL ' +
                      '            AND DR_RECOMENDACION = RE_RECOMENDACION) ' +
                      ' AND RE_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                      ' AND RE_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text) +
                      ' AND RE_TIPO = ' + SqlValue(fraTipoFet.Codigo) +
                      ' AND RE_FECHABAJA IS NULL  ' +
                      ' AND RE_OPERATIVO = ' + SqlValue(fraOperativo.Codigo), '0');

    if (Valor <> '0') then
    begin
      PageControl.ActivePageIndex := TAB_PRS;
      InvalidMsg(FFrmPRS, 'La recomendaci�n ' + Valor + ' no tiene un diagn�stico asociado.');
      exit;
    end;
  end;

  FFrmPAL.ValidarPal;


  if (fraTipoFet.Value = 'GB') or (fraTipoFet.Value = 'CO') or (fraTipoFet.Value = 'ET') then
  begin
    Sql := TSql.Create('POD_OBRADENUNCIA');
    Sql.PrimaryKey.Add('OD_CUIT', fraEmpresa.mskCuit.Text);
    Sql.PrimaryKey.Add('OD_ESTABLECI', fraEstableciBusq.edCodigo.Value);
    Sql.PrimaryKey.Add('OD_TIPO', fraTipoFet.Value);
    Sql.PrimaryKey.Add('OD_OPERATIVO', fraOperativo.Codigo);
    Sql.Fields.Add('OD_FECHA', now);
    Sql.ExtraCondition := ' AND OD_FECHABAJA IS NULL';
    Sql.SelectOptions := [soPrimaryKeyAsWhere, soPrimaryKeyAsField];
    qry := GetQuery(Sql.SelectSql);

    try
      if (qry.RecordCount > 0) then begin
        while not qry.Eof do begin
//          sExist := ValorSql( 'SELECT NVL(TO_CHAR(OE_FECHABAJA), ''EXISTE'') ' +
          sExist := ValorSql( 'SELECT COUNT(*) ' +
                              'FROM POE_OBRADENDETALLE ' +
                              'WHERE OE_CUIT = ''' +  trim(qry.fieldbyname('OD_CUIT').AsString) + '''' +
                              ' AND OE_ESTABLECI = ' + trim(qry.fieldbyname('OD_ESTABLECI').AsString) +
                              ' AND OE_TIPO = ''' + trim(qry.fieldbyname('OD_TIPO').AsString) + '''' +
                              ' AND OE_FECHA = ' + SqlDate(qry.fieldbyname('OD_FECHA').AsDateTime) +
//                              ' AND OE_FECHABAJA IS NULL ' +
                              ' AND OE_OPERATIVO = ''' + trim(qry.fieldbyname('OD_OPERATIVO').AsString)  + '''');
          if (sExist = 0)  then begin
            ExistDetalle := false;
            sDetalle := FormatDateTime('dd/mm/yyyy', qry.fieldbyname('OD_FECHA').AsDateTime);
            break;
          end;

          qry.Next;
        end;
      end;
    finally
      qry.close;
      qry.free;
      Sql.Free;
    end;

    if (not ExistDetalle) then begin
      PageControl.ActivePageIndex := TAB_DENINC;
      InvalidMsg(frmDenInc.dbgDetDenuncias , 'Debe ingresar un detalle para la denuncia de la fecha ' + sDetalle);

      exit;
    end;
  end;

  if ( ValidaDenuncias
       or
      (not Anexo2_IsEmpty)) and
      (not FHabilitarCargaDiferida) and
      ((fraTipoFet.Value = 'ET') and (edItem4.IsEmpty or edItem5.IsEmpty or edItem6.IsEmpty))  then
  begin
    PageControl.ActivePageIndex := 0;
    InvalidMsg(ScrollBox, 'Se debe completar el Anexo 1.');
    Exit;
  end;

  if (ValidaDenuncias or
      (not Anexo2_IsEmpty)) and
      (fraTipoFet.Value = 'EP') and ((frmFet.rbGroupItem4.ItemIndex = -1) or frmFet.edItem5.IsEmpty or frmFet.edItem6.IsEmpty) then
  begin
    PageControl.ActivePageIndex := 0;
    InvalidMsg(ScrollBox, 'Se debe completar el Anexo 3.');
    Exit;
  end;


  if (fraOperativo.Codigo = '') then begin
    InvalidMsg(fraOperativo.cmbDescripcion, 'Debe especificar el Operativo.');
    Exit;
  end;

  if (fraTipoFet.Codigo = 'ET') then
  begin
    {CantVisitas := ValorSqlInteger('SELECT count(*)' +
                                   '  FROM hys.hpv_planvisitas ' +
                                   ' WHERE pv_cuit = ' + SqlValue(fraEmpresa.CUIT) +
                                   '   AND pv_estableci = ' + SqlValue(fraEstableciBusq.Value) +
                                   '   AND pv_tipo = ' + SqlValue(fraTipoFet.Codigo) +
                                   '   AND pv_operativo = ' + SqlValue(fraOperativo.Codigo) +
                                   '   AND pv_fechabaja is null ');
    if (CantVisitas > 0) and (CantVisitas < 4) then
    begin
      PageControl.ActivePageIndex := 2;
      InvalidMsg(tsPRS, 'El m�nimo de visitas por plan es de cuatro (4).');
      Exit;
    end;
    }
    if  (pnl8.visible) and (not chkAmeritaPRS.Checked and
       not chkNoAmeritaPRS.Checked and
       not Anexo2_IsEmpty)              {       ExisteSql(' SELECT 1 '+
                 '   FROM art.pca_cabeceraanexo2 '+
                 '  WHERE ca_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
                 '    AND ca_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
                 '    AND ca_tipo = '+SqlValue(fraTipoFet.Value)+
                 '    AND ca_operativo = '+SqlValue(fraOperativo.Codigo) +
                 '    AND ca_fechabaja is null '))}
    then
    begin
      PageControl.ActivePageIndex := 0;
      InvalidMsg(gbAmeriraPRS, 'Debe marcar una opci�n.');
      Exit;
    end;
  end;

  if not VerificarRecomendacionesVencidas then
    Exit;

  CantItems := 0;
  CantItemsMarcados := 0;
  SetLength(itemMarcados,3);
  for i := 0 To 2 do
  begin
    iTabs := i + Ord('A');
    with GetListView(Chr(iTabs)) do begin
      itemMarcados[i] := False;
      for iItems := 0 To Items.Count - 1 do
      begin
        if ((Items[iItems].ImageIndex <> IMG_CATEGORIA) and (Items[iItems].ImageIndex <> IMG_READONLY)) then
        begin
          if i = iAnexo2 then
            inc(CantItems);
          if (Items[iItems].ImageIndex <> -1) then
          begin
            inc(CantItemsMarcados);
            itemMarcados[i] := True;
          end;
        end;
      end;
    end;
  end;

  if (CantItemsMarcados >= 0) and  (CantItems <> CantItemsMarcados) and (iAnexo2 > -1) then
  begin
    PageControl.ActivePageIndex := 1;
    InvalidMsg(tsAnexos, 'Existen items del Anexo sin marcar.');
    Exit;
  end;

//  comparar los 3 boolean
  if (itemMarcados[0] and (itemMarcados[1] or itemMarcados[2])) or
     (itemMarcados[1] and (itemMarcados[0] or itemMarcados[2])) or
     (itemMarcados[2] and (itemMarcados[0] or itemMarcados[1])) then
  begin
    InvalidMsg(tsAnexos, 'No puede haber mas de un anexo 2.');
    Exit;
  end
  else
  begin
    if itemMarcados[0] then
      iAnexo2 := 0
    else
    if itemMarcados[1] then
      iAnexo2 := 1
    else
    if itemMarcados[2] then
      iAnexo2 := 2;
    tsAnexos.ActivePageIndex := iAnexo2;
  end;


  if (not frmObras.IsEmpty) and (not frmObras.Validar) then Exit;
  if (not frmObras.ValidarProgSeg) then Exit;
  if (not frmObras.ValidarRechazoAO) then Exit;
  if (not frmObras.ValidarRechazoPS) then Exit;

  if Anexo1_Modified then
  begin

    if not ValidaAnexoFicticio THEN
    begin
      if ((fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP')) and  ( rgOrigen.ItemIndex = -1) then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(rgOrigen, 'Se debe completar el origen');
        Exit;
      end;
      if (fraTipoFet.Value = 'ET') and (edFechaRecepcion.Date =0) then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edFechaRecepcion, 'Se debe completar la fecha de recepci�n en Anexo 1.');
        Exit;
      end;
      if (fraTipoFet.Value = 'ET') and (trim(edTelefono.Text) = '') then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edTelefono, 'Se debe completar el tel�fono del establecimiento.');
        Exit;
      end;
      if (fraTipoFet.Value = 'ET') and (ValorSql(
        ' SELECT te_area'+
        '   FROM afi.aes_establecimiento, afi.ate_telefonoestablecimiento '+
        '  WHERE es_id = te_idestablecimiento '+
        '    AND te_fechabaja IS NULL ' +
        '    AND es_nroestableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
        '    AND es_contrato = '+SqlValue(fraEmpresa.Contrato) +
        '  order by te_idtipotelefono') = '') then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edTelefono, 'Se debe completar el Codigo de area del telefono.');
        Exit;
      end;

      if (fraTipoFet.Value = 'ET') and (trim(edEMail.Text) = '') then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edEMail, 'Se debe completar el email del establecimiento.');
        Exit;
      end;
      if (fraTipoFet.Value = 'ET') and (not IsEmail(edEMail.Text) ) then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edEMail, 'El Email del establecimiento es inv�lido.');
        Exit;
      end;
      if (fraTipoFet.Value = 'ET') and (edFechaInicioActividad.Date =0) then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edFechaInicioActividad, 'Se debe completar la fecha de Inicio de Actividad.');
        Exit;
      end;
      if (fraTipoFet.Value = 'EP') and (edFechaRecepcion.Date =0) then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edFechaRecepcion, 'Se debe completar la fecha de recepci�n en Anexo 3.');
        Exit;
      end;
      if (fraTipoFet.Value = 'ET') and (edItem5.Text = '') then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edItem5, 'Debe ingresar un valor.');
        Exit;
      end;
    end;

    if (fraTipoFet.Value = 'ET') and (edFechaNotificacionAnexo.Date =0) then
    begin
      tsAnexos.ActivePage := tsAnexo1;
      InvalidMsg(edFechaNotificacionAnexo, 'Se debe completar la fecha de Notificaci�n.');
      Exit;
    end;

    if (fraTipoFet.Value = 'EP') and (rbGroupItem4.ItemIndex = -1) then
    begin
      tsAnexos.ActivePage := tsAnexo1;
      InvalidMsg(rbGroupItem4, 'Debe indicar si cuenta con el relevamiento.');
      rbGroupItem4.ItemIndex := -1;
      Exit;
    end;

    if ((fraTipoFet.Value = 'ET') and (edItem4.IsEmpty or edItem5.IsEmpty or edItem6.IsEmpty)) then
    begin
      tsAnexos.ActivePage := tsAnexo1;
      InvalidMsg(ScrollBox, 'El Anexo 1 est� incompleto.');
      Exit;
    end;

    if (chkItem2.Checked and (edItem2.Value = 0)) then
    begin
      tsAnexos.ActivePage := tsAnexo1;
      InvalidMsg(edItem2, 'La cantidad de meses no puede ser cero.');
    end
    else begin
      if (edItem4_1.Value + edItem4_2.Value) <> edItem4.Value then
      begin
        tsAnexos.ActivePage := tsAnexo1;
        InvalidMsg(edItem4, 'La suma de trabajadores propios y terceros difiere del total.');
      end
      else
        if (edItem6_1.Value + edItem6_2.Value) <> edItem6.Value Then
        begin
          tsAnexos.ActivePage := tsAnexo1;
          InvalidMsg(edItem6, 'La suma de los items 6.1 y 6.2 es distinta al Item 6.');
        end
        else
          if (pnl6_1_1.Visible) and ((edItem6_1_A.Value + edItem6_1_B.Value + editem6_1_2_A.Value) > edItem6_1.Value) Then
          begin
            tsAnexos.ActivePage := tsAnexo1;
            InvalidMsg(edItem6_1, 'La suma de los siniestros con ausencia y los fallecidos es mayor al total.');
          end
          else
            if (pnl6_2_1.Visible) and ((edItem6_2_A.Value + edItem6_2_B.Value) > edItem6_2.Value) Then
            begin
              tsAnexos.ActivePage := tsAnexo1;
              InvalidMsg(edItem6_2, 'La suma de los siniestros con ausencia y los fallecidos es mayor al total.');
            end
            else
               Result := True;
    end;
  end
  else
    Result := True;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.SeguridadDisableComponent(Component: TComponent; var Cancel: Boolean);
begin
     if Component is TButton Then
        TButton(Component).Visible := False;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.chkItem2Click(Sender: TObject);
begin
     chkItem2.Tag    := 1;
     edItem2.Enabled :=  chkItem2.Checked;
     SelectNext( chkItem2, True, True );
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.Load_Anexo2;
Var Sql,
    sCategoria  : String;
    Consulta    : TSDQuery;
    fechaRecepcion : TDate;
    i : Integer;
begin
    if (fraTipoFet.Codigo = 'EP') then
    begin
      IMG_CATEGORIA := 3;
      IMG_READONLY := 4;
    end
    else begin
      if fraTipoFet.Codigo = 'ET' then
      begin
        IMG_CATEGORIA := 4;
        IMG_READONLY := 5;
      end;
    end;

    Sql := 'SELECT AN_ANEXO, AN_CODIGO, AI_DESCRIPCION, AC_DESCRIPCION, AN_CUMPLIMIENTO, AI_SOLOLECTURA, AI_PAL ' +
             'FROM PAN_ANEXO2, PAI_ANEXO2ITEMS, PAC_CATEGORIAS ' +
            'WHERE AC_CODIGO = AI_CATEGORIA ' +
              'AND AI_ANEXO = AN_ANEXO ' +
              'AND AI_CODIGO = AN_CODIGO ' +
              'AND AN_CUIT = ''' + fraEmpresa.mskCUIT.Text + ''' ' +
              'AND AN_ESTABLECI = ' + fraEstableciBusq.edCodigo.TextSql + ' ' +
              'AND AN_TIPO = ''' + fraTipoFet.Value + ''' ' +
              'AND AN_OPERATIVO = ''' + fraOperativo.Codigo + ''' ' +
            'UNION ALL ' +
           'SELECT AI_ANEXO, AI_CODIGO, AI_DESCRIPCION, AC_DESCRIPCION, NULL, AI_SOLOLECTURA, AI_PAL ' +
             'FROM PAI_ANEXO2ITEMS, PAC_CATEGORIAS ' +
            'WHERE AC_CODIGO = AI_CATEGORIA ' +
              iif(fraTipoFet.Codigo = 'EP', ' AND AI_ANEXO = ''D'' ', ' AND AI_ANEXO <> ''D'' ') +
              'AND AI_VIGENCIADESDE <= ' + SqlValue(fraOperativo.Codigo) +
              'AND (AI_VIGENCIAHASTA > ' + SqlValue(fraOperativo.Codigo) +
              '     OR AI_VIGENCIAHASTA IS NULL) ' +
              'AND NOT EXISTS (SELECT 1 ' +
                                'FROM PAN_ANEXO2 ' +
                               'WHERE AI_ANEXO = AN_ANEXO ' +
                                 'AND AI_CODIGO = AN_CODIGO ' +
                                 'AND AN_CUIT = ''' + fraEmpresa.mskCUIT.Text + ''' ' +
                                 'AND AN_ESTABLECI = ' + fraEstableciBusq.edCodigo.TextSql + ' ' +
                                 'AND AN_TIPO = ''' + fraTipoFet.Value + ''' ' +
                                 'AND AN_OPERATIVO = ''' + fraOperativo.Codigo + ''') ' +
           'ORDER BY 1, 2';

    Consulta := GetQuery( Sql );
    if Assigned(Consulta) and (not Consulta.IsEmpty) Then begin
       lvAnexo2_A.Items.BeginUpdate;
       lvAnexo2_B.Items.BeginUpdate;
       lvAnexo2_C.Items.BeginUpdate;
       for i := 0 to chkNivelFirmas.Items.Count - 1 do
         chkNivelFirmas.Checked[i] := False;
       lvAnexo2_A.Items.Clear;
       lvAnexo2_B.Items.Clear;
       lvAnexo2_C.Items.Clear;
       iAnexo2 := -1;
       Try
          sCategoria := '';
          Consulta.First;
          repeat
             if (sCategoria <> Consulta.FieldByName('AC_DESCRIPCION').AsString) Then
                With GetListView( Consulta.FieldByName('AN_ANEXO').AsString ).Items.Add  do begin
                     sCategoria := Consulta.FieldByName('AC_DESCRIPCION').AsString;
                     Caption    := sCategoria;
                     ImageIndex := IMG_CATEGORIA;
                end;

             With GetListView( Consulta.FieldByName('AN_ANEXO').AsString ).Items.Add  do begin
                  Caption := Consulta.FieldByName('AN_CODIGO').AsString;
                  SubItems.Add( Consulta.FieldByName('AI_DESCRIPCION').AsString );
                  SubItems.Add( Consulta.FieldByName('AN_CUMPLIMIENTO').AsString );
                  SubItems.Add( Consulta.FieldByName('AN_ANEXO').AsString );

                  if Consulta.FieldByName('AI_SOLOLECTURA').AsString = SQL_TRUE Then
                    ImageIndex := IMG_READONLY
                  else
                    ImageIndex := ArrayPos( Consulta.FieldByName('AN_CUMPLIMIENTO').AsString, ['S', 'N', 'X', 'P']);

                  Data := TObject(ArrayPos( Consulta.FieldByName('AI_PAL').AsString, ['N', 'S']));

                  if (iAnexo2 = -1) and (not Consulta.FieldByName('AN_CUMPLIMIENTO').IsNull) and (Consulta.FieldByName('AN_CUMPLIMIENTO').AsString <> 'B') Then
                    iAnexo2 := strtoint(Decode(Consulta.FieldByName('AN_ANEXO').AsString, ['A', 'B', 'C', 'D', 'E', 'F', 'G'], ['0', '1', '2', '0', '0', '1', '2'], '-1'));
             end;
             Consulta.Next;
          until Consulta.Eof;
       Except
          on E: Exception do ErrorMsg(E, 'Error al cargar el Anexo 2');
       end;
       lvAnexo2_A.Items.EndUpdate ;
       lvAnexo2_B.Items.EndUpdate ;
       lvAnexo2_C.Items.EndUpdate ;

       if iAnexo2 > -1 Then
          tsAnexos.ActivePageIndex := iAnexo2;
    end;
    with GetQueryEx('SELECT * ' +
                    '  FROM HYS.HNF_NIVELFIRMA' +
                    ' WHERE NF_USUBAJA IS NULL ' +
                    '   AND NF_CUIT = :cuit ' +
                    '   AND NF_ESTABLECI = :estableci ' +
                    '   AND NF_TIPO = :tipo '+
                    '   AND NF_OPERATIVO = :operativo '+
                    '   AND NF_TIPOFORMULARIO = ''ANX4'' '+
                    ' ORDER BY 1 DESC ',
                      [fraEmpresa.mskCUIT.Text,
                       fraEstableciBusq.edCodigo.Text,
                       fraTipoFet.Value,fraOperativo.Codigo]) do
    try
      while not Eof do
      begin
        for i:=0 to chkNivelFirmas.Count-1 do
          if (integer(chkNivelFirmas.Items.Objects[i]) = FieldByName('NF_IDTIPOFIRMA').AsInteger) then
          begin
            chkNivelFirmas.Checked[i] := true;
            break;
          end;
        Next;
      end;
    finally
      free;
    end;
    cbSinFirmasAnexo2.Checked := ExisteSqlEx('SELECT 1 ' +
                                           '  FROM HYS.HNF_NIVELFIRMA' +
                                           ' WHERE NF_USUBAJA IS NULL ' +
                                           '   AND NF_CUIT = :cuit ' +
                                           '   AND NF_ESTABLECI = :estableci ' +
                                           '   AND NF_TIPO = :tipo '+
                                           '   AND NF_OPERATIVO = :operativo '+
                                           '   AND NF_TIPOFORMULARIO = ''ANX4'' '+
                                           '   AND NF_IDTIPOFIRMA = 5 '+
                                           ' ORDER BY 1 DESC ', [fraEmpresa.mskCUIT.Text,
                                            fraEstableciBusq.edCodigo.Text,
                                            fraTipoFet.Value,fraOperativo.Codigo]);


    fechaRecepcion := ValorSqlDateTime(
      ' SELECT ca_fecharecepcion '+
      '   FROM art.pca_cabeceraanexo2 '+
      '  WHERE ca_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
      '    AND ca_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
      '    AND ca_tipo = '+SqlValue(fraTipoFet.Value)+
      '    AND ca_operativo = '+SqlValue(fraOperativo.Codigo));
    edFechaRecepcionAnexo2.Tag := trunc(fechaRecepcion);
    edFechaRecepcionAnexo2.Date := fechaRecepcion;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.lvAnexo2CustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
Var ARect : TRect;
begin
     if Item.ImageIndex = IMG_CATEGORIA Then begin
       ARect := Item.DisplayRect( drBounds );
       if Item.Selected Then
         Sender.Canvas.Brush.Color := clNavy
       else
         Sender.Canvas.Brush.Color := clBtnShadow;
       Sender.Canvas.Font.Color  := clWhite;
       Sender.Canvas.Font.Style  := [fsBold];
       Sender.Canvas.FillRect( ARect );
       Sender.Canvas.TextRect( ARect, ARect.Left + 2, ARect.Top + 2, Item.Caption );
       DefaultDraw := False;
     end else if Item.ImageIndex = IMG_READONLY Then
       Sender.Canvas.Font.Color  := clGray;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.lvAnexo2Click(Sender: TObject);
//Var FPoint   : TPoint;
//    HitTests : THitTests;
begin
(*
  if Anexo2Enabled and Assigned(Sender) and (Sender is TListView) then
    With Sender as TListView do
      if Assigned(Selected) and (not (Selected.ImageIndex in [IMG_READONLY, IMG_CATEGORIA])) then begin
//      GetCursorPos(FPoint);
//      HitTests := GetHitTestInfoAt( FPoint.x, FPoint.y);
//      if htOnItem in HitTests Then
        ChangeItemValue( Sender as TListView, Selected );
      end;
*)
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.ChangeItemValue(AListView : TListView; AItem: TListItem);
begin
  AItem.ImageIndex := AItem.ImageIndex + 1;
  if AItem.ImageIndex = IMG_CATEGORIA Then
    AItem.ImageIndex := -1;

  tsAnexo2.Tag := 1;

  if (iAnexo2 = -1) Then
   iAnexo2 := AListView.Tag;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.lvAnexo2KeyPress(Sender: TObject; var Key: Char);
begin
  if Assigned(Sender) and (Sender is TListView) then
    With Sender as TListView do
    begin
      if Assigned( Selected ) and (Selected.ImageIndex <> IMG_CATEGORIA)
      and (Selected.ImageIndex <> IMG_READONLY)then
      begin
        if (Key in [#32, #13]) then
          ChangeItemValue( Sender as TListView, Selected )
        else if (key in [#88, #120]) and (0 <=(IMG_CATEGORIA-1)) then
          Selected.ImageIndex := 0
        else if (key in [#86, #118]) and (1 <=(IMG_CATEGORIA-1))  then
          Selected.ImageIndex := 1
        else if (key in [#78, #110]) and (2 <=(IMG_CATEGORIA-1)) then
          Selected.ImageIndex := 2
        else if (key in [#80, #112]) and (3 <=(IMG_CATEGORIA-1)) then
          Selected.ImageIndex := 3;
        if (iAnexo2 = -1) Then
         iAnexo2 := Tag;
      end;
      if not(Key  in [#32,#13]) then
        key := #0;
    end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.Save_Anexo2;
Var iTabs,
    iItems, cantNo, cantPRS, valor, cantPal : Integer;
    itemsNo, itemsPRS, valors : String;
    Sql    : TSql;
    sValue : String;
    idAnexo: String;
    AnexoModif : Boolean;
begin
  AnexoModif := False;
  Sql := TSql.Create( 'PAN_ANEXO2' );
  try
    cantNo := 0;
    cantPRS := 0;
    if iAnexo2 > -1 Then
    begin
      iTabs := iAnexo2 + Ord('A');
      with GetListView(Chr(iTabs)) do
      begin
        for iItems := 0 To Items.Count - 1 do
          if Items[iItems].ImageIndex <> IMG_READONLY then
          begin
            sValue := Copy('SNXP', Items[iItems].ImageIndex + 1, 1);
            valor := Items[iItems].ImageIndex;
            if valor <> IMG_CATEGORIA then
            begin
              valors := Items[iItems].SubItems[1];
              idAnexo := Items[iItems].SubItems[2];
            end;

            if (valor <> IMG_CATEGORIA) and (valor <> -1) and ((valors <> sValue) or FAnexoCopia) then
            begin
              if sValue = 'N' then
              begin
                if cantNo <> 0 then
                  itemsNo := itemsNo+#13#10+Items[iItems].Caption
                else
                  itemsNo := #13#10+ Items[iItems].Caption;

                cantNo := cantNo + 1;
              end else
              if sValue = 'P' then
              begin
                if cantPRS <> 0 then
                  itemsPRS := itemsPRS+#13#10+Items[iItems].Caption
                else
                  itemsPRS := #13#10+ Items[iItems].Caption;

                cantPRS := cantPRS + 1;
              end;

              Sql.Clear;
              Sql.PrimaryKey.Add( 'AN_CUIT', fraEmpresa.mskCUIT.Text );
              Sql.PrimaryKey.Add( 'AN_ESTABLECI', fraEstableciBusq.edCodigo.Value );
              Sql.PrimaryKey.Add( 'AN_TIPO', fraTipoFet.Value );
              Sql.PrimaryKey.Add( 'AN_OPERATIVO', fraOperativo.Codigo );
              Sql.PrimaryKey.Add( 'AN_ANEXO', Items[iItems].SubItems[2]);//IdAnexo
              Sql.PrimaryKey.Add( 'AN_CODIGO', Items[iItems].Caption );
              Sql.Fields.Add( 'AN_CUMPLIMIENTO', sValue );
              if Items[iItems].SubItems[1] = '' then
              begin
                Sql.Fields.Add( 'AN_USUALTA', frmPrincipal.DBLogin.UserID );
                Sql.Fields.Add( 'AN_FECHAALATA', exDateTime );
                Sql.SqlType := stInsert;
              end else
              begin
                Sql.Fields.Add( 'AN_USUMODIF', frmPrincipal.DBLogin.UserID );
                Sql.Fields.Add( 'AN_FECHAMODIF', exDateTime );
                Sql.SqlType := stUpdate;
              end;

              if Items[iItems].ImageIndex <> -1 then
              begin
                EjecutarSqlST(Sql.Sql);
                Items[iItems].SubItems[1] := sValue;
              end;

              GuardarNivelFirma;

              if not((ValorSql('SELECT art.hys.get_tipo_empresa('+SqlValue(fraEmpresa.CUIT)+',NULL) FROM dual')= 'ET')
                 and (ValorSql('SELECT art.hys.get_tipo_estab_srt('+SqlValue(fraEmpresa.CUIT)+','+SqlValue(fraEstableciBusq.edCodigo.Text)+') FROM DUAL') = 'GB'))
              and (integer(Items[iItems].Data) > 0) then
                GuardarEnPal(Items[iItems].SubItems[2], Items[iItems].Caption, sValue);


              cantPal := ValorSqlIntegerEx(' SELECT count(*) ' +
                                           ' FROM hys.hpa_pal ' +
                                           ' WHERE pa_cuit = :cuit ' +
                                           '   AND pa_estableci = :estab ' +
                                           '   AND pa_tipo = :tipo ' +
                                           '   AND pa_operativo = :oper '+
                                           '   AND pa_fechabaja is null ', [fraEmpresa.CUIT,
                                                                            fraEstableciBusq.edCodigo.Value,
                                                                            fraTipoFet.Codigo,
                                                                            fraOperativo.Codigo]);
              if (cantPal > 0) and (not chkAmeritaPAL.Checked) then
              begin
                chkAmeritaPAL.Checked := true;
                chkNoAmeritaPAL.Checked := false;
                EjecutarSqlST('UPDATE art.pet_empresastestigo ' +
                              '   SET et_fechamodif = SYSDATE, ' +
                              '       et_usumodif = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ',' +
                              '       et_ameritapal = ' + SqlValue(chkAmeritaPAL.Checked) +
                              ' WHERE et_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                              '   AND et_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                              '   AND et_tipo = ' + SqlValue (fraTipoFet.Value) +
                              '   AND et_operativo = ' + SqlValue (fraOperativo.Codigo));
              end;

              if (cantPal = 0) and (not chkNoAmeritaPAL.Checked) then
              begin
                chkNoAmeritaPAL.Checked := true;
                chkAmeritaPAL.Checked := false;
                EjecutarSqlST('UPDATE art.pet_empresastestigo ' +
                              '   SET et_fechamodif = SYSDATE, ' +
                              '       et_usumodif = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ',' +
                              '       et_ameritapal = ' + SqlValue(not chkNoAmeritaPAL.Checked) +
                              ' WHERE et_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                              '   AND et_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                              '   AND et_tipo = ' + SqlValue (fraTipoFet.Value) +
                              '   AND et_operativo = ' + SqlValue (fraOperativo.Codigo));
              end;

              AnexoModif := True;
            end;
          end;
          if AnexoModif or (Trunc(edFechaRecepcionAnexo2.Date) <> edFechaRecepcionAnexo2.Tag) then
          begin
            if (Trunc(edFechaRecepcionAnexo2.Date) <> edFechaRecepcionAnexo2.Tag) then
              EjecutarStoreST(
                'art.siniestro.do_regauditlog(''HYS'', ''CARGA ANEXO 2'', ''MODIFICACION'', '+
                 ' ''Fecha: '' || '+ SqlValue(Trunc(edFechaRecepcionAnexo2.Date))+' || '' Tag: '' || '+
                 SqlValue(edFechaRecepcionAnexo2.Tag)+' || '' Cuit/est : '' || '+SqlValue(fraEmpresa.CUIT)+'|| ''/'' ||'+
                 SqlValue(fraEstableciBusq.edCodigo.Text)+','+ SqlValue( Sesion.UserID) +');');


            if ExisteSql(
              ' SELECT 1 '+
              '   FROM art.pca_cabeceraanexo2 '+
              '  WHERE ca_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
              '    AND ca_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
              '    AND ca_tipo = '+SqlValue(fraTipoFet.Value)+
              '    AND ca_operativo = '+SqlValue(fraOperativo.Codigo)) then
            begin
              EjecutarSqlST(
              ' UPDATE art.pca_cabeceraanexo2 '+
              '    SET ca_fecharecepcion = '+SqlValue(edFechaRecepcionAnexo2.Date)+','+
              '        ca_fechamodif = SYSDATE,'+
              '        ca_usumodif = '+SqlValue(Sesion.UserID)+
              '  WHERE ca_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
              '    AND ca_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
              '    AND ca_tipo = '+SqlValue(fraTipoFet.Value)+
              '    AND ca_operativo = '+SqlValue(fraOperativo.Codigo));
            end
            else
            begin
              EjecutarSqlST(
                ' INSERT INTO art.pca_cabeceraanexo2(ca_cuit, ca_estableci, ca_tipoanexo, '+
                '             ca_tipo, ca_operativo, ca_fecharecepcion, ca_usualta, ca_fechaalta) '+
                '      VALUES ('+SqlValue(fraEmpresa.mskCUIT.Text)+', '+
                                 SqlValue(fraEstableciBusq.edCodigo.Value)+', '+
                                 SqlValue(idAnexo)+', '+
                                 SqlValue(fraTipoFet.Value)+', '+
                                 SqlValue(fraOperativo.Codigo)+', '+
                                 SqlValue(edFechaRecepcionAnexo2.Date)+', '+
                                 SqlValue(Sesion.UserID)+', SYSDATE) ');
            end;
          end;
          if Assigned(Sql) and ( Sql.SqlType = stInsert) then
          begin
            MsgBox('La cantidad de items en NO son: ' + IntToStr(cantNo) + CRLF + 'Y los item son: ' + itemsNo, MB_ICONINFORMATION, 'Cantidades de NO');
            MsgBox('La cantidad de items marcados como PRS son: ' + IntToStr(cantPRS) + CRLF + 'Y los item son:' + itemsPRS, MB_ICONINFORMATION, 'Cantidades de PRS');
          end;
          FAnexoCopia := False;
      end;
    end;
  finally
    Sql.Free;
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.GetListView(AAnexo : String) : TListView;
begin
  Case GetChar(AAnexo) of
    'A': Result := lvAnexo2_A;
    'B': Result := lvAnexo2_B;
    'C': Result := lvAnexo2_C;
    'D': Result := lvAnexo2_A;
    'E': Result := lvAnexo2_A;
    'F': Result := lvAnexo2_B;
    'G': Result := lvAnexo2_C;
  else
    Raise Exception.Create('No se pudo determinar el tipo de anexo.');
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.GetListViewActive : TListView;
var
  i: integer;
begin
  result := nil;
  for i:= 0  to tsAnexos.ActivePage.ControlCount-1 do
    if tsAnexos.ActivePage.Controls[i] is TListView then
      result := tsAnexos.ActivePage.Controls[i] as TListView;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.Anexo1_IsEmpty: Boolean;
begin
     Result := (edItem2.Text        = '') and
               (edItem4.Text        = '') and
               (edItem5.Text        = '') and
               (edItem6.Text        = '') and
               (edItem6_1.Text      = '') and
               (edItem6_1_A.Text    = '') and
               (edItem6_1_B.Text    = '') and
               (edItem6_1_2_A.Text  = '') and
               (edItem6_2.Text      = '') and
               (edItem6_2_A.Text    = '') and
               (edItem6_2_B.Text    = '') and
               (edItem4_1.Text      = '') and
               (edItem4_2.Text      = '') and
               (edGBasCantTrab.Text = '') and
               (edItem1.Text = '') and
               (rbGroupItem4.ItemIndex = -1) and
               (edHorasHombre.Text  = '') and
               (edFechaRecepcion.Date = 0) and
               (rgOrigen.ItemIndex = -1) and
               (not chkAmeritaPRS.Checked) and
               (not chkNoAmeritaPRS.Checked) and
               (not chkAmeritaPAL.Checked) and
               (not chkNoAmeritaPAL.Checked) and
               (edCantidadDiasNoTrabajados.Text  = '') and
               (edCantidadtrabajadorasMujeres.Text  = '') and
               (edCantidadtrabajadoresHombres.Text  = '');
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.Anexo1_Modified: Boolean;
begin
     Result := (btnEliminar.Tag <> 0) or
               (chkItem2.Tag <> 0)    or
                edItem2.Modified      or
                edFechaRecepcion.Modified or
                edItem4.Modified      or
                edItem4_1.Modified      or
                edItem4_2.Modified      or
                edItem5.Modified      or
                edItem6.Modified      or
                edItem6_1.Modified    or
                edItem6_1_A.Modified  or
                edItem6_1_2_A.Modified  or
                edItem6_1_B.Modified  or
                edItem6_2.Modified    or
                edItem6_2_A.Modified  or
                edItem6_2_B.Modified  or
                edGBasCantTrab.Modified or
                edItem1.Modified or
                edHorasHombre.Modified or
                edCantidadDiasNoTrabajados.Modified or
                edCantidadtrabajadorasMujeres.Modified or
                edCantidadtrabajadoresHombres.Modified or
                edTelefono.Modified or
                edEmail.Modified or
                (chkAmeritaPRS.Tag <> 0) or
                (chkNoAmeritaPRS.Tag <> 0) or
                (chkAmeritaPAL.Tag <> 0) or
                (chkNoAmeritaPAL.Tag <> 0) or
                (edFechaNotificacionAnexo.Date <> edFechaNotificacionAnexo.Tag) or 
                (edFechaRecepcion.Date <> edFechaRecepcion.Tag) or
                ((rbGroupItem4.ItemIndex <> -1) and
                 (rbGroupItem4.ItemIndex <> rbGroupItem4.Tag));

     Result := Result and (not Anexo1_IsEmpty);
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.Save_Anexo1;
Var Sql  : TSql;
    FDireccionMail, FCuerpoMail, sSql : String;
    noTieneEstadoActivo : Boolean;
begin
  if ((rgOrigen.ItemIndex <> -1) and (rgOrigen.ItemIndex <> rgOrigen.Tag -1)) then
  begin
    EjecutarSqlST(
      ' UPDATE art.pet_empresastestigo '+
      '    SET et_idorigen = '+ SqlValue(rgOrigen.ItemIndex + 1)+
      '  WHERE et_cuit = '+ SqlValue(fraEmpresa.mskCUIT.Text)+
      '    AND et_estableci = '+ SqlValue(fraEstableciBusq.edCodigo.Value)+
      '    AND et_tipo = '+ SqlValue(fraTipoFet.Value)+
      '    AND et_operativo = '+SqlValue(fraOperativo.Codigo));
  end;
  if Anexo1_Modified then begin
    if not ValidaAnexoFicticio then
    begin
      EjecutarSqlST(
        ' UPDATE art.poe_obradendetalle '+
        '    SET oe_usubaja = '+SqlValue(Sesion.UserID)+','+
        '        oe_fechabaja = SYSDATE '+
        '  WHERE oe_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
        '    AND oe_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
        '    AND oe_tipo = '+SqlValue(fraTipoFet.Value)+
        '    AND oe_operativo = '+SqlValue(fraOperativo.Codigo)+
        '    AND oe_grupo IN(''TE'', ''PE'') '+
        '    AND oe_rubro = 1 '+
        '    AND oe_fecha >= '+SqlDate(edFechaRecepcion.Date)+
        '    AND oe_fechabaja IS NULL '+
        '    AND oe_fechaexport IS NULL ');
    end;

    Sql := TSql.Create('PET_EMPRESASTESTIGO');
    Try
      Sql.PrimaryKey.Add( 'ET_CUIT',      fraEmpresa.mskCUIT.Text );
      Sql.PrimaryKey.Add( 'ET_ESTABLECI', fraEstableciBusq.edCodigo.Value );
      Sql.PrimaryKey.Add( 'ET_TIPO',      fraTipoFet.Value );
      Sql.PrimaryKey.Add( 'ET_OPERATIVO', fraOperativo.Codigo );

      if fraTipoFet.Value = 'GB' Then
        Sql.Fields.Add( 'ET_ITEM4', edGBasCantTrab.Value  )
      else begin
        Sql.Fields.Add( 'ET_ITEM1',     edItem1.Value );
        Sql.Fields.Add( 'ET_ITEM2',     String(IIF(chkItem2.Checked, edItem2.TextSql, '99')) );
        Sql.Fields.Add( 'ET_ITEM4',     edItem4.Value );
        Sql.Fields.Add( 'ET_ITEM4_1',     edItem4_1.Value );
        Sql.Fields.Add( 'ET_ITEM4_2',     edItem4_2.Value );
        if (nbItem4.PageIndex = 1) then Sql.Fields.Add( 'ET_ITEM4RELAVAMIENTOAR', rbGroupItem4.ItemIndex = 0);
        Sql.Fields.Add( 'ET_ITEM5',     edItem5.Value );
        Sql.Fields.Add( 'ET_ITEM6',     edItem6.Value );
        Sql.Fields.Add( 'ET_ITEM6_1',   edItem6_1.Value );
        Sql.Fields.Add( 'ET_ITEM6_1_A', edItem6_1_A.Value );
        Sql.Fields.Add( 'ET_ITEM6_1_B', edItem6_1_B.Value );
        Sql.Fields.Add( 'ET_ITEM6_1_2_A', edItem6_1_2_A.Value);
        Sql.Fields.Add( 'ET_ITEM6_2',   edItem6_2.Value );
        Sql.Fields.Add( 'ET_ITEM6_2_A', edItem6_2_A.Value );
        Sql.Fields.Add( 'ET_ITEM6_2_B', edItem6_2_B.Value );
        Sql.Fields.Add( 'ET_FECHANOTIFICACION', edFechaNotificacionAnexo.Date);
        Sql.Fields.Add( 'ET_TELEFONO', edTelefono.Text);
        Sql.Fields.Add( 'ET_EMAIL', edEMail.Text);

        if chkAmeritaPRS.Checked then
          Sql.Fields.AddString( 'ET_AMERITAPRS', 'S')
        else begin
          if chkNoAmeritaPRS.Checked then
            Sql.Fields.AddString( 'ET_AMERITAPRS', 'N')
          else
            Sql.Fields.Add( 'ET_AMERITAPRS', exNull)
        end;

        if chkAmeritaPAL.Checked then
          Sql.Fields.AddString( 'ET_AMERITAPAL', 'S')
        else begin
          if chkNoAmeritaPAL.Checked then
            Sql.Fields.AddString( 'ET_AMERITAPAL', 'N')
          else
            Sql.Fields.Add( 'ET_AMERITAPAL', exNull)
        end;

        Sql.Fields.Add('ET_IDORIGEN',     rgOrigen.ItemIndex +1  );

        sSql :=
          ' SELECT 1 '+
          '   FROM hys.hee_eventoempresa '+
          '  WHERE ee_cuit = '+ SqlValue(fraEmpresa.mskCUIT.Text)+
          '    AND ee_establecimiento = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
          '    AND ee_tipo = '+ SqlValue(fraTipoFet.Value)+
          '    AND ee_fechabaja is null'+
          '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo);
        if  ValidaAnexoFicticio THEN
          sSql := sSql+'    AND ee_idtipoevento = '+SqlInteger(15)
        else
          if(fraTipoFet.Value = 'ET') then
            sSql := sSql+'    AND ee_idtipoevento = '+SqlInteger(3)
          else
            sSql := sSql+'    AND ee_idtipoevento = '+SqlInteger(4);
        with GetQuery(sSql) do
        begin
          if(Fields[0].AsString = '1') then
          begin
            sSql :=
              ' UPDATE hys.hee_eventoempresa '+
              '    SET ee_fechaevento = '+SqlDate(edFechaRecepcion.Date)+','+
              '        ee_fechamodif = sysdate, '+
              '        ee_usuario = '+SqlValue(Sesion.UserID)+', '+
              '        ee_usumodif = '+SqlValue(Sesion.UserID)+
              '  WHERE ee_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
              '    AND ee_establecimiento = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
              '    AND ee_tipo = '+SqlValue(fraTipoFet.Value)+
              '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo)+
              '    AND ee_fechabaja is null'+
              '    AND ee_idtipoevento = ';
            if  ValidaAnexoFicticio THEN
              sSql := sSql + '15'
            else
              if(fraTipoFet.Value = 'ET')then
                sSql := sSql + '3'
              else
                sSql := sSql + '4';
          end
          else
          begin
            sSql :=
              ' INSERT INTO hys.hee_eventoempresa '+
              '             (ee_id, ee_cuit, ee_establecimiento, ee_tipo, ee_operativo,'+
              '              ee_idtipoevento, ee_observacion, ee_muestracuit, ee_fechaevento,'+
              '              ee_fechaalta, ee_usualta, ee_usuario '+
              '             )'+
              '      VALUES (hys.seq_hee_id.NEXTVAL,'+SqlValue(fraEmpresa.mskCUIT.Text)+', '+
                             SqlValue(fraEstableciBusq.edCodigo.Value)+', '+SqlValue(fraTipoFet.Value)+', '+
                             SqlValue(fraOperativo.Codigo)+', ';
            if  ValidaAnexoFicticio THEN
              sSql := sSql + '15,'
            else
              if(fraTipoFet.Value = 'ET')then
                sSql := sSql + '3,'
              else
                sSql := sSql + '4,';
            sSql := sSql+ ''''',''N'','+SqlDate(edFechaRecepcion.Date)+',sysdate,'+SqlValue(Sesion.UserID)+','+SqlValue(Sesion.UserID)+')';
          end;
          EjecutarSqlST(sSql);
          frmEventos.tbRefrescarClick(nil);
        end;
        Sql.Fields.Add( 'ET_FECHARECEPCION',     edFechaRecepcion.Date );
        Sql.Fields.Add( 'ET_ITEM7HORASHOMBRE',   edHorasHombre.Value);
        Sql.Fields.Add( 'ET_ITEM7DIASNOTRAB',   edCantidadDiasNoTrabajados.Value);
        Sql.Fields.Add( 'ET_ITEM7TRABAJADORAS',   edCantidadtrabajadorasMujeres.Value);
        Sql.Fields.Add( 'ET_ITEM7TRABAJADORES',   edCantidadtrabajadoresHombres.Value );
      end;

      if btnEliminar.Tag = 1 Then begin
        Sql.Fields.Add( 'ET_USUBAJA',   dbLogin.LoginName );
        Sql.Fields.Add( 'ET_FECHABAJA', SQL_DATETIME, False  );

      end else if ExisteSql( 'SELECT 1 FROM PET_EMPRESASTESTIGO ' + Sql.Where ) Then begin
        Sql.Fields.Add( 'ET_USUMODIF',   dbLogin.LoginName );
        Sql.Fields.Add( 'ET_FECHAMODIF', SQL_DATETIME, False  );
        Sql.Fields.Add( 'ET_USUBAJA',    SQL_NULL, False );
        Sql.Fields.Add( 'ET_FECHABAJA',  SQL_NULL, False  );
        Sql.SqlType := stUpdate;
      end else begin
        Sql.Fields.Add( 'ET_USUALTA',   dbLogin.LoginName );
        Sql.Fields.Add( 'ET_FECHAALTA', SQL_DATETIME, False  );
        Sql.SqlType := stInsert;
      end;
      EjecutarSqlST( Sql.Sql );
      noTieneEstadoActivo := ExisteSql(
        ' SELECT 1 '+
        '   FROM hys.hep_estabporpreventor '+
        '  WHERE ep_cuit = '+SqlValue(fraEmpresa.CUIT)+
        '    AND ep_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
        '    AND ep_tipo IN (''ET'', ''EP'') '+
        '    AND ep_idestado <> 1 '+
        '    AND art.hys.get_operativovigente_empresa (ep_cuit, SYSDATE) = '+SqlValue(fraOperativo.Codigo));
      EjecutarStoreST('hys.do_actualizarestado(' + SqlValue(fraEmpresa.value) + ', ' + SqlValue(fraEstableciBusq.edCodigo.Value) + ');');
      if ExisteSql(
        ' SELECT 1 '+
        '   FROM hys.hep_estabporpreventor '+
        '  WHERE ep_cuit = '+SqlValue(fraEmpresa.CUIT)+
        '    AND ep_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
        '    AND ep_tipo IN (''ET'', ''EP'') '+
        '    AND ep_idestado = 1 '+
        '    AND art.hys.get_operativovigente_empresa (ep_cuit, SYSDATE) = '+SqlValue(fraOperativo.Codigo))
        and noTieneEstadoActivo and (edPreventor.Text <> '') then
      begin
        FCuerpoMail := 'Empresa : '+SqlValue(fraEmpresa.NombreEmpresa)+CRLF+
                       'Cuit : '+SqlValue(fraEmpresa.CUIT)+CRLF+
                       'Establecimiento : '+SqlValue(fraEstableciBusq.edCodigo.Text);

        FDireccionMail := ValorSql(
          ' SELECT art.varios.get_direccionesenviomail(''JEF_UCAP'') '+
          '   FROM dual ');    

        EnviarMailBD(FDireccionMail, 'Aviso por la carga de un Anexo I/III ',
                                       [oAutoFirma], FCuerpoMail, nil,
                                       0, tcDefault, False);
      end

//           ActualizarTipoEmpresa;
//           if (Sql.SqlType = stInsert) then ActualizarTipoEmpresa;

    finally
      Sql.Free;
    end;
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.Load_Anexo1;
begin
    sdqDatos.ParamByName('pCuit').AsString      := fraEmpresa.mskCUIT.Text ;
    sdqDatos.ParamByName('pEstableci').AsString := fraEstableciBusq.edCodigo.Text ;
    sdqDatos.ParamByName('pTipo').AsString      := fraTipoFet.Value ;
    sdqDatos.ParamByName('pOperativo').AsString := fraOperativo.Codigo ;
    sdqDatos.Open;

   if sdqDatos.IsEmpty Then
       btnLimpiarClick( Nil )
    else begin
        btnEliminar.Tag     := 0;
        btnEliminar.Enabled := True;
        rbGroupItem4.Tag := -1;
        if sdqDatos.FieldByName('ET_FECHABAJA').IsNull Then
           tsAnexo1.Font.Color := clWindowText
        else
           tsAnexo1.Font.Color := clRed;

        if (not sdqDatos.FieldByName('ET_ITEM2').IsNull) and (sdqDatos.FieldByName('ET_ITEM2').AsInteger < 13) Then begin
           chkItem2.Checked := True;
           edItem2.Value := sdqDatos.FieldByName('ET_ITEM2').AsInteger;
        end else begin
           chkItem2.Checked := False;
           edItem2.Text     := '';
        end;
        if fraTipoFet.Value = 'GB' Then
           edGBasCantTrab.Text := sdqDatos.FieldByName('ET_ITEM4').AsString
        else begin
           edItem4.Text := sdqDatos.FieldByName('ET_ITEM4').AsString;
           edItem4_1.Text := sdqDatos.FieldByName('ET_ITEM4_1').AsString;
           edItem4_2.Text := sdqDatos.FieldByName('ET_ITEM4_2').AsString;

           if sdqDatos.FieldByName('ET_ITEM4RELAVAMIENTOAR').AsString = 'S' then rbGroupItem4.ItemIndex := 0;
           if sdqDatos.FieldByName('ET_ITEM4RELAVAMIENTOAR').AsString = 'N' then rbGroupItem4.ItemIndex := 1;
           rbGroupItem4.Tag := rbGroupItem4.ItemIndex;
           rbGroupItem4.TabStop := rbGroupItem4.ItemIndex > -1;

           edFechaRecepcion.Date := sdqDatos.FieldByName('ET_FECHARECEPCION').AsDateTime;
           edFechaRecepcion.Tag  := trunc(sdqDatos.FieldByName('ET_FECHARECEPCION').AsDateTime);
           edFechaRecepcion.Modified := False;

           if not sdqDatos.FieldByName('ET_IDORIGEN').IsNull then
           begin
             rgOrigen.ItemIndex := sdqDatos.FieldByName('ET_IDORIGEN').AsInteger-1;
             rgOrigen.Tag := sdqDatos.FieldByName('ET_IDORIGEN').AsInteger;
           end
           else
           begin
             rgOrigen.ItemIndex := -1;
             rgOrigen.Tag := -1;
           end;

           edItem1.Text     := sdqDatos.FieldByName('ET_ITEM1').AsString ;

           edItem5.Text     := sdqDatos.FieldByName('ET_ITEM5').AsString ;
           edItem6.Text     := sdqDatos.FieldByName('ET_ITEM6').AsString ;

           edItem6_1.Text   := sdqDatos.FieldByName('ET_ITEM6_1').AsString ;
           edItem6_1_A.Text := sdqDatos.FieldByName('ET_ITEM6_1_A').AsString ;
           edItem6_1_2_A.Text := sdqDatos.FieldByName('ET_ITEM6_1_2_A').AsString ;
           edItem6_1_B.Text := sdqDatos.FieldByName('ET_ITEM6_1_B').AsString ;

           edItem6_2.Text   := sdqDatos.FieldByName('ET_ITEM6_2').AsString ;
           edItem6_2_A.Text := sdqDatos.FieldByName('ET_ITEM6_2_A').AsString ;
           edItem6_2_B.Text := sdqDatos.FieldByName('ET_ITEM6_2_B').AsString ;

           chkAmeritaPRS.Checked := (sdqDatos.FieldByName('ET_AMERITAPRS').AsString = 'S');
//           if not sdqDatos.FieldByName('ET_AMERITAPRS').IsNull then
//             chkAmeritaPRS.Tag := Ord(chkAmeritaPRS.Checked);
           chkNoAmeritaPRS.Checked := (sdqDatos.FieldByName('ET_AMERITAPRS').AsString = 'N');
//           if not sdqDatos.FieldByName('ET_AMERITAPRS').IsNull then
//             chkNoAmeritaPRS.Tag := Ord(chkNoAmeritaPRS.Checked);

           chkAmeritaPAL.Checked := (sdqDatos.FieldByName('ET_AMERITAPAL').AsString = 'S');
//           if not sdqDatos.FieldByName('ET_AMERITAPAL').IsNull then
//             chkAmeritaPAL.Tag := Ord(chkAmeritaPAL.Checked);
           chkNoAmeritaPAL.Checked := (sdqDatos.FieldByName('ET_AMERITAPAL').AsString = 'N');
//           if not sdqDatos.FieldByName('ET_AMERITAPAL').IsNull then
//             chkNoAmeritaPAL.Tag := Ord(chkNoAmeritaPAL.Checked);

           edHorasHombre.Text := sdqDatos.FieldByName('ET_ITEM7HORASHOMBRE').AsString ;
           edCantidadDiasNoTrabajados.Text := sdqDatos.FieldByName('ET_ITEM7DIASNOTRAB').AsString ;
           edCantidadtrabajadorasMujeres.Text := sdqDatos.FieldByName('ET_ITEM7TRABAJADORAS').AsString ;
           edCantidadtrabajadoresHombres.Text := sdqDatos.FieldByName('ET_ITEM7TRABAJADORES').AsString ;
           if not sdqDatos.FieldByName('ET_FECHANOTIFICACION').IsNull then
           begin
            edFechaNotificacionAnexo.Tag :=  sdqDatos.FieldByName('ET_FECHANOTIFICACION').Value;
            edFechaNotificacionAnexo.Date := sdqDatos.FieldByName('ET_FECHANOTIFICACION').AsDateTime;
           end
           else
            edFechaNotificacionAnexo.Tag := 0;

           edEMail.Text := sdqDatos.FieldByName('ET_EMAIL').AsString;
           edTelefono.Text := sdqDatos.FieldByName('ET_TELEFONO').AsString;
        end;
    end;
    sdqDatos.Close;
    CargaFechasAnexo1;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.Anexo1_ClearModified;
begin
     edGBasCantTrab.Modified  := False;

     chkItem2.Tag         := 0;
     edItem1.Modified     := False;
     edItem2.Modified     := False;
     edItem4.Modified     := False;
     edItem4_1.Modified   := False;
     edItem4_2.Modified   := False;

     edItem5.Modified     := False;
     edItem6.Modified     := False;
     edItem6_1.Modified   := False;
     edItem6_1_A.Modified := False;
     edItem6_1_B.Modified := False;
     edItem6_1_2_A.Modified := False;
     edItem6_2.Modified   := False;
     edItem6_2_A.Modified := False;
     edItem6_2_B.Modified := False;
     edTelefono.Modified  := False;
     edEMail.Modified     := False;
     chkAmeritaPRS.Tag    := 0;
     chkNoAmeritaPRS.Tag  := 0;
     chkAmeritaPAL.Tag    := 0;
     chkNoAmeritaPAL.Tag  := 0;

     edHorasHombre.Modified := False;
     edCantidadDiasNoTrabajados.Modified := False;
     edCantidadtrabajadorasMujeres.Modified := False;
     edCantidadtrabajadoresHombres.Modified := False;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.PageControlChange(Sender: TObject);
begin
(*
   if (fraTipoFet.Value = 'GB') then begin
        if (ValorSql('SELECT NVL(ET_ITEM4, 0) FROM PET_EMPRESASTESTIGO WHERE ET_CUIT = ' +
                SqlValue(fraEmpresa.mskCUIT.Text) + ' AND ET_ESTABLECI = ' +
                SqlValue(fraEstableciBusq.edCodigo.Text) + ' AND ET_TIPO = ' +
                SqlValue(fraTipoFet.Value) + ' AND ET_OPERATIVO = ' +
                SqlValue(fraOperativo.Codigo), '0') = '0') or (edGBasCantTrab.Value = 0) then begin
        if (PageControl.ActivePageIndex <> 0) then
        begin
                lvAnexo2_A.Enabled := false;
                lvAnexo2_B.Enabled := false;
                lvAnexo2_C.Enabled := false;
                FFrmPRS.tBarRecomendaciones.Enabled := false;
                FFrmPRS.ToolBar1.Enabled := false;
                FFrmPRS.tBarDiagXRec.Enabled := false;
                FFrmPRS.tBarDiagEstableci.Enabled := false;
                FFrmPRS.ToolBar2.Enabled := false;
                FFrmPRS.fraEstableciIdentico.Enabled := false;
                frmDenInc.tBarDiagEstableci.Enabled := false;
                frmDenInc.tbarDenDetalle.Enabled := false;
        end;
        InvalidMsg(tsAnexo1, 'Debe ingresar la cantidad de Trabajadores del Establecimiento y luego Guardar.');
        exit;
      end;
   end;

*)
  lvAnexo2_A.Enabled := true;
  lvAnexo2_B.Enabled := true;
  lvAnexo2_C.Enabled := true;
  lvAnexo2_A.Enabled := true;
  FFrmPRS.tBarRecomendaciones.Enabled := true;
  FFrmPRS.tbVisitas.Enabled := true;
  FFrmPRS.tBarDiagEstableci.Enabled := true;

  sccVisitas.Enabled := false;
  sccEmpleadoresContratantes.Enabled := false;
  frmPlanMej.sccPlanMejoras.Enabled := false;
  frmDenInc.sccDenuncias.Enabled := false;
  FFrmPRS.sccDiagnostico.Enabled := false;
  FFrmPRS.sccRecomendaciones.Enabled := false;
  FFrmPRS.sccVisitas.Enabled := false;

  Case PageControl.ActivePageIndex of
    TAB_ANEXO1:
    begin
      CargaFechasAnexo1;
    end;


    TAB_ANEXO2:
    begin
      Anexo2Enabled := Not Anexo1_IsEmpty;
      CargaFechasAnexo2;
    end;

    TAB_PRS: begin
      OnShortCut := FFrmPRS.OnShortCut ;
      PageControl.ActivePage.Enabled := not Anexo2_Allow;
      FFrmPRS.pcPRSChange(self);
      FFrmPRS.sccVisitas.Enabled := true;
    end;

    TAB_VISITAS: begin
      OnShortCut := FOnShortCutForm;
      sccVisitas.Enabled := true;
    end;

    TAB_EMPL_CONTRA: begin
      OnShortCut := FOnShortCutForm;
      sccEmpleadoresContratantes.Enabled := true;
    end;

    TAB_PLAN_MEJ: begin
      OnShortCut := frmPlanMej.OnShortCut;
      frmPlanMej.sccPlanMejoras.Enabled := true;
    end;

    TAB_DENINC: begin
      frmDenInc.tbDiagRefrescarClick(Sender);
      OnShortCut := frmDenInc.OnShortCut;
      frmDenInc.sccDenuncias.Enabled := true;
    end;

    else OnShortCut := nil
  end;

  btnEliminar.Visible := PageControl.ActivePageIndex = 0;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.Anexo2_IsEmpty : Boolean;
var iTabs,
    iItems : Integer;
begin
  Result := True;
  if ExisteSql(
    ' SELECT 1 '+
    '   FROM art.pan_anexo2 '+
    '  WHERE an_cuit = '+ SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND an_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND an_operativo = '+SqlValue(fraOperativo.Codigo)+
    '    AND an_tipo = '+SqlValue(fraTipoFet.Codigo)) then
              Result := False
  else
  begin
    for iTabs := Ord('A') to Ord('C') do
      with GetListView(Chr(iTabs)) do
        for iItems := 0 To Items.Count - 1 do
          if ((Items[iItems].ImageIndex <> IMG_CATEGORIA) and
             (Items[iItems].ImageIndex <> IMG_READONLY) and
             (Items[iItems].ImageIndex <> -1)) then
          begin
            Result := False;
            Exit;
          end;
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.Anexo2_Allow: Boolean;
var iTabs,
    iItems : Integer;
begin
    Result := True;
    for iTabs := Ord('A') to Ord('C') do
        with GetListView(Chr(iTabs)) do
             for iItems := 0 To Items.Count - 1 do
                 if (Items[iItems].ImageIndex <> IMG_CATEGORIA) then
                 begin
                    Result := False;
                    Exit;
                 end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.btnInfoEstableciClick(Sender: TObject);
Var Sql : String;
begin
     if fraEstableciBusq.edCodigo.Value <> 0 Then begin
         Sql := 'SELECT ''Tel�fono de la Empresa: '' || MP_TELEFONOS || chr(13) || ''Tel�fono del Establecimiento: '' || ST_TELEFONOS ' +
                  'FROM CMP_EMPRESAS, CST_ESTABLECI ' +
                 'WHERE MP_CUIT = ST_CUIT ' +
                   'AND ST_CUIT = ''' + fraEmpresa.mskCUIT.Text + ''' ' +
                   'AND ST_CLAVE = ' +  fraEstableciBusq.edCodigo.TextSql ;
         MsgBox(ValorSql(Sql), MB_ICONINFORMATION, 'Informaci�n del Establecimiento');
     end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.OnTipoFetChange(Sender: TObject);
Const
  EMPRESA_TESTIGO      = 0;
  EMPRESA_GUIA         = 1;
  EMPRESA_AGRICOLA     = 2;
  EMPRESA_PYMES        = 3;
begin
  tsPRS.TabVisible := (fraTipoFet.Codigo <> 'GB') and (fraTipoFet.Codigo <> 'CO');
  tsPAL.TabVisible := (fraTipoFet.Value = 'ET');

  tsAnexo2.TabVisible := (fraTipoFet.Codigo <> 'GB') and (fraTipoFet.Codigo <> 'CO');
  //tsEventos.TabVisible := (fraTipoFet.Codigo <> 'GB') and (fraTipoFet.Codigo <> 'CO');
  pnNivelFirmaAnexo2.Visible := (fraTipoFet.Codigo <> 'GB') and (fraTipoFet.Codigo <> 'CO') and (fraTipoFet.Codigo <> 'ET');

  tsObras.TabVisible := (fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP');
  if fraTipoFet.Value = 'CO' then
    frmObras.Parent := tsAnexo1
  else
    if (fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP') then
      frmObras.Parent := tsObras;

  frmObras.Align   := alClient;
  frmObras.Visible := (fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP') or (fraTipoFet.Value = 'CO');

  if fraTipoFet.Value = 'GB' Then begin
    pnlGrupoBasico.Visible := True;
    ScrollBox.Visible      := False;
    pnl1.Visible           := false;
    pnl7.Visible           := false;
    pnl8.Visible           := false;
    pnlFicticio.Visible    := false;
    tsAnexo1.Caption := 'Anexo 1';
    tsAnexo2.Caption := 'Anexo 2';
    tsPRS.Caption    := 'PRS';
    FFrmPRS.TipoFormulario := TIPO_FORMULARIO_PRS;
    btnAnexo2Copiar.Enabled := true;
    tbEmpleadores.TabVisible := false;
    tsDenIncumplimiento.Caption := 'Denunciado a la SRT';
    tsPlanMej.Caption := 'Medidas Correctivas';
  end else if fraTipoFet.Value = 'CO' Then begin
    ScrollBox.Visible      := False;
//    pnlGrupoBasico.Visible := False;
//    pnl1.Visible           := false;
//    pnl7.Visible           := false;
//    pnlFicticio.Visible    := false;
//    pnl8.Visible           := false;
    tsAnexo1.Caption       := 'Aviso de Obra';
//    tsAnexo2.Caption := 'Anexo 2';
    tsPRS.Caption    := 'PRS';
    FFrmPRS.TipoFormulario := TIPO_FORMULARIO_PRS;
    btnAnexo2Copiar.Enabled := true;
    tbEmpleadores.TabVisible := false;
    tsDenIncumplimiento.Caption := 'Denunciado a la SRT';
    tsPlanMej.Caption := 'Denuncias de Incumplimiento';
  end else begin
    ScrollBox.Visible      := True;
    pnlGrupoBasico.Visible := False;

    Case ArrayPos( fraTipoFet.Value, ['ET', 'EG', 'EA', 'EP'] ) of
      EMPRESA_TESTIGO: begin
        pnl1.Visible    := false;
        pnl7.Visible    := false;
        pnlFicticio.Visible := true;
        if (fraOperativo.Codigo < '201001') then
        begin
          lbItem5.Caption := '5 - �C�antas enfermedades profesionales han denunciado a la ART durante el a�o 2000?';
          lbItem6.Caption := '6 - �Cu�ntos trabajadores siniestrados pertencientes al establecimiento denunci� a la ART durante el a�o 2000?';
          lbItem6_1.Caption := '6.1 - �Cu�ntos de ellos se encontraban trabajando en el momento del accidente?';
          lbItem6_1_1.Caption := '6.1.1 - �Cu�ntos de estos trabajadores se ausentaron de su puesto de trabajo al menos un d�a y cu�ntos fallecieron?';
          lbItem6_1_1_A.Caption := 'A - Siniestros con Ausencia :';
          lbItem6_1_1_B.Caption := 'B - Fallecidos :';
          pnl2.Visible := true;
          edItem4_1.Visible := false;
          edItem4_2.Visible := false;
          lblItem4_1.Visible := false;
          lblItem4_2.Visible := false;
          pnl6_1_2.Visible := false;
          pnl6_2_1.Visible := true;
          pnl8.Visible           := false;
        end
        else begin
          lbItem5.Caption := '5 - �Ha denunciado la existencia de alguna profesional a la ART durante el �ltimo a�o?';
          lbItem6.Caption := '6 - �Cu�ntos trabajadores siniestrados se denunciaron a la ART durante el �ltimo a�o?';
          lbItem6_1.Caption := '6.1 - De ellos, �cu�ntos se encontraban trabajando en el momento del accidente?';
          lbItem6_1_1.Caption := '6.1.1 - �Cu�ntos de estos trabajadores se ausentaron de su puesto de trabajo al menos 11 d�as o fallecieron?';
          lbItem6_1_1_A.Caption := 'Siniestros > 10 d�as';
          lbItem6_1_1_B.Caption := 'Fallecidos';
          pnl2.Visible := false;
          edItem4_1.Visible := true;
          edItem4_2.Visible := true;
          lblItem4_1.Visible := true;
          lblItem4_2.Visible := true;
          pnl6_2_1.Visible := false;
          pnl6_1_2.Visible := true;
          pnl8.Visible := true;
        end;
        lbItem4.Caption := '4 - �Cu�ntas personas trabajaron en promedio los �ltimos seis meses en el establecimiento?';
        tsAnexo1.Caption := 'Anexo 1';
        nbItem4.ActivePage := 'Anexo 1';
        tsAnexo2.Caption := 'Anexo 2';
        tsPRS.Caption    := 'PRS';
        FFrmPRS.TipoFormulario := TIPO_FORMULARIO_PRS;
        btnAnexo2Copiar.Enabled := true;
        tbEmpleadores.TabVisible := false;
        tsDenIncumplimiento.Caption := 'Denuncias Generales';
        tsPlanMej.Caption := 'Denuncias de Incumplimiento';
      end;

      EMPRESA_GUIA: begin
        lbItem4.Caption := '4 - �Cu�l es el promedio de trabajadores en el establecimiento durante el 2001?';
        lbItem5.Caption := '5 - �C�antas enfermedades profesionales han denunciado a la ART durante el a�o 2001?';
        lbItem6.Caption := '6 - Cu�ntos trabajadores siniestrados pertencientes al establecimiento denunci� a la ART durante el a�o 2001?';
        lbItem6_1.Caption := '6.1 - �Cu�ntos de ellos se encontraban trabajando en el momento del accidente?';
        lbItem6_1_1.Caption := '6.1.1 - �Cu�ntos de estos trabajadores se ausentaron de su puesto de trabajo al menos un d�a y cu�ntos fallecieron?';
        lbItem6_1_1_A.Caption := 'A - Siniestros con Ausencia :';
        lbItem6_1_1_B.Caption := 'B - Fallecidos :';
        pnl1.Visible    := false;
        pnl7.Visible    := false;
        pnl4.Visible    := false;
        tsAnexo1.Caption := 'Anexo 1';
        nbItem4.ActivePage := 'Anexo 1';
        tsAnexo2.Caption := 'Anexo 2';
        tsPRS.Caption    := 'PRS';
        FFrmPRS.TipoFormulario := TIPO_FORMULARIO_PRS;
        btnAnexo2Copiar.Enabled := true;
        tbEmpleadores.TabVisible := false;
        edItem4_1.Visible := false;
        edItem4_2.Visible := false;
        lblItem4_1.Visible := false;
        lblItem4_2.Visible := false;
        pnl2.Visible := true;
        pnl6_1_2.Visible := false;
        pnl6_2_1.Visible := true;
        pnl8.Visible := false;
        pnlFicticio.Visible := false;
      end;

      EMPRESA_AGRICOLA : begin
        lbItem4.Caption := '4 - �Cu�l es la mayor cantidad de trabajadores declarados en un mes?';
        lbItem5.Caption := '5 - �C�antas enfermedades profesionales han denunciado a la ART durante el a�o 2001?';
        lbItem6.Caption := '6 - Cu�ntos trabajadores siniestrados pertencientes al establecimiento denunci� a la ART durante el a�o 2001?';
        lbItem6_1.Caption := '6.1 - �Cu�ntos de ellos se encontraban trabajando en el momento del accidente?';
        lbItem6_1_1.Caption := '6.1.1 - �Cu�ntos de estos trabajadores se ausentaron de su puesto de trabajo al menos un d�a y cu�ntos fallecieron?';
        lbItem6_1_1_A.Caption := 'A - Siniestros con Ausencia :';
        lbItem6_1_1_B.Caption := 'B - Fallecidos :';
        pnl1.Visible    := false;
        pnl7.Visible    := false;
        pnl4.Visible    := false;
        tsAnexo1.Caption := 'Anexo 1';
        nbItem4.ActivePage := 'Anexo 1';
        tsAnexo2.Caption := 'Anexo 2';
        tsPRS.Caption    := 'PRS';
        FFrmPRS.TipoFormulario := TIPO_FORMULARIO_PRS;
        btnAnexo2Copiar.Enabled := true;
        tbEmpleadores.TabVisible := false;
        edItem4_1.Visible := false;
        edItem4_2.Visible := false;
        lblItem4_1.Visible := false;
        lblItem4_2.Visible := false;
        pnl2.Visible := true;
        pnl6_1_2.Visible := false;
        pnl6_2_1.Visible := true;
        pnl8.Visible := false;
        pnlFicticio.Visible := false;
      end;

      EMPRESA_PYMES: begin
        lbItem4.Caption := '4 - �Cuenta con el relevamiento de agentes de riesgos para la detecci�n precoz de Enfermedades Profesionales?';
        lbItem5.Caption := '5 - �Ha denunciado la existencia de alguna enfermedad profesional a la ART durante el a�o calendario anterior?';
        lbItem6.Caption := '6 - Cu�ntos trabajadores siniestrados pertencientes al establecimiento denunci� a la ART el a�o calendario anterior?';
        lbItem6_1.Caption := '6.1 - �Cu�ntos de ellos se encontraban trabajando en el momento del accidente?';
        lbItem6_1_1.Caption := '6.1.1 - �Cu�ntos de estos trabajadores se ausentaron de su puesto de trabajo al menos un d�a y cu�ntos fallecieron?';
        lbItem6_1_1_A.Caption := 'A - Siniestros con Ausencia :';
        lbItem6_1_1_B.Caption := 'B - Fallecidos :';
        pnl7.Visible    := true;
        tsAnexo1.Caption := 'Anexo 3';
        nbItem4.ActivePage := 'Anexo 3';
        tsAnexo2.Caption := 'Anexo 4';
        tsPRS.Caption    := 'PAPE (Anexo 5-6)';
        FFrmPRS.TipoFormulario := TIPO_FORMULARIO_PAPE;
        btnAnexo2Copiar.Enabled := true;
        tbEmpleadores.TabVisible := true;
        tsDenIncumplimiento.Caption := 'Denuncias Generales';
        tsPlanMej.Caption := 'Denuncias de Incumplimiento';
        edItem4_1.Visible := false;
        edItem4_2.Visible := false;
        lblItem4_1.Visible := false;
        lblItem4_2.Visible := false;
        pnl2.Visible := true;
        pnl6_1_2.Visible := false;
        pnl6_2_1.Visible := true;
        pnl1.Visible := true;
        pnl8.Visible := false;
        pnlFicticio.Visible := true;
      end;
    end;
  end;

  pnlFicticio.Top := 0;
  pnl5.Top := pnlFicticio.Top + 1;
  pnl4.Top := pnl5.Top + 1;
  pnl1.Top := pnl4.Top + 1;
  pnl2.Top := pnl1.Top + 1;
  pnl100.Top := pnl2.Top + 1;
  pnl6.Top := pnl100.Top + 1;
  pnl6_1.Top := pnl6.Top + 1;
  pnl6_1_1.Top := pnl6_1.Top + 1;
  pnl6_1_2.Top := pnl6_1_1.Top + 1;
  pnl6_2.Top := pnl6_1_2.Top + 1;
  pnl6_2_1.Top := pnl6_2.Top + 1;
  pnl7.Top := pnl6_2_1.Top + 1;
  pnl8.Top := pnl7.Top + 1;

  //ScrollBox.ScrollBy(1,1);

  frmDenInc.Grupo           := fraTipoFet.Value ;
  frmDenInc.TipoDescripcion := fraTipoFet.cmbDescripcion.Text;
  FFrmPRS.TipoDescripcion   := fraTipoFet.cmbDescripcion.Text;

//   LoadData;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.GetTipoFet: String;
Var Field : TField;
begin
  Field := fraTipoFet.sdqDatos.FindField('TB_ESPECIAL1');
  if Assigned(Field) Then
    Result := Field.AsString
  else
    Result := '';
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.LoadData;
begin
  if (fraEstableciBusq.edCodigo.Text = '') or (fraEstableciBusq.cmbDescripcion.Text = '') or fraTipoFet.IsEmpty or fraTipoFet.IsEmpty or fraOperativo.IsEmpty Then begin
    btnLimpiarClick( Nil );
    Anexo1_ClearModified;
    rbGroupItem4.TabStop := true;
    FFrmPRS.Limpiar;
  end
  else begin
//Pablo 25/06/2009 tsPRS.TabVisible := (fraTipoFet.Codigo <> 'GB') and (fraTipoFet.Codigo <> 'CO');
//Pablo 25/06/2009 tsAnexo2.TabVisible := (fraTipoFet.Codigo <> 'GB') and (fraTipoFet.Codigo <> 'CO');

    if (fraTipoFet.Codigo = 'GB') then
      TieneAvisodeObra
    else
      tsAnexos.Visible := true;

    Load_Anexo1;
    Load_Anexo2;

    FFrmPRS.Estableci := fraEstableciBusq.edCodigo.Value;
    FFrmPRS.Tipo      := fraTipoFet.Value;
    FFrmPRS.Operativo := fraOperativo.Codigo;
    FFrmPRS.Load;


    if (FIDAvisoObraWeb = 0) or frmObras.FAOWEB319 then
    begin
      frmObras.Load( fraEmpresa.mskCuit.Text, fraEstableciBusq.edCodigo.Value, fraTipoFet.Value, fraOperativo.Codigo );
    end
    else
    begin
      frmObras.CargarAvisodeObraWeb(FIDAvisoObraWeb, fraEmpresa.mskCuit.Text, fraEstableciBusq.edCodigo.Value, fraTipoFet.Value, fraOperativo.Codigo );
      frmObras.FIDAOWeb := FIDAvisoObraWeb;
    end;
    frmObras.FContrato := fraEmpresa.Contrato;
    frmDenInc.Load( fraEmpresa.mskCuit.Text, fraEstableciBusq.edCodigo.Value, fraTipoFet.Value, fraOperativo.Codigo, GetTipoFet );
    frmEventos.Load(fraEmpresa.mskCuit.Text, fraEstableciBusq.edCodigo.Value, fraTipoFet.Value, fraOperativo.Codigo);

    Load_EmpresasContratantes;

    frmDenInc.qpDenReporte.SubTitle.Lines.Clear;
    frmDenInc.qpDenReporte.SubTitle.Lines.Add( 'CUIT: ' + fraEmpresa.mskCuit.Text + ' - Contrato: ' + fraEmpresa.edContrato.Text + ' - R.Social: ' + fraEmpresa.cmbRSocial.Text );
    frmDenInc.qpDenReporte.SubTitle.Lines.Add( 'Establecimiento: ' + fraEstableciBusq.edCodigo.Text + ' - ' + fraEstableciBusq.cmbDescripcion.Text );
    frmDenInc.qpDenReporte.SubTitle.Lines.Add( 'Tipo: ' + fraTipoFet.edCodigo.Text + ' - ' + fraTipoFet.cmbDescripcion.Text );
    frmDenInc.qpDenReporte.SubTitle.Lines.Add( 'Operativo: ' + fraOperativo.edCodigo.Text + ' - ' + fraOperativo.cmbDescripcion.Text );

    frmCapacitacion.CUIT   := fraEmpresa.mskCUIT.Text ;
    frmCapacitacion.Estableci := fraEstableciBusq.edCodigo.Value;
    frmCapacitacion.TIPO := fraTipoFet.Value;
    frmCapacitacion.Operativo := fraOperativo.Codigo;
    frmCapacitacion.Load;

    frmRiesgos.CUIT   := fraEmpresa.mskCUIT.Text ;
    frmRiesgos.Estableci := fraEstableciBusq.edCodigo.Value;
    frmRiesgos.Contrato := fraEmpresa.Contrato;
    frmRiesgos.Load;

    frmPlanMej.CUIT        := fraEmpresa.mskCUIT.Text ;
    frmPlanMej.Estableci   := fraEstableciBusq.edCodigo.Value;
    frmPlanMej.Tipo        := fraTipoFet.Value;
    frmPlanMej.RazonSocial := fraEmpresa.cmbRSocial.Text;
    frmPlanMej.Contrato    := fraEmpresa.Contrato;
    frmPlanMej.Operativo   := fraOperativo.edCodigo.Text;
    frmPlanMej.Load;

    FFrmPAL.CUIT        := fraEmpresa.mskCUIT.Text ;
    FFrmPAL.Estableci   := fraEstableciBusq.edCodigo.Value;
    FFrmPAL.Tipo        := fraTipoFet.Value;
    FFrmPAL.Operativo   := fraOperativo.edCodigo.Text;
    FFrmPAL.Load;

    Anexo1_ClearModified;
    tsAnexo2.Tag := 0;

    PageControl.Enabled := true;
    PageControl.ActivePageIndex := 0;

    //SelectNext( tsAnexo1, True, True );

    //BeginTrans(True);

    VCLExtra.LockControls([fraEstableciBusq, fraEmpresa, fraTipoFet, fraOperativo], true);
    btnGuardar.Enabled := True;
    tbConstanciaVisitas.Enabled := true;
    tbUltmimoRegDom.Enabled := False;
    tbImpresionPreventor.Enabled := False;
    btnExportado.Enabled := btnGuardar.Enabled;
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.btnEliminarClick(Sender: TObject);
begin
  tsAnexo1.Font.Color := clRed;
  btnEliminar.Tag     := 1;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.OnOperativoChange(Sender: TObject);
begin
  OnTipoFetChange(Sender);
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.OnPreventorChange(Sender: TObject);
begin
    if ExisteSql(
      ' SELECT * '+
      '   FROM art.pit_firmantes '+
      '  WHERE it_codigo = '+ SqlValue(fraPreventorVisita.Codigo)+
      '    AND it_idrolpreventor IN (1, 5) ') then
        vclextra.LockControl(edFechaViaticos,false)
    else
    begin
        vclextra.LockControl(edFechaViaticos,True);
        edFechaViaticos.Clear;
    end;
    if FModoVisita = maAlta then
    begin
      if FPreventorVisita = fraPreventorVisita.Value then
      begin
        edFechaInicioViaticos.Date := FFechaInicioViaticos;
        edFechaFinViaticos.Date := FFechaFinViaticos;
      end
      else
      begin
        edFechaInicioViaticos.Clear;
        edFechaFinViaticos.Clear;
      end;
    end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.btnCopEstAceptarClick(Sender: TObject);
begin
   if fraEstabCopia.IsEmpty Then
      InvalidMsg( fraEstabCopia.edCodigo, 'Debe seleccionar un establecimiento' )

   else if fraEstabCopia.edCodigo.Value = fraEstableciBusq.edCodigo.Value Then
      InvalidMsg( fraEstabCopia.edCodigo, 'No puede copiar datos del mismo establecimiento' )

   else
      fpCopiarEstableci.ModalResult := mrOk;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.fpCopiarEstableciBeforeShow(Sender: TObject);
begin
  fraEstabCopia.CUIT           := fraEmpresa.mskCuit.Text;
  fraEstabCopia.ExtraCondition := ' AND ST_CLAVE <> ' + SqlInt(fraEstableciBusq.edCodigo.Value) + ' ';
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.btnAnexo2CopiarClick(Sender: TObject);
Var sSql : String;
begin
  if fpCopiarEstableci.ShowModal = mrOk Then begin
    sSql := 'SELECT 1 ' +
              'FROM PAN_ANEXO2 ' +
             'WHERE AN_CUIT = ''' + fraEmpresa.mskCUIT.Text + ''' ' +
               'AND AN_ESTABLECI = ' + fraEstabCopia.edCodigo.TextSql + ' ' +
               'AND AN_TIPO = ''' + fraTipoFet.Value + ''' ' +
               'AND AN_OPERATIVO = ''' + fraOperativo.Codigo + ''' ' ;
    if not ExisteSql( sSql ) Then
      MsgBox( 'No se encontraron datos para copiar', MB_ICONERROR )
    else begin
      Try
        sSql := 'DELETE FROM PAN_ANEXO2 ' +
                 'WHERE AN_CUIT = ''' + fraEmpresa.mskCUIT.Text + ''' ' +
                   'AND AN_ESTABLECI = ' + fraEstableciBusq.edCodigo.TextSql + ' ' +
                   'AND AN_TIPO = ''' + fraTipoFet.Value + ''' ' +
                   'AND AN_OPERATIVO = ''' + fraOperativo.Codigo + ''' ' ;
        EjecutarSqlST( sSql );

        sSql := 'INSERT INTO PAN_ANEXO2 (AN_CUIT, AN_ESTABLECI, AN_ANEXO, AN_TIPO, AN_OPERATIVO, AN_CODIGO, ' +
                'AN_CUMPLIMIENTO, AN_USUALTA, AN_FECHAALATA) ' +
                'SELECT AN_CUIT, ' + fraEstableciBusq.edCodigo.TextSql + ', AN_ANEXO, AN_TIPO, AN_OPERATIVO, ' +
                       'AN_CODIGO, AN_CUMPLIMIENTO, AN_USUALTA, AN_FECHAALATA ' +
                  'FROM PAN_ANEXO2 ' +
                 'WHERE AN_CUIT = ''' + fraEmpresa.mskCUIT.Text + ''' ' +
                   'AND AN_ESTABLECI = ' + fraEstabCopia.edCodigo.TextSql + ' ' +
                   'AND AN_TIPO = ''' + fraTipoFet.Value + ''' ' +
                   'AND AN_OPERATIVO = ''' + fraOperativo.Codigo + ''' ' ;
        EjecutarSqlST( sSql );

        if not((ValorSql('SELECT art.hys.get_tipo_empresa('+SqlValue(fraEmpresa.CUIT)+',NULL) FROM dual')= 'ET')
           and (ValorSql('SELECT art.hys.get_tipo_estab_srt('+SqlValue(fraEmpresa.CUIT)+','+SqlValue(fraEstableciBusq.edCodigo.Text)+') FROM DUAL ') = 'GB')) then
        begin
          with GetQuery(
            ' SELECT an_anexo, an_codigo, an_cumplimiento '+
            '   FROM art.pan_anexo2 '+
            '  WHERE an_cuit = '+ SqlValue(fraEmpresa.mskCUIT.Text)+
            '    AND an_estableci = '+ SqlValue(fraEstabCopia.edCodigo.TextSql)+
            '    AND an_tipo = '+SqlValue(fraTipoFet.Value)+
            '    AND an_operativo = '+SqlValue(fraOperativo.Codigo)
            ) do
            try
              while not Eof do
              begin
                GuardarEnPal(FieldByName('an_anexo').AsString,
                             FieldByName('an_codigo').AsString,
                             FieldByName('an_cumplimiento').AsString);
                Next;
              end
            finally
              Free;
            end;
        end;
      except
        Raise;
      end;
      Load_Anexo2;
      FAnexoCopia := True;
    end;
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TfrmFet.tsAnexosChange(Sender: TObject);
begin
  if iAnexo2 > -1 Then
  begin
    if ExisteSql(
      ' SELECT 1 '+
      '   FROM art.pan_anexo2 '+
      '  WHERE an_cuit = '+SqlValue(fraEmpresa.CUIT)+
      '    AND an_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
      '    AND an_tipo = '+SqlValue(fraTipoFet.Codigo)+
      '    AND an_operativo = '+ SqlValue(fraOperativo.Codigo)) then
    begin
      tsAnexos.ActivePageIndex := iAnexo2;
      InvalidMsg(tsAnexos, 'Ya existe Anexo 2 Cargado.');
    end;
  end;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TfrmFet.PreguntaGuardar: boolean;
var
  valorMsgBox : Integer;
begin
  result := true;
  if (btnGuardar.Enabled)
     and (btnGuardar.Visible) then
  begin
    valorMsgBox := MsgBox('�Desea guardar los datos?',  MB_ICONQUESTION + MB_YESNOCANCEL , 'Guardar Datos');
    if valorMsgBox = IDYES then
    begin
      if not Validar then result := false
      else Guardar;
    end
    else if valorMsgBox = IDCANCEL then
    begin
      result := False;
    end;
  end;
end;

function TfrmFet.TieneAvisodeObra: Boolean;
var
    Operativo: TStringList;
begin
    result := false;
    Operativo := ValoresColSQL('SELECT nvl(AO_OPERATIVO, 0), AO_INFORMARSRT FROM PAO_AVISOOBRA WHERE AO_CUIT = ' +
          SqlValue(fraEmpresa.mskCUIT.Text) + ' AND AO_ESTABLECI = ' +
          SqlValue(fraEstableciBusq.edCodigo.Text)+  ' AND AO_FECHABAJA IS NULL '+
          ' ORDER BY AO_OPERATIVO DESC');
    if (Operativo[0] <> '0') and (Operativo[0] <> '') then
    begin
      if (Operativo[1] = 'S')and (Operativo[0] <> '') then
        fraTipoFet.Codigo := 'CO';

      //fraOperativo.Codigo := Operativo;
      OnTipoFetChange(nil);
      if (Operativo[1] = 'S')and (Operativo[0] <> '') then
        InfoHint(ScrollBox, 'Este establecimiento tiene aviso de obra en el operativo ' + Operativo[0])
      else
        InfoHint(ScrollBox, 'Este establecimiento tiene aviso de obra en el operativo ' + Operativo[0]+ ' y no se informa a la SRT.');
      Application.ProcessMessages;
      result := true;
    end;
end;

procedure TfrmFet.btnBuscarClick(Sender: TObject);
begin
  if FIDAvisoObraWeb <> 0 then
  begin
    Verificar((fraTipoFet.Codigo <> 'CO') and (fraTipoFet.Codigo <> 'ET'),fraTipoFet,'Debe ser CO o ET para poder cargar el aviso de obra.');
  end;
  tsAnexos.ActivePageIndex := 0;
  if not fraEmpresa.edContrato.ReadOnly then
  begin
      Screen.Cursor := crHourGlass;
      if (trim(edCPA.Text) = '') then
        InvalidMsg(edCPA, 'El establecimiento no tiene CPA y no ser� exportado a la SRT.', 'Validaci�n CPA', MB_ICONWARNING);
      LoadData;
      btnRefrescarVisitasClick(Sender);

      Screen.Cursor := crDefault;

      lblModoConsulta.Visible := fraOperativo.Codigo <> ValorSql ('SELECT art.hys.get_operativovigente_empresa (' +
                                                                  SQLValue (fraEmpresa.CUIT) + ', SYSDATE) FROM DUAL');
      btnGuardar.Enabled := btnGuardar.Enabled and not lblModoConsulta.Visible;
      btnExportado.Enabled := btnGuardar.Enabled;
      tbCargaDiferida.Visible := lblModoConsulta.Visible;
      //tbAfiliaciones.Enabled := not btnGuardar.Enabled;
      frmObras.Modificado := False;
      if tbCargaDiferida.Visible then
        tbCargaDiferida.Hint := 'Habilitar carga ' + #13 + 'del operativo no actual (F8)';
  end;
  edSubtipo.Text := ValorSql ('SELECT st_descripcion ' +
                              '  FROM hys.hco_cuitoperativo, hys.hst_subtipo ' +
                              ' WHERE st_id(+) = co_idsubtipo ' +
                              '   AND co_cuit(+) = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                              '   AND co_tipo(+) = ' + SqlValue (fraTipoFet.Value) +
                              '   AND co_operativo(+) = ' + SqlValue (fraOperativo.Codigo) +
                              '   AND co_rigedesde(+) <= SYSDATE ' +
                              '   AND (   co_rigehasta >= SYSDATE ' +
                              '        OR co_rigehasta IS NULL) ');
  if (fraTipoFet.Value = 'CO') and ExisteSql(
    'SELECT 1 '+
    '  FROM afi.aes_establecimiento '+
    ' WHERE es_contrato = '+SqlValue(fraEmpresa.Contrato)+
    '   AND es_nroestableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '   AND es_eventual = ''N'' ') then
    InfoHint(ScrollBox, 'El establecimiento debe ser eventual para cargar un aviso de obra');

  if (fraTipoFet.Value = 'CO') and ExisteSql(
    'SELECT * '+
    '  FROM hys.hrl_relevriesgolaboral '+
    ' WHERE rl_cargainvalido = ''S'' '+
    '   AND rl_contrato = '+SqlValue(fraEmpresa.Contrato)+
    '   AND rl_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '   AND rl_fechabaja IS NULL ') then
    if MsgBox('Existe un relevamiento 463 invalido:�Desea dar de baja el relevamiento? ',
                                 MB_YESNO + MB_ICONWARNING, 'Relevamiento 463 invalido') = ID_YES then
    begin
      EjecutarSql(
        ' UPDATE hys.hrl_relevriesgolaboral'+
        '    SET RL_FECHABAJA = sysdate, '+
        '        RL_USUBAJA = '+SqlValue(dbLogin.LoginName)+ 
        ' WHERE rl_cargainvalido = ''S'' '+
        '   AND rl_contrato = '+SqlValue(fraEmpresa.Contrato)+
        '   AND rl_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
        '   AND rl_fechabaja IS NULL ');
    end;

end;

procedure TfrmFet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_f5: btnBuscarClick(Self);
    vk_f6: tbEstablecimientosClick(Self);
    vk_f7: tbAfiliacionesClick(Self);
    vk_f8: tbCargaDiferidaClick(Self);
    vk_f9: tbCargaRelevPreventorClick(Self);
    Ord('G'),
    Ord('g'): if (ssCtrl in Shift) then
                btnGuardarClick(self);
    Ord('l'),
    Ord('L'): if (ssCtrl in Shift) then
                btnLimpiarClick(self);
    Ord('f'),
    Ord('F'): if (ssCtrl in Shift) then
                JvgGroupBox1.Collapsed := not JvgGroupBox1.Collapsed;
  end;
end;

function TfrmFet.VerificarRecomendacionesVencidas: boolean;
var
   Qry: TSDQuery;
   RecomVencidas: String;
begin
  RecomVencidas := '';

  //if FFrmPRS.pcTipoPRS.ActivePageIndex = 0 then
    Qry := GetQuery(
    ' SELECT   RE_SEGUIMIENTO, RE_RECOMENDACION '+
    '   FROM art.pre_recomendaciones '+
    '  WHERE re_fechabaja IS NULL '+
    '    AND re_seguimiento < art.actualdate '+
    '    AND NOT EXISTS ( '+
    '        SELECT 1 '+
    '          FROM art.prv_recvisitas '+
    '         WHERE rv_fechabaja IS NULL '+
    '           AND rv_cuit = re_cuit '+
    '           AND rv_estableci = re_estableci '+
    '           AND rv_recomendacion = re_recomendacion '+
    '           AND (   (rv_fecha >= re_cumplimiento) '+
    '                OR     (rv_fecha < re_cumplimiento) '+
    '                   AND (rv_tipo_visita IN (''S'', ''V'')) '+
    '               ) '+
    '           AND rv_tipo = re_tipo '+
    '           AND rv_operativo = pre_recomendaciones.re_operativo) '+
    '    AND re_cuit = ''' + fraEmpresa.mskCUIT.Text +  '''' +
    '    AND re_estableci = ' + SqlInt( fraEstableciBusq.edCodigo.Value ) + ' ' +
    '    AND re_tipo = ''' + fraTipoFet.Value + ''' ' +
    '    AND re_operativo = ''' + fraOperativo.Codigo + ''''+
    '    AND re_fechabaja IS NULL ');

  {  'SELECT RE_SEGUIMIENTO, RE_RECOMENDACION ' +
                    'FROM PRE_RECOMENDACIONES ' +
                    'WHERE RE_CUIT = ''' + fraEmpresa.mskCUIT.Text +  '''' +
                    'AND RE_ESTABLECI = ' + SqlInt( fraEstableciBusq.edCodigo.Value ) + ' ' +
                    'AND RE_TIPO = ''' + fraTipoFet.Value + ''' ' +
                    'AND RE_OPERATIVO = ''' + fraOperativo.Codigo + ''' AND RE_FECHABAJA IS NULL AND RE_SEGUIMIENTO < ACTUALDATE ' +
                    'AND NOT EXISTS (SELECT 1 ' +
                                    'FROM PRV_RECVISITAS ' +
                                    'WHERE RV_FECHABAJA IS NULL AND RV_CUIT = RE_CUIT ' +
                                    'AND RV_ESTABLECI = RE_ESTABLECI AND RV_RECOMENDACION = RE_RECOMENDACION ' +
                                    'AND RV_FECHA >= RE_CUMPLIMIENTO ' +
                                    'AND RV_TIPO = RE_TIPO AND RV_OPERATIVO = PRE_RECOMENDACIONES.RE_OPERATIVO) ');}
 { else  Qry := GetQuery('SELECT RE_SEGUIMIENTO, RE_RECOMENDACION ' +
                  'FROM PPI_PRS_IDENTICOS, PRE_RECOMENDACIONES ' +
                  'WHERE PI_CUIT = ''' + fraEmpresa.mskCUIT.Text +  '''' +
                  'AND PI_ESTABLECI = ' + SqlInt( fraEstableciBusq.edCodigo.Value ) + ' ' +
                  'AND PI_TIPO = ''' + fraTipoFet.Value + ''' ' +
                  'AND PI_OPERATIVO = ''' + fraOperativo.Codigo + ''' AND PI_FECHABAJA IS NULL AND RE_FECHABAJA IS NULL AND RE_SEGUIMIENTO < ACTUALDATE ' +
                  'AND PI_CUIT = RE_CUIT AND PI_IDENTICO = RE_ESTABLECI AND PI_OPERATIVO = RE_OPERATIVO  ' +
                  'AND NOT EXISTS (SELECT 1 ' +
                                  'FROM PRV_RECVISITAS ' +
                                  'WHERE RV_FECHABAJA IS NULL AND RV_CUIT = PI_CUIT ' +
                                  'AND RV_ESTABLECI = PI_ESTABLECI AND RV_RECOMENDACION = RE_RECOMENDACION ' +
                                  'AND RV_FECHA >= RE_CUMPLIMIENTO ' +
                                  'AND RV_TIPO = PI_TIPO AND RV_OPERATIVO = PI_OPERATIVO) ');
 }

  try
    while not Qry.Eof do
    begin
        RecomVencidas := RecomVencidas + 'Recomendaci�n: ' + Qry.FieldByName('RE_RECOMENDACION').AsString + ' - Vencimiento: '
                                + FormatDateTime('dd/mm/yyyy', Qry.FieldByName('RE_SEGUIMIENTO').AsDateTime)
                                       + #13#10;
        Qry.Next;
    end;
  finally
    Qry.Free;
  end;

  result := (trim(RecomVencidas) = '') or
            (MsgBox('Las siguientes recomendaciones est�n vencidas: '+ #13#10  + RecomVencidas + #13#10 + '�Desea guardar los datos de todas formas? ',
                                 MB_YESNO + MB_ICONWARNING, 'Recomendaciones Vencidas') = ID_YES);

end;

procedure TfrmFet.Guardar;
var
  proxFechaPRS : TDate;
  cantRecomen : Integer;
  fechaMaxPRS : TDate;
  i : Integer;
begin
   Try
      BeginTrans(true);
      Save_Anexo1;
      Save_Anexo2;
      FFrmPRS.Save ;
      if (fraTipoFet.Value = 'CO') or (fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP') then
      begin
        frmObras.Save;
        if FIDAvisoObraWeb > 0 then
          FGuardadoAOWeb := True;
      end;

      frmDenInc.Save;
      Anexo1_ClearModified;
      saveHepEstabPrev(fraEmpresa.mskCUIT.Text,fraEstableciBusq.edCodigo.Value);
      if (edPreventor.Text = '') and (MsgBox('�Desea Modificar el preventor asignado?',  MB_ICONQUESTION + MB_YESNO, 'Modificar Preventor') = IDYES) then
      begin
        frmObras.ActivarPreventor;
        ExcavacionDemolicionMail;
      end
      else begin
        if frmObras.Modificado or frmObras.ModifiedCronograma then
          ExcavacionDemolicionMail;
      end;

      frmObras.SaveProgSeg;
      frmObras.SaveRechazo;

      if (fraTipoFet.Value = 'ET') or (fraTipoFet.Value = 'EP') then
      begin
        FFrmPRS.GuardarNivelFirma;
        FFrmPAL.GuardarNivelFirma;
      end;

      if (fraTipoFet.Value = 'ET') then
      begin
        cantRecomen := ValorSql(' SELECT count(*) '+
                                '   FROM hys.hpv_planvisitas '+
                                '  WHERE pv_cuit = '+SqlValue(fraEmpresa.CUIT)+
                                '    AND pv_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
                                '    AND pv_tipo = '+SqlValue(fraTipoFet.Codigo)+
                                '    AND pv_operativo = '+SqlValue(fraOperativo.Codigo)+
                                '   AND pv_fechabaja is null ');

        if (FFrmPRS.FCantRecIniciales = 0) and (cantRecomen > 0) and (cantRecomen < 4) then
        begin
          if (MsgBox('�Desea generar las recomendaciones faltantes?',  MB_ICONQUESTION + MB_YESNO, 'Guardar Datos') = IDYES) then
          begin
            proxFechaPRS := ValorSqlDateTime(' SELECT LAST_DAY(ADD_MONTHS(MAX(pv_fecha), 1)) '+
                                   '   FROM hys.hpv_planvisitas '+
                                   '  WHERE pv_cuit = '+SqlValue(fraEmpresa.CUIT)+
                                   '    AND pv_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
                                   '    AND pv_tipo = '+SqlValue(fraTipoFet.Codigo)+
                                   '    AND pv_operativo = '+SqlValue(fraOperativo.Codigo));

            if proxFechaPRS < (DBDate+4) then
            begin
              proxFechaPRS := ValorSqlDateTime(' SELECT LAST_DAY(ADD_MONTHS(MAX(art.actualdate), 1)) '+
                                       '   FROM dual ');
            end;
            fechaMaxPRS := ValorSqlDateTime(' SELECT LAST_DAY(ADD_MONTHS(MAX('+SqlDate(proxFechaPRS)+'),'+
                                                                              SqlValue((4-cantRecomen)-1)+')) '+
                                           '   FROM dual ');
            if ExisteSql(
              ' SELECT   1 '+
              '   FROM hys.hco_cuitoperativo '+
              '  WHERE co_cuit = '+SqlValue(fraEmpresa.CUIT)+
              '    AND co_operativo = '+SqlValue(fraOperativo.Codigo)+
              '    AND co_tipo = '+SqlValue(fraTipoFet.Codigo)+
              '    AND ADD_MONTHS(co_rigedesde,12) <= '+SqlDate(fechaMaxPRS))then
            begin
              InfoHint(btnGuardar,'No se puede calcular automatico supera la vigencia del operativo.');
              Exit;
            end;
            i := 0;

            while(i < (4-cantRecomen)) do
            begin
              GuardarVisitaEnPlan(fraEmpresa.CUIT,StrToInt(fraEstableciBusq.edCodigo.Text),fraTipoFet.Codigo,fraOperativo.Codigo,
                                            proxFechaPRS,false,
                                            btnGuardar);
              i := i+1;
              proxFechaPRS := ValorSqlDateTime(' SELECT LAST_DAY(ADD_MONTHS(MAX('+SqlDate(proxFechaPRS)+'), 1)) '+
                                       '   FROM dual ');
            end;
          end;
        end;
      end;

      EjecutarStoreST(' art.hys.do_actualizarameritaprspal('+SqlValue(fraEmpresa.CUIT)+','+SqlValue(fraEstableciBusq.edCodigo.Value)+');');

      CommitTrans;
      if frmRiesgos.FGuardoInvalido then
        with TrptNotaDenunciaRiesgoInvalido.Create(Self) do
        try
          Load(fraEmpresa.CUIT);
        finally
          Free;
        end;
      frmRiesgos.FGuardoInvalido := false;

      if frmObras.Modificado or frmObras.ModifiedCronograma then
        frmObras.ExportarResolucionPDFResolucion;

      if frmObras.ModifiedProgSeg then
        frmObras.ExportarProgramaSeguridadAprobado;

      if frmObras.ModifiedRechazoAO then
        frmObras.ExportarAvisoObraRechazo;

      if frmObras.ModifiedRechazoPS then
        frmObras.ExportarProgramaSeguridadRechazo;

      frmObras.Load( fraEmpresa.mskCuit.Text, fraEstableciBusq.edCodigo.Value, fraTipoFet.Value, fraOperativo.Codigo );
      //frmObras.LoadRechazo;

      frmObras.Modificado := False;
      frmObras.ModifiedCronograma := False;
      frmObras.PSModificado := False;
      frmObras.ModifiedRechazoAO := False;
      frmObras.ModifiedRechazoPS := False;

      frmObras.SetDomModificado(False);
      fraEmpresa.cmbRSocial.SetFocus ;
      btnGuardar.Tag := btnGuardar.Tag + 1;
      tbCargaDiferida.Visible := false;

      //LoadData;
      //VCLExtra.LockControls([fraEstableciBusq, fraEmpresa, fraTipoFet, fraOperativo], false);
   except
      on E: Exception do begin
         Rollback;
         ErrorMsg(E, 'Error al guardar los datos');
         Abort;
      end;
   end;
end;

procedure TfrmFet.ExcavacionDemolicionMail;
var
  Actividad : String;
  prevcor : String;
  demolicion, Excavacion, Direccion, strActividades : String;
  Body : String;
  mailDestino : String;
  sExtra : String;
  i: integer;
  fechainicio: TDateTime;
  fechafin: TDateTime;
  sAsunto : String;
begin

  with GetQuery(
    ' SELECT prev.it_nombre preventor, prev.it_email prevmail, '+
    '        cor.it_nombre cornombre, cor.it_email cormail '+
    '   FROM art.pit_firmantes prev, art.pit_firmantes cor '+
    '  WHERE prev.it_codigo = art.hys.get_preventor_estab('+SqlValue(fraEmpresa.CUIT)+','+
      SqlValue(fraEstableciBusq.edCodigo.Text)+',SYSDATE) '+
    '    AND cor.it_id = prev.it_idsupervisor ') do
  try
    if (fieldByName('prevmail').AsString <> '') or (fieldByName('cormail').AsString <> '') then
      mailDestino := fieldByName('prevmail').AsString+';'+fieldByName('cormail').AsString
    else
      mailDestino := '';
    prevcor := fieldByName('preventor').AsString+'/'+fieldByName('cornombre').AsString;
  finally
    Free;
  end;

  if (mailDestino <> '') and frmObras.lbDenunciaSrt.Visible then
  begin
    Actividad := frmObras.chgObraActividad.Value;
    Excavacion := '';
    demolicion := '';
    if Actividad[1] = 'S' then
    begin
      sExtra := '';
      if frmObras.cbSubmuraciones.Checked then
        sExtra := sExtra +' - SUBMURACION';
      if frmObras.cbSubsuelos.Checked then
        sExtra := sExtra +' - SUBSUELO';
      Excavacion := 'Excavaci�n: '+frmObras.edFechaExcavacion.Text+ ' hasta '+ frmObras.edFechaExcavacionHasta.Text+sExtra+#13#10;
    end;

    strActividades := '';
    for i:=1 to frmObras.chgObraActividad.Items.Count do
      if frmObras.chgObraActividad.Value[i] = 'S' then
        strActividades := strActividades + '      -'  + frmObras.chgObraActividad.Items[i-1] + #13#10;
    if strActividades <> '' then
      strActividades := 'Tareas de Riesgo:' + #13#10 + strActividades;
    strActividades := StringReplace(strActividades, '?', '', [rfReplaceAll]);
    strActividades := StringReplace(strActividades, '�', '', [rfReplaceAll]);

    if Actividad[2] = 'S' then
    begin
      sExtra := '';
      if frmObras.cbTotal.Checked then
        sExtra := sExtra +' - TOTAL';
      if frmObras.cbParcial.Checked then
        sExtra := sExtra +' - PARCIAL';
      demolicion := 'Demolici�n: '+frmObras.edFechaDemolicion.Text + ' hasta '+frmObras.edFechaDemolicionHasta.Text+sExtra+#13#10;
    end;

    Direccion := ValorSql('SELECT art.afi.armar_domicilio(es_calle, es_numero, es_piso,  '+
                          '                               es_departamento, es_localidad) '+
                          '  FROM afi.aes_establecimiento '+
                          ' WHERE es_contrato = '+IntToStr(fraEmpresa.Contrato)+
                          '   AND es_nroestableci = '+SqlValue(fraEstableciBusq.edCodigo.Text));

    if (Excavacion > '') or (demolicion > '') then
    begin
      Body :=
      'Sr. Preventor/Coordinador:'+#13#10+
      '                 Por el presente se cumple en avisar que existen obras las cuales '+
      'poseen tareas de "EXCAVACION" y/o "DEMOLICION" que deber�n ser visitadas dentro '+
      'de los siete (7) d�as corridos y/o a las cuarenta y ocho (48) horas, respectivamente, '+
      'de iniciados los trabajas. '+#13#10+
      'A partir del d�a de la fecha ya pueden ser contactadas, las razones sociales, para '+
      'coordinar la visita al establecimiento en cuesti�n. '+#13#10+#13#10+
      'Datos de las tareas: '+#13#10+
      fraEmpresa.CUIT+'-'+ValorSql('SELECT em_nombre FROM afi.aem_empresa WHERE em_cuit ='+SqlValue(fraEmpresa.CUIT))+#13#10+
      'Establecimiento: '+fraEstableciBusq.edCodigo.Text+#13#10+
      'Direcci�n: '+Direccion+#13#10+
      Excavacion+
      demolicion+
      'Primer visita: '+  ValorSql('SELECT MIN(fv_fecha) FROM hys.hfv_fechasvisitas '+
                                   ' WHERE fv_cuit = ' + SqlValue(fraEmpresa.CUIT) + ' AND fv_estableci = ' + SqlValue(fraEstableciBusq.edCodigo.Text))+#13#10+
      strActividades +
      'Obs: '+frmObras.edObraObservaciones.Text+#13#10+#13#10+' Atte.';
    end
    else begin
      if frmObras.edObraFechaReinicio.Date > 0 then
        fechainicio := frmObras.edObraFechaReinicio.Date
      else
        fechainicio := frmObras.edObraFechaDeclaracion.Date;

      if frmObras.edFechaExtension.Date  > 0 then
        fechafin := frmObras.edFechaExtension.Date
      else begin
        if frmObras.edObraFechaSusp.Date  > 0 then
          fechafin := frmObras.edObraFechaSusp.Date
        else
          fechafin := frmObras.edObraFechaFin.Date;
      end;

      Body :=
      'Sr. Preventor/Coordinador:'+#13#10+
      '         Por el presente se cumple en avisar que existen obras las cuales poseen tareas consideradas ' +
      'de RIESGO ALTO, y que por lo tanto deber�n ser visitadas ateni�ndose al cronograma designado.' + #13#10 +
      'A partir del d�a de la fecha ya pueden ser contactadas, las razones sociales, para coordinar ' +
      'la visita al establecimiento en cuesti�n. '+#13#10+#13#10+
      'Datos de las tareas: '+#13#10+
      fraEmpresa.CUIT+'-'+ValorSql('SELECT em_nombre FROM afi.aem_empresa WHERE em_cuit ='+SqlValue(fraEmpresa.CUIT))+#13#10+
      'Establecimiento: '+fraEstableciBusq.edCodigo.Text+#13#10+
      'Direcci�n: '+Direccion+#13#10+
      'Inicio: ' + FormatDateTime('dd/mm/yyyy', fechainicio) +
      '          Fin: '  + FormatDateTime('dd/mm/yyyy', fechafin) + #13#10 +
      strActividades +
      'Obs: '+frmObras.edObraObservaciones.Text+#13#10+#13#10+' Atte.';
    end;

    if (Excavacion > '') and  (demolicion > '') then
     sAsunto := 'Visita Obra - Excavaci�n/Demolici�n - con RIESGO ALTO'
    else
    begin
      if (Excavacion > '') then
        sAsunto := 'Visita Obra - Excavaci�n - con RIESGO ALTO'
      else
      begin
        if (demolicion > '') then
          sAsunto := 'Visita Obra - Demolici�n - con RIESGO ALTO'
        else
          sAsunto := 'Visita Obra con RIESGO ALTO';
      end;
    end;


    EnviarMailBD(mailDestino,sAsunto,[oAutoFirma], Body, nil,
                             0, tcDefault, False);
  end;
end;


procedure TfrmFet.rbGroupItem4Enter(Sender: TObject);
begin
    if rbGroupItem4.Focused then rbGroupItem4.ItemIndex := 0;
end;

procedure TfrmFet.FormDestroy(Sender: TObject);
begin
  RollBackUpdates;
end;

procedure TfrmFet.tbAgregarEmpClick(Sender: TObject);
begin
  mskCUITContrante.Clear;
  edNombreContratante.Clear;
  mskCUITContrante.enabled := true;
  fpEmpresasContratantes.ShowModal;
end;

procedure TfrmFet.btnDetDenAceptarClick(Sender: TObject);
var
    Sql : TSql;
begin
     if not IsCuit(mskCUITContrante.text) Then
        InvalidMsg(mskCUITContrante, 'Debe ingresar un CUIT v�lido.')

     else if mskCUITContrante.Enabled and ExisteSql('SELECT 1 ' +
                       'FROM hys.hec_empresacontratante ' +
                       'WHERE EC_CUIT = ' +  SqlValue(fraEmpresa.mskCUIT.Text) +
                       ' AND EC_TIPO = ' + SqlValue(fraTipoFet.Value) +
                       ' AND EC_OPERATIVO = ' + SqlValue(fraOperativo.Codigo) +
                       ' AND EC_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text) +
                       ' AND EC_CUITCONTRATANTE = ' + SqlValue(mskCUITContrante.Text)) then
        InvalidMsg(mskCUITContrante, 'El CUIT ya fue cargado.')

     else if trim(edNombreContratante.Text) = '' Then
        InvalidMsg(edNombreContratante, 'Debe ingresar el nombre de la empresa.')

     else begin
        Sql := TSql.Create('hys.hec_empresacontratante');
        try

          if mskCUITContrante.Enabled then
              Sql.SqlType := stInsert
          else Sql.SqlType := stUpdate;

          Sql.PrimaryKey.Add('EC_CUIT', fraEmpresa.mskCUIT.Text);
          Sql.PrimaryKey.Add('EC_ESTABLECI', fraEstableciBusq.edCodigo.Text);
          Sql.PrimaryKey.Add('EC_TIPO', fraTipoFet.Value);
          Sql.PrimaryKey.Add('EC_OPERATIVO', fraOperativo.Codigo);
          Sql.PrimaryKey.Add('EC_CUITCONTRATANTE', mskCUITContrante.Text);
          Sql.Fields.Add('EC_NOMBRE', edNombreContratante.Text);
          Sql.Fields.Add( 'EC_FECHAALTA', SQL_DATETIME, False);
          Sql.Fields.Add( 'EC_USUALTA', frmPrincipal.DBLogin.LoginName );
          Sql.Fields.Add( 'EC_FECHABAJA', exNull);
          Sql.Fields.Add( 'EC_USUBAJA', exNull);

          EjecutarSqlST( Sql.Sql );
          sdqEmpleadoresContratantes.Refresh ;
//          sdqDenunciasAfterScroll( sdqDenuncias );
          fpEmpresasContratantes.ModalResult := mrOk;
        finally
          Sql.Free;
        end;
     end;
end;

procedure TfrmFet.Load_EmpresasContratantes;
begin
   sdqEmpleadoresContratantes.Close;
   sdqEmpleadoresContratantes.ParamByName('pCuit').AsString       := fraEmpresa.mskCUIT.Text ;
   sdqEmpleadoresContratantes.ParamByName('pEstableci').AsString := fraEstableciBusq.edCodigo.Text;
   sdqEmpleadoresContratantes.ParamByName('pTipo').AsString       := fraTipoFet.Value;
   sdqEmpleadoresContratantes.ParamByName('pOperativo').AsString  := fraOperativo.Codigo;
   sdqEmpleadoresContratantes.Open;
end;

procedure TfrmFet.tbEmpQuitarClick(Sender: TObject);
var
    Sql : TSql;
begin
   if (not sdqEmpleadoresContratantes.IsEmpty) and
      (MsgBox('�Desea eliminar el registro seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then begin

      Sql := TSql.Create('hys.hec_empresacontratante');
      try
        Sql.PrimaryKey.Add('EC_CUIT', sdqEmpleadoresContratantes.FieldByName('EC_CUIT').AsString);
        Sql.PrimaryKey.Add('EC_ESTABLECI', sdqEmpleadoresContratantes.FieldByName('EC_ESTABLECI').AsString);
        Sql.PrimaryKey.Add('EC_TIPO', sdqEmpleadoresContratantes.FieldByName('EC_TIPO').AsString);
        Sql.PrimaryKey.Add('EC_OPERATIVO', sdqEmpleadoresContratantes.FieldByName('EC_OPERATIVO').AsString);
        Sql.PrimaryKey.Add('EC_CUITCONTRATANTE', sdqEmpleadoresContratantes.FieldByName('EC_CUITCONTRATANTE').AsString);
        Sql.Fields.Add('EC_FECHABAJA', SQL_DATETIME, False);
        Sql.Fields.Add('EC_USUBAJA', frmPrincipal.DBLogin.LoginName );

        EjecutarSqlST( Sql.UpdateSql );
        sdqEmpleadoresContratantes.Refresh ;
      finally
        Sql.Free;
      end;
   end;
end;

procedure TfrmFet.dbgEmpresasContratantesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not sdqEmpleadoresContratantes.FieldByName('EC_FECHABAJA').IsNull Then
     AFont.Color := clRed;
end;

procedure TfrmFet.tbModificarEmpClick(Sender: TObject);
begin
  if (not sdqEmpleadoresContratantes.IsEmpty) then
  begin
      mskCUITContrante.Text := sdqEmpleadoresContratantes.FieldByName('EC_CUITCONTRATANTE').AsString;
      edNombreContratante.Text := sdqEmpleadoresContratantes.FieldByName('EC_NOMBRE').AsString;
      mskCUITContrante.enabled := false;
      fpEmpresasContratantes.ShowModal;
  end;
end;

(*
procedure TfrmFet.ActualizarTipoEmpresa;
var
    aTipo: string;
    esEventual: boolean;
begin

    esEventual := ValorSql(' SELECT NVL(ES_EVENTUAL, ''N'') ' +
                           ' FROM AFI.AES_ESTABLECIMIENTO ' +
                           ' WHERE ES_CONTRATO = ART.AFILIACION.get_contratovigente(' + SqlValue(fraEmpresa.mskCUIT.Text) + ' ,SYSDATE) ' +
                           ' AND ES_NROESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text), 'N') = 'S';

    if (fraTipoFet.Value = 'EP') or (fraTipoFet.Value = 'ET') then
    begin
        if ExisteSql(' SELECT 1 ' +
                     ' FROM HYS.HEP_ESTABPORPREVENTOR ' +
                     ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                     ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text)) then

            EjecutarSqlST('UPDATE HYS.HEP_ESTABPORPREVENTOR ' +
                          ' SET EP_TIPO = ' + SqlValue(fraTipoFet.Value) +  ', ' +
                          ' EP_ACTIVIDAD = ' + iif(esEventual, SqlValue('C'), SqlValue(GetActividadEstablecimiento(fraEmpresa.mskCUIT.Text, fraEstableciBusq.edCodigo.Text))) + ', ' +
                          ' EP_USUMODIF = ' + SqlValue(dbLogin.LoginName) +  ', ' +
                          ' EP_FECHAMODIF = SYSDATE, ' +
                          ' EP_USUBAJA = NULL, ' +
                          ' EP_FECHABAJA = NULL ' +
                          ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                          ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text))
        else
            EjecutarSqlST(' INSERT INTO HYS.HEP_ESTABPORPREVENTOR(EP_CUIT, EP_ESTABLECI,  ' +
                          ' EP_TIPO, EP_ACTIVIDAD, EP_FECHAALTA, EP_USUALTA) VALUES( ' +
                          SqlValue(fraEmpresa.mskCUIT.Text) + ', ' + SqlValue(fraEstableciBusq.edCodigo.Text) + ', ' +
                          SqlValue(fraTipoFet.Value) +  ', ' + iif(esEventual, SqlValue('C'), SqlValue(GetActividadEstablecimiento(fraEmpresa.mskCUIT.Text, fraEstableciBusq.edCodigo.Text))) +
                          ', sysdate, ' + SqlValue(dbLogin.LoginName) + ')');

    end
    else if (fraTipoFet.Value = 'CO') then
    begin

        aTipo := ValorSql(' SELECT EP_TIPO ' +
                          ' FROM HYS.HEP_ESTABPORPREVENTOR ' +
                          ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                          ' AND ((EP_TIPO = ''EP'') OR (EP_TIPO = ''ET'')) AND EP_FECHABAJA IS NULL AND ROWNUM = 1');


        if ExisteSql(' SELECT 1 ' +
                     ' FROM HYS.HEP_ESTABPORPREVENTOR ' +
                     ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                     ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text)) then

            EjecutarSqlST('UPDATE HYS.HEP_ESTABPORPREVENTOR ' +
                          ' SET EP_TIPO = ' + SqlValue(String(iif(aTipo = '', fraTipoFet.Value, aTipo)))  +  ', ' +
                          ' EP_ACTIVIDAD = ''C'', ' +
                          ' EP_USUMODIF = ' + SqlValue(dbLogin.LoginName) +  ', ' +
                          ' EP_FECHAMODIF = SYSDATE, ' +
                          ' EP_USUBAJA = NULL, ' +
                          ' EP_FECHABAJA = NULL ' +
                          ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                          ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text))
        else
            EjecutarSqlST(' INSERT INTO HYS.HEP_ESTABPORPREVENTOR(EP_CUIT, EP_ESTABLECI,  ' +
                          ' EP_TIPO, EP_ACTIVIDAD, EP_FECHAALTA, EP_USUALTA) VALUES( ' +
                          SqlValue(fraEmpresa.mskCUIT.Text) + ', ' + SqlValue(fraEstableciBusq.edCodigo.Text) + ', ' +
                          SqlValue(String(iif(aTipo = '', fraTipoFet.Value, aTipo))) +  ', ' + ' ''C'' ' + ', sysdate, ' + SqlValue(dbLogin.LoginName) + ')');
    end
    else if (fraTipoFet.Value = 'GB') then
    begin

        if ExisteSql(' SELECT 1 ' +
                     ' FROM HYS.HEP_ESTABPORPREVENTOR ' +
                     ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                     ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text)) then

            EjecutarSqlST('UPDATE HYS.HEP_ESTABPORPREVENTOR ' +
                          ' SET EP_TIPO = ' + SqlValue(fraTipoFet.Value)  +  ', ' +
                          ' EP_ACTIVIDAD = ' + iif(esEventual, SqlValue('C'), SqlValue(GetActividadEstablecimiento(fraEmpresa.mskCUIT.Text, fraEstableciBusq.edCodigo.Text))) + ', ' +
                          ' EP_USUMODIF = ' + SqlValue(dbLogin.LoginName) +  ', ' +
                          ' EP_FECHAMODIF = SYSDATE, ' +
                          ' EP_USUBAJA = NULL, ' +
                          ' EP_FECHABAJA = NULL ' +
                          ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                          ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Text))
        else
            EjecutarSqlST(' INSERT INTO HYS.HEP_ESTABPORPREVENTOR(EP_CUIT, EP_ESTABLECI,  ' +
                          ' EP_TIPO, EP_ACTIVIDAD, EP_FECHAALTA, EP_USUALTA) VALUES( ' +
                          SqlValue(fraEmpresa.mskCUIT.Text) + ', ' + SqlValue(fraEstableciBusq.edCodigo.Text) + ', ' +
                          SqlValue(fraTipoFet.Value) +  ', ' + iif(esEventual, SqlValue('C'), SqlValue(GetActividadEstablecimiento(fraEmpresa.mskCUIT.Text, fraEstableciBusq.edCodigo.Text))) +
                          ', sysdate, ' + SqlValue(dbLogin.LoginName) + ')');
    end;
end;
*)

function TfrmFet.GetActividadEstablecimiento(aCuit: string;
  aEstablecimiento: string): string;
begin
    result := ValorSql('select art.hys.GetActividadEstablecimiento(' + SqlValue(aCuit) + ', '  + SqlValue(aEstablecimiento) + ') from dual');
end;
(*var
    Ciiuviejo: String;
begin

    if ExisteSql('SELECT AO_OPERATIVO FROM PAO_AVISOOBRA WHERE AO_CUIT = ' +
                 SqlValue(aCuit) + ' AND AO_ESTABLECI = ' +
                 SqlValue(aEstablecimiento)) then
        Result := 'C'
    else begin
      Ciiuviejo := ValorSql(' SELECT AC_RELACION ' +
                            ' FROM AFI.AES_ESTABLECIMIENTO, COMUNES.CAC_ACTIVIDAD ' +
                            ' WHERE ES_CONTRATO = ART.AFILIACION.get_ultcontrato(' + SqlValue(aCuit) + ') ' +
                            ' AND ES_NROESTABLECI = ' + SqlValue(aEstablecimiento) +
                            ' AND ES_IDACTIVIDAD = AC_ID');

      if (Ciiuviejo <> '') then
      begin
          result := ValorSql(' SELECT TC_ACTIVIDAD ' +
                             ' FROM HYS.ATC_ACTIVIDADCIIU ' +
                             ' WHERE TC_PRIMERDIGITOCIIU = ' + SqlValue(Ciiuviejo[1]));
      end
      else begin
          Ciiuviejo := ValorSql(' SELECT AC_RELACION ' +
                                ' FROM AFI.ACO_CONTRATO, COMUNES.CAC_ACTIVIDAD ' +
                                ' WHERE CO_CONTRATO = ART.AFILIACION.get_ultcontrato(' + SqlValue(aCuit) + ') ' +
                                ' AND CO_IDACTIVIDAD = AC_ID');

          result := ValorSql(' SELECT TC_ACTIVIDAD ' +
                             ' FROM HYS.ATC_ACTIVIDADCIIU ' +
                             ' WHERE TC_PRIMERDIGITOCIIU = ' + SqlValue(Ciiuviejo[1]));
      end;
    end;
end;
*)

procedure TfrmFet.btnRefrescarVisitasClick(Sender: TObject);
begin
  //Alarma.Desactivar;
  sdqMotivos.Close;

  sdqVisitas.SQL.Clear;
  sdqVisitas.SQL.Add ('SELECT rv1.rv_id, rv1.rv_idvisitaasociada, rv2.rv_estableci estvisitaasoc, ' +
                      '       rv1.rv_fecha, rv1.rv_firmante, it_nombre, rv1.rv_fechabaja, rv1.rv_fechainicioviaticos, rv1.rv_fechafinviaticos,' +
                      '       rv1.rv_prestador, ej_descripcion, rv1.rv_descripcion, rv1.rv_horariodesde, ' +
                      '       rv1.rv_horariohasta, rv1.rv_duracionpermanencia, rv1.rv_operativo, rv1.rv_fechaalta, rv1.rv_usualta, ' +
                      '       rv1.rv_tipo, rv1.rv_estableci, rv1.rv_obsinterna, rv1.rv_fechanotificacion, rv1.rv_fechaViaticos, ' +
                      '       art.archivo.get_fechadoclote_visitahys(art.afiliacion.get_contratovigente(rv1.rv_cuit,rv1.rv_fecha), rv1.rv_estableci, ' +
                             SqlValue(CODDOC_CONSTANCIA) + ', rv1.rv_fecha) fechadig, rv1.rv_traspaso, rv1.rv_usuauditado, rv1.rv_fechaauditado ' +
                      '  FROM art.mej_empprest, art.pit_firmantes, art.prv_resvisitas rv1, ' +
                      '       hys.hep_estabporpreventor, art.prv_resvisitas rv2 ' +
                      ' WHERE it_codigo(+) = rv1.rv_firmante ' +
                      '   AND ej_codigo(+) = rv1.rv_prestador ' +
                      '   AND ep_cuit(+) = rv1.rv_cuit ' +
                      '   AND ep_estableci(+) = rv1.rv_estableci ' +
                      '   AND rv2.rv_id(+) = rv1.rv_idvisitaasociada ' +
                      '   AND ep_tipo(+) = ' + SqlValue(fraTipoFet.Codigo) +
                      '   AND rv1.rv_cuit =  ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                      '   AND rv1.rv_estableci =  ' + SqlValue (fraEstableciBusq.edCodigo.Value));

  if (not chkTodosOps.Checked) and fraOperativo.IsSelected then
    sdqVisitas.SQL.Add ('   AND rv1.rv_operativo = ' + SqlValue(fraOperativo.Codigo));

  sdqVisitas.SQL.Add ('ORDER BY rv1.rv_fecha');

  sdqVisitas.Open;
  if not sdqVisitas.IsEmpty then
    sdqMotivos.Open
end;

procedure TfrmFet.CargarMotivos (Bajas: Boolean);
var
  sSql: String;
  sMotivosIn: String;
  CheckAll: boolean;
  i : Integer;
begin
  CheckAll := false;
  i := 0;
  with sdqTiposMotivos do
  begin
    cbMotivos.Clear;
    cbMotivosAsociarVisita.Clear;
    sSql := ' SELECT * FROM art.pmo_motivos WHERE 1=1 ';
    sSql := sSql + (iif (Bajas, '', 'AND mo_fechabaja IS NULL '));
    if (FModoVisita = maAlta) and not chkVerTodas.Checked and (edFechaVisita.Date > 0) then
    begin
      sMotivosIn := ' AND mo_id IN( SELECT tp_idmotivo ' +
                    '                FROM hys.hvp_visitapreventor, hys.htp_tareapreventor ' +
                    '               WHERE vp_id = tp_idvisitapreventor ' +
                    '                 AND vp_fechabaja IS NULL ' +
                    '                 AND tp_fechabaja IS NULL ' +
                    '                 AND trunc(vp_fechavisita) = ' + SqlValue(edFechaVisita.Date) +
                    '                 AND vp_idempresa = ' + SqlValue(fraEmpresa.ID) +
                    '                 AND vp_establecimiento = ' + SqlValue(fraEstableciBusq.edCodigo.Value) + ')';
    end;
    Sql.Clear;
    Sql.Add (sSql +  sMotivosIn + ' ORDER BY mo_descripcion ');
    Open;
    if (FModoVisita = maAlta) and not chkVerTodas.Checked and (edFechaVisita.Date > 0) and not IsEmpty then
        CheckAll := true;

    if (FModoVisita = maAlta) and not chkVerTodas.Checked and (edFechaVisita.Date > 0) and IsEmpty then
    begin
      Close;
      sMotivosIn := ' AND mo_id IN( SELECT tm_idmotivo ' +
                '                   FROM hys.htm_tareamotivo, hys.hts_tareahys ' +
                '                  WHERE ts_idvisitapreventor IS NULL ' +
                '                    AND ts_idproceso = art.hys_plan.get_idproceso(''M'', trunc(' + SqlValue(edFechaVisita.Date) + ', ''MM''), LAST_DAY(' + SqlValue(edFechaVisita.Date) + ')) ' +
                '                    AND ts_idempresa = ' + SqlValue(fraEmpresa.ID) +
                '                    AND ts_estableci = ' + SqlValue(fraEstableciBusq.edCodigo.Value) +
                '                    AND ts_idtarea = tm_idtarea) ';

      Sql.Clear;
      Sql.Add (sSql +  sMotivosIn + ' ORDER BY mo_descripcion ');
      Open;
    end;

    if (FModoVisita = maAlta) and not chkVerTodas.Checked and (edFechaVisita.Date > 0) and IsEmpty then
    begin
      Close;
      sMotivosIn := ' AND NVL(mo_tipo, ' + SqlValue(fraTipoFet.Codigo) + ' ) like ''%' + fraTipoFet.Codigo + '%''';
      Sql.Clear;
      Sql.Add (sSql +  sMotivosIn + ' ORDER BY mo_descripcion ');
      Open;
    end;

    if IsEmpty then
    begin
      Close;
      Sql.Clear;
      Sql.Add (sSql + ' ORDER BY mo_descripcion ');
      Open;
    end;

    while not EoF do
    begin
      {cbMotivos.Items.AddObject(FieldByName('mo_descripcion').AsString +
                                iif (FieldByName('mo_fechabaja').AsString = '', '', ' [DADA DE BAJA]'),
                                TObject(FieldByName('mo_codigo').AsInteger));
      cbMotivosAsociarVisita.Items.AddObject(FieldByName('mo_descripcion').AsString +
                                iif (FieldByName('mo_fechabaja').AsString = '', '', ' [DADA DE BAJA]'),
                                TObject(FieldByName('mo_codigo').AsInteger));}

      cbMotivos.Add(FieldByName('mo_descripcion').AsString +
                                iif (FieldByName('mo_fechabaja').AsString = '', '', ' [DADA DE BAJA]'),
                                FieldByName('mo_codigo').AsString);

      if CheckAll then
      begin
        cbMotivos.Checked[cbMotivos.Items.Count-1] := true;
      end;

      if (FieldByName('mo_codigo').AsString <> '56') and (FieldByName('mo_codigo').AsString <> '57') then
      begin
        cbMotivosAsociarVisita.Add(FieldByName('mo_descripcion').AsString +
                                  iif (FieldByName('mo_fechabaja').AsString = '', '', ' [DADA DE BAJA]'),
                                  FieldByName('mo_codigo').AsString);
        if CheckAll then
          cbMotivosAsociarVisita.Checked[cbMotivos.Items.Count-1] := true;
      end;
      Next
    end;
    while i < cbMotivosAsociarVisita.Items.Count do
      if (not cbMotivosAsociarVisita.Checked[i]) and (Pos('[DADA DE BAJA]', cbMotivosAsociarVisita.Items[i]) > 0) then
      begin
        cbMotivosAsociarVisita.Items.Delete(i);
        cbMotivosAsociarVisita.Values.Delete(i);
      end
      else
        inc(i);
    Close
  end
end;

procedure TfrmFet.btnNuevaVisitaClick(Sender: TObject);
begin
  // Inicializar
  Verificar(edCPA.Text = '', edCPA, 'Debe tener el CPA cargado para cargar una visita.');
  if fraTipoFet.Codigo = 'GB'then
    Verificar(Anexo1_IsEmpty, btnNuevaVisita,'Debe tener Anexo 1');
  FModoVisita := maAlta;
  FIdVisita := -1;

(*
  if (Sesion.LoginName = 'GI�IGUEZ') or (Sesion.LoginName = 'LBASTITTA') then
    chkVerTodas.Checked := False
  else
    chkVerTodas.Checked := True;
*)
  chkVerTodas.Checked := false;

  CargarMotivos (False);
  cbMotivosAsociarVisita.Items := cbMotivos.Items;
  clbestablecimientos.Clear;
  cbMotivosClickCheck(nil);
  btnLimpiarVisitaClick(Sender);
  edFechaNotificacion.Visible := false;
  chkTraspaso.Visible := false;
  cbAuditado.Checked := False;
  fraPreventorVisita.Codigo := ValorSQL ('SELECT art.hys.get_preventor_estab (' +
                                SqlValue (fraEmpresa.mskCUIT.Text) + ', ' +
                                SqlValue (fraEstableciBusq.edCodigo.Value) +
                                ', SYSDATE) FROM DUAL');
  fraPreventorVisita.ShowBajas := false;
  OnPreventorChange(nil);
  if FPreventorVisita = fraPreventorVisita.Value then
  begin
    edFechaInicioViaticos.Date := FFechaInicioViaticos;
    edFechaFinViaticos.Date := FFechaFinViaticos;
  end;
  cbVerificarPreventor.Checked := False;
  cbAnclarViaticos.Checked := False;
  fpVisita.ShowModal
end;

procedure TfrmFet.btnModifVisitaClick(Sender: TObject);
var
  i: integer;
begin
  clbestablecimientos.Clear;
  Verificar(edCPA.Text = '', edCPA, 'Debe tener el CPA cargado para cargar una visita.');
  if fraTipoFet.Codigo = 'GB'then
    Verificar(Anexo1_IsEmpty, btnModifVisita,'Debe tener Anexo 1');
  if sdqVisitas.IsEmpty then
    Exit;
  FIdVisita := sdqVisitas.FieldByName ('rv_id').AsInteger;
  // Inicializar
  FModoVisita := maModificacion;

  chkVerTodas.Checked := True;
  CargarMotivos(True);

  btnLimpiarVisitaClick(Sender);
  cbVerificarPreventor.Checked := True;
  cbAnclarViaticos.Checked := False;
  // Cargar los datos
  chkTraspaso.Checked         := (sdqVisitas.FieldByName ('rv_traspaso').AsString = 'S');
  edFechaVisita.Date          := sdqVisitas.FieldByName ('rv_fecha').AsDateTime;
  edFechaViaticos.Date        := sdqVisitas.FieldByName ('rv_fechaviaticos').AsDateTime;
  FIdVisitaAsociada           := sdqVisitas.FieldByName ('rv_idvisitaasociada').AsInteger;
  fraPreventorVisita.Codigo   := sdqVisitas.FieldByName ('rv_firmante').AsString;
  edFechaNotificacion.Date    := sdqVisitas.FieldByName ('rv_fechanotificacion').AsDateTime;
  edFechaInicioViaticos.Date  := sdqVisitas.FieldByName ('rv_fechainicioviaticos').AsDateTime;
  edFechaFinViaticos.Date     := sdqVisitas.FieldByName ('rv_fechafinviaticos').AsDateTime;
  cbAuditado.Checked          := not sdqVisitas.FieldByName ('rv_fechaauditado').IsNull;

  edObservacion.Lines.Text := sdqVisitas.FieldByName ('rv_descripcion').AsString;
  edObservacionInterna.Text := sdqVisitas.FieldByName ('rv_obsinterna').AsString;

  vclextra.LockControl(edFechaViaticos,not ExisteSql(
      ' SELECT * '+
      '   FROM art.pit_firmantes '+
      '  WHERE it_codigo = '+ SqlValue(fraPreventorVisita.Codigo)+
      '    AND it_idrolpreventor IN (1, 5) '));

  //pnlDatos.Enabled := FIdVisitaAsociada = 0;

  // Motivos
  with sdqMotivos do
    if not IsEmpty then
    begin
      DisableControls;
      First;

      while not EoF do
      begin
        if FieldByName('vm_fechabaja').IsNull then
          cbMotivos.check(FieldByName('mo_codigo').AsString);
          //cbMotivos.Checked[cbMotivos.Items.IndexOfObject(TObject(FieldByName('mo_codigo').AsInteger))] := true;
        Next
      end;

      EnableControls;
    end;

  i := 0;
  while i < cbMotivos.Items.Count do
    if (not cbMotivos.Checked[i]) and (Pos('[DADA DE BAJA]', cbMotivos.Items[i]) > 0) then
    begin
      cbMotivos.Items.Delete(i);
      cbMotivos.Values.Delete(i);
    end
    else
      inc(i);

  fraPreventorVisita.ShowBajas := true;
  cbMotivosClickCheck(nil);

  fpVisita.ShowModal;
end;

procedure TfrmFet.btnDeleteVisitaClick(Sender: TObject); var
  Sql : TSql;
  sSql : String;
begin
  if sdqVisitas.IsEmpty then
    Exit;

  if MsgBox('�Desea eliminar el registro seleccionado?', MB_ICONQUESTION + MB_YESNO) <> IDYES then
    Exit;

  FModoVisita := maBaja;

  Sql := TSql.Create('art.prv_resvisitas');
  try
    Sql.PrimaryKey.Add('rv_id', sdqVisitas.FieldByName('rv_id').AsInteger);
    Sql.Fields.Add('rv_fechabaja', SQL_DATETIME, False);
    Sql.Fields.Add('rv_usubaja', frmPrincipal.DBLogin.LoginName );

    EjecutarSqlST (Sql.UpdateSql);

    EjecutarSqlST(
      'UPDATE hys.hvm_visitamotivo ' +
      '   SET vm_usubaja = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' +
      '       vm_fechabaja = SYSDATE ' +
      ' WHERE vm_idvisita = ' + SqlValue (sdqVisitas.FieldByName('rv_id').AsInteger)
    );

    //Baja Visitas Asociadas
    EjecutarSqlST(
      'UPDATE art.prv_resvisitas ' +
      '   SET rv_usubaja = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' +
      '       rv_fechabaja = SYSDATE, ' +
      '       rv_descripcion = '+ sqlValue(sdqVisitas.FieldByName ('rv_descripcion').AsString)+
      ' WHERE rv_id IN ( SELECT rv_id '+
      '                          FROM art.prv_resvisitas '+
      '                         WHERE rv_idvisitaasociada = '+ SqlValue (sdqVisitas.FieldByName('rv_id').AsInteger)+')');

    EjecutarSqlST(
      'UPDATE hys.hvm_visitamotivo ' +
      '   SET vm_usubaja = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' +
      '       vm_fechabaja = SYSDATE ' +
      ' WHERE vm_idvisita IN ( SELECT rv_id '+
      '                          FROM art.prv_resvisitas '+
      '                         WHERE rv_idvisitaasociada = '+ SqlValue (sdqVisitas.FieldByName('rv_id').AsInteger)+')');

    //


    sSql :=
      ' SELECT 1 '+
      '   FROM hys.hvm_visitamotivo '+
      '  WHERE vm_idmotivo = 56 '+
      '     OR vm_idmotivo = 57 '+
      '    AND vm_idvisita = '+ SqlValue (sdqVisitas.FieldByName('rv_id').AsInteger);
    if ExisteSql(sSql) then
    begin
    EjecutarSqlST(
          ' UPDATE hys.hee_eventoempresa '+
          '    SET ee_fechabaja = sysdate, '+
          '        ee_usubaja = '+SqlValue(Sesion.UserID)+
          '  WHERE ee_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
          '    AND ee_establecimiento = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
          '    AND ee_tipo = '+SqlValue(fraTipoFet.Value)+
          '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo)+
          '    AND ee_fechaevento = ' + SqlValue(sdqVisitas.FieldByName('rv_fechanotificacion').AsDateTime) +
          '    AND (ee_idtipoevento = 1 or ee_idtipoevento = 2)');
    frmEventos.tbRefrescarClick(nil);
    end;
    sdqVisitas.Refresh;
    sdqMotivos.Refresh;
  finally
    Sql.Free;
  end;

  Sql := TSql.Create('art.prv_resvisitas');
  try
    Sql.PrimaryKey.Add('rv_id', sdqVisitas.FieldByName('rv_id').AsInteger);
    Sql.Fields.Add('rv_fechabaja', SQL_DATETIME, False);
    Sql.Fields.Add('rv_usubaja', frmPrincipal.DBLogin.LoginName );

    EjecutarSqlST (Sql.UpdateSql);

    //ActualizarVisita;

    sdqVisitas.Refresh;
    sdqMotivos.Refresh;
  finally
    Sql.Free;
  end;
end;


function TfrmFet.HayChequeados: Boolean;
//var
  //i: Integer;
begin
  Result := cbMotivos.ItemsChecked.Count >0;
  {if cbMotivos.CheckKind <> ckRadioButtons then
    for i := 0 to cbMotivos.Items.Count - 1 do
      if cbMotivos.Checked[i] then begin
        Result := true;
        Exit;
      end;
      }
end;

function TfrmFet.ValidarVisita : Boolean;
var
  bExiste : Boolean;
  i : Integer;
begin
  Result := False;

  VerificarMultiple (['Registro de Visita',
                      edFechaVisita,
                      IsValidDate (edFechaVisita.Text, 'DD/MM/YYYY'),
                      'La fecha no es v�lida.',
                      edFechaVisita,
                      edFechaVisita.Date <= DBDate,
                      'La fecha no puede ser superior a la fecha actual.',

                      fraPreventorVisita,
                      fraPreventorVisita.IsSelected,
                      'Debe indicarse el preventor que realiz� la visita.',
                      cbMotivos,
                      HayChequeados,
                      'Debe indicarse al menos un motivo']
                     );
  Verificar((FModoVisita <> maAlta) and
             ExisteSQL('SELECT 1 ' +
                       '  FROM art.prv_resvisitas ' +
                       ' WHERE rv_cuit = ' + SqlValue (fraEmpresa.mskCuit.Text) +
                       '   AND rv_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                       '   AND rv_fecha = ' +  SqlValue (edFechaVisita.Date) +
                       '   AND rv_firmante = ' + SqlValue (fraPreventorVisita.Codigo) +
                       '   AND rv_id <> ' +  SqlValue (FIdVisita)+
             iif(FIdVisitaAsociada > 0,
                       ' AND rv_idvisitaasociada is not null ',
                       ' AND rv_idvisitaasociada is null ')
                      ),
             edFechaVisita,'Ya existe una visita en la fecha indicada para este preventor.'
           );
//  Verificar(ValorSql('SELECT art.amebpba.isdiahabil('+SqlValue(edFechaVisita.Date)+') FROM DUAL')= 'N',edFechaVisita,'La Fecha no es un d�a habil.');

  Verificar((FModoVisita = maAlta) and
             ExisteSQL('SELECT 1 ' +
                       '  FROM art.prv_resvisitas ' +
                       ' WHERE rv_cuit = ' + SqlValue (fraEmpresa.mskCuit.Text) +
                       '   AND rv_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                       '   AND rv_firmante = ' + SqlValue (fraPreventorVisita.Codigo) +
                       '   AND rv_fecha = ' +  SqlValue (edFechaVisita.Date)+
             iif(FIdVisitaAsociada > 0,
                       ' AND rv_idvisitaasociada is not null ',
                       ' AND rv_idvisitaasociada is null ')
                      ),
             edFechaVisita,'Ya existe una visita en la fecha indicada para este preventor.'
           );
  //motivoPos := cbMotivos.Items.IndexOfObject(TObject(56));
  (*Verificar((motivoPos >=0) and   cbMotivos.Checked[motivoPos] and  ExisteSql('SELECT 1 '+
                            '  FROM art.prv_resvisitas, hys.hvm_visitamotivo '+
                            ' WHERE vm_idmotivo = 56 '+
                            '   AND vm_idvisita = rv_id '+
                            '   AND rv_cuit = '+SqlValue(fraEmpresa.CUIT)+
                            '   AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+
                            '   AND rv_fechaalta >= TO_DATE(''15/05/2012'',''DD/MM/YYYY'') '+
                            IIF((FModoVisita = maAlta),'',
                            '   AND rv_id <> '+SqlValue(sdqVisitas.FieldByName('rv_id').AsString))),cbMotivos,'Ya existe una visita con el motivo Notificaci�n ET.');
  *)

  if ExisteSql(
      ' SELECT * '+
      '   FROM art.pit_firmantes '+
      '  WHERE it_codigo = '+ SqlValue(fraPreventorVisita.Codigo)+
      '    AND it_idrolpreventor IN (1, 5) ')and pnlDatos.Enabled then
  begin
    Verificar(edFechaViaticos.Date = 0,edFechaViaticos,'Debe ingresar Fecha Entrega de Vi�ticos.');
    Verificar(edFechaViaticos.Date < edFechaVisita.Date,edFechaViaticos,'No puede ser menor que la fecha de visita.');
  end;

  Verificar(pnlDatos.Enabled and not cbVerificarPreventor.Checked, cbVerificarPreventor, 'Debe Verificar que es el preventor correcto.');
  if edFechaFinViaticos.Date <> 0 then
  begin
    Verificar(edFechaFinViaticos.Date < edFechaVisita.Date, edFechaFinViaticos, 'La fecha hasta de vi�ticos debe ser mayor o igual a la fecha de visita.' )
  end;

  if fraOperativo.Value <> ValorSql('select hys.get_operativovigente_empresa(' + SqlValue(fraEmpresa.CUIT) + ') from dual') then
    if MsgBox('Usted esta cargando un operativo que no es el vigente �Desea continuar? ',
                                 MB_YESNO + MB_ICONWARNING, 'Carga operativo anterior') = ID_NO then
      Exit;

  i := 0;
  bExiste := True;
  while (i < cbMotivos.Items.Count) and bExiste do
  begin
    if  not ExisteSql(
      ' SELECT 1 '+
      '   FROM art.pmo_motivos '+
      '  WHERE MO_CODIGO = '+SqlInt(StrToInt(cbMotivos.Values[i]))+
      '    AND (MO_TIPO LIKE ''%'+fraTipoFet.Codigo+'%'' '+iif(fraTipoFet.Codigo = 'GB',' OR MO_TIPO LIKE ''%EAD%''','')+' OR MO_TIPO IS NULL )')and cbMotivos.Checked[i] then
        bExiste := false;
    i := i +1;
  end;
  if not bExiste then
  begin
    if MsgBox('Usted esta cargando un Motivo que no pertenece al tipo �Desea continuar? ',
                                 MB_YESNO + MB_ICONWARNING, 'Motivo no perteneciente al tipo') = ID_NO then
      Exit;
  end;

  {if edFechaInicioViaticos.Date <> 0 then
  begin
    Verificar(edFechaInicioViaticos.Date > edFechaVisita.Date, edFechaInicioViaticos, 'La fecha desde de vi�ticos debe ser menor o igual a la fecha de visita.' )
  end;
  }
  if FModoVisita = maModificacion then
  begin
    if ExisteSql(
        ' SELECT DISTINCT 1 '+
        '   FROM pod_obradenuncia '+
        '  WHERE od_idvisita = '+SqlValue(FIdVisita)+
        '    AND od_fechabaja IS NULL') then
      Verificar(edFechaVisita.Date <> sdqVisitas.FieldByName('rv_fecha').AsDateTime, edFechaVisita, 'No se puede Cambiar la fecha de visita esta asignado a una medida.');
  end;



  if edFechaNotificacion.Visible then
  begin
    Verificar(edFechaNotificacion.Date = 0,edFechaNotificacion,'Se debe completar la fecha de notificaci�n');
    Verificar(edFechaNotificacion.Date > DBDate, edFechaNotificacion,'La fecha no puede ser superior a la fecha actual.')
  end;
  result := true;
end;

procedure TfrmFet.btnAceptarVisitaClick(Sender: TObject);
var
  i : Integer;
  vImportacion : Boolean;
begin
  //flaget := False;
  if ValidarVisita then
  begin
    GuardarVisita(fraEstableciBusq.edCodigo.Value, FModoVisita,False);

    for i := 0 to clbestablecimientos.ItemsChecked.Count - 1 do
    begin
      GuardarVisita(StrToInt(clbestablecimientos.ValuesChecked[i]), maAlta,True);
    end;

    sdqVisitas.Refresh;
    if sdqMotivos.Active then
      sdqMotivos.Refresh
    else
    begin
      sdqMotivos.ParamByName('rv_id').AsString := sdqVisitas.FieldByName('rv_id').AsString;
      sdqMotivos.Open;
    end;

    FModoVisita := maModificacion;

    if edOrigen.Visible and (edOrigen.FileName <> '') then
    begin
      MsgBox('La visita se guardo Correctamente.');
      Verificar(not FileExists(edOrigen.FileName), edOrigen, 'El archivo de origen debe existir.');
      vImportacion := ImportarPRS(FIdVisita);
      FFrmPRS.Load;
    end
    else
    begin
      vImportacion := true;
    end;

    if cbAnclarViaticos.Checked then
    begin
      FFechaInicioViaticos := edFechaInicioViaticos.Date;
      FFechaFinViaticos := edFechaFinViaticos.Date;
      FPreventorVisita := fraPreventorVisita.Value;
    end;

    sdqVisitasAfterScroll(sdqVisitas);

    //ActualizarVisita;
    if vImportacion then
      fpVisita.ModalResult := mrOk
    else
      Verificar(1=1, edOrigen, 'No se Importo Correctamente el PRS.');
  end;
end;

procedure TfrmFet.GuardarVisita(NroEstablecimiento : Integer; ModoVis : TModoABM; visitaAsociada : boolean);
var
  Sql : TSql;
  id_Preventor : String;
  cComboVariable : TARTCheckListBox;
  idvisita ,i: integer;
  id_fechavisita : integer;
  id_visita: String;
  FFechanotificacion : TDate;
  procedure ActualizarObsDenuncias(iVisita :integer);
  var
    FTexto : TStrings;
    actSql : TSql;
  begin
    FTexto := TStringList.Create;

    try
      with qryDenuncias do
      begin
        ParamByName('idvisita').Value      := iVisita;
//      ParamByName('pcuit').Value      := fraEmpresa.mskCUIT.Text;
//      ParamByName('poperativo').Value := fraOperativo.Codigo;
//      ParamByName('pestableci').Value := fraEstableciBusq.edCodigo.Value;
        Open;

        while not EoF do
        begin
          qryObsDenuncias.ParamByName('od_id').Value := FieldByName('od_id').AsInteger;
          qryObsDenuncias.Open;
          while not qryObsDenuncias.EoF do
          begin
            if Trim (qryObsDenuncias.FieldByName('obs').AsString) <> '' then
              FTexto.Append(trim(qryObsDenuncias.FieldByName('obs').AsString)+ ' ');

            qryObsDenuncias.Next
          end;
          qryObsDenuncias.Close;
          Next
        end;

        if (FTexto.Text <> '') then
        begin
          actSql := TSql.Create('pod_obradenuncia');
          try
            actSql.PrimaryKey.Add('od_id', FieldByName('od_id').AsInteger);
            actSql.Fields.Add('od_observaciones1', TrimLeft (Copy(Trim(FTexto.Text), 0, 4000)));
            actSql.Fields.Add('od_observaciones2', Copy (Trim (FTexto.Text), 4001, 3900));
            actSql.SqlType := stUpdate;
            EjecutarSqlST(actSql.Sql);
          finally
            actSql.Free;
          end;
        end;

        close;
      end;
    finally
      FTexto.Free
    end
  end;
begin
  Sql := TSql.Create('art.prv_resvisitas');
  try
    if ModoVis = maAlta then
    begin
      Sql.SqlType := stInsert;
      idvisita := GetSecNextVal('ART.SEQ_PRV_ID');
      if not visitaAsociada then
        FIdVisita := idvisita;
      Sql.PrimaryKey.Add ('rv_id', idvisita);
      Sql.Fields.Add('rv_cuit', fraEmpresa.mskCuit.Text);
      Sql.Fields.Add('rv_estableci', NroEstablecimiento);
      Sql.Fields.Add('rv_tipo', fraTipoFet.Value);
      Sql.Fields.Add('rv_operativo', fraOperativo.Codigo);
      Sql.Fields.Add('rv_prestador', '0001');
      Sql.Fields.Add('rv_indicevisita', 0);
      Sql.Fields.Add('rv_fechaalta', SQL_DATETIME, False);
      Sql.Fields.Add('rv_usualta', frmPrincipal.DBLogin.LoginName);
    end
    else begin
      Sql.SqlType := stUpdate;
      Sql.PrimaryKey.Add ('rv_id', FIdVisita);
      idvisita := FIdVisita;
      Sql.Fields.Add('rv_fechamodif', SQL_DATETIME, False);
      Sql.Fields.Add('rv_usumodif', frmPrincipal.DBLogin.LoginName);
      Sql.Fields.Add('rv_fechabaja', ExNull);
      Sql.Fields.Add('rv_usubaja', ExNull);
    end;

    if edFechaViaticos.Date <> 0 then
    begin
      Sql.Fields.Add('rv_fechaviaticos', edFechaViaticos.Date);
      FFEntregaViaticos := edFechaViaticos.Date;
    end;
    Sql.Fields.Add('rv_fecha', edFechaVisita.Date);
    Sql.Fields.Add('rv_fechainicioviaticos', edFechaInicioViaticos.Date);
    Sql.Fields.Add('rv_fechafinviaticos', edFechaFinViaticos.Date);
    Sql.Fields.Add('rv_fechanotificacion', edFechaNotificacion.Date);
    Sql.Fields.Add('rv_traspaso', chkTraspaso.Checked);
    Sql.Fields.Add('rv_firmante', fraPreventorVisita.Codigo);
    Sql.Fields.Add('rv_descripcion', trim(edObservacion.Lines.Text));
    Sql.Fields.Add('rv_obsinterna', trim(edObservacionInterna.Lines.Text));
    i := 0;
    if(edFechaNotificacion.Visible)then
    begin
      FFechanotificacion := edFechaNotificacion.Date;
      if (sdqVisitas.FieldByName ('rv_fechanotificacion').AsDateTime = edFechaNotificacionAnexo.Date) then
        edFechaNotificacionAnexo.Date := edFechaNotificacion.Date;
    end
    else
      FFechanotificacion := sdqVisitas.FieldByName ('rv_fechanotificacion').AsDateTime;

    if visitaAsociada then
      cComboVariable := cbMotivosAsociarVisita
    else
      cComboVariable := cbMotivos;



    while i < cComboVariable.Items.Count do
    begin
      if  ExisteSql(
        ' SELECT te_id '+
        '   FROM hys.hte_tipoevento '+
        '  WHERE te_idmotivovisita = '+SqlInt(StrToInt(cComboVariable.Values[i])))and cComboVariable.Checked[i] then
      begin
        id_Preventor := ValorSql(
          ' SELECT it_id '+
          '   FROM pit_firmantes '+
          '  WHERE it_codigo = '+SqlValue(fraPreventorVisita.Codigo));

        if ExisteSql(
          ' SELECT 1 '+
          '   FROM hys.hee_eventoempresa '+
          '  WHERE ee_cuit = '+ SqlValue(fraEmpresa.mskCUIT.Text)+
          '    AND ee_establecimiento = '+SqlValue(NroEstablecimiento)+
          '    AND ee_tipo = '+ SqlValue(fraTipoFet.Value)+
          '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo)+
          '    AND ee_fechaevento = '+SqlDate(FFechanotificacion)+
          '    AND ee_idtipoevento = ( '+
          '                         SELECT te_id '+
          '                           FROM hys.hte_tipoevento '+
          '                          WHERE te_idmotivovisita = '+SqlInt(StrToInt(cComboVariable.Values[i]))+')')
        then
        begin
          EjecutarSqlST(
            ' UPDATE hys.hee_eventoempresa '+
            '    SET ee_fechaevento = '+SqlDate(edFechaNotificacion.Date)+','+
            '        ee_fechamodif = sysdate, '+
            '        ee_idpreventor ='+SqlValue(id_Preventor)+','+
            '        ee_usumodif = '+SqlValue(Sesion.UserID)+','+
            '        ee_fechabaja = null, '+
            '        ee_usubaja = null '+
            '  WHERE ee_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
            '    AND ee_establecimiento = '+SqlValue(NroEstablecimiento)+
            '    AND ee_tipo = '+SqlValue(fraTipoFet.Value)+
            '    AND ee_fechaevento = '+SqlDate(FFechanotificacion)+
            '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo)+
            '    AND ee_idtipoevento = (SELECT te_id '+
            '                             FROM hys.hte_tipoevento '+
            '                            WHERE te_idmotivovisita = '+SqlInt(StrToInt(cComboVariable.Values[i]))+')');
        end
        else
        begin
          EjecutarSqlST(
            ' INSERT INTO hys.hee_eventoempresa (ee_id, ee_cuit, ee_establecimiento, '+
            '             ee_tipo, ee_operativo, ee_idtipoevento, ee_observacion, '+
            '             ee_muestracuit, ee_fechaevento, ee_fechaalta, ee_usualta, '+
            '             ee_fechamodif, ee_usumodif, ee_fechabaja, ee_usubaja, ee_IDPREVENTOR)'+
            '  SELECT hys.seq_hee_id.NEXTVAL,'+ SqlValue(fraEmpresa.mskCUIT.Text)+', '+
                      SqlValue(NroEstablecimiento)+', '+ SqlValue(fraTipoFet.Value)+', '+
                      SqlValue(fraOperativo.Codigo)+',te_id, null, te_muestracuit,'+SqlDate(edFechaNotificacion.Date)+','+
                      'sysdate,'+SqlValue(Sesion.UserID)+',null,null,null,null,'+SqlValue(id_Preventor)+
            '            FROM hys.hte_tipoevento '+
            '           WHERE te_idmotivovisita ='+ SqlInt(StrToInt(cComboVariable.Values[i])));
        end;
      end
      else
      begin
        EjecutarSqlST(
          ' UPDATE hys.hee_eventoempresa '+
          '    SET ee_fechabaja = sysdate, '+
          '        ee_usubaja = '+SqlValue(Sesion.UserID)+
          '  WHERE ee_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
          '    AND ee_establecimiento = '+SqlValue(NroEstablecimiento)+
          '    AND ee_tipo = '+SqlValue(fraTipoFet.Value)+
          '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo)+
          '    AND ee_fechabaja is null '+
          '    AND EE_FECHAEVENTO = '+SqlValue(FFechanotificacion)+
          '    AND NOT EXISTS (SELECT 1 '+
          '                      FROM art.prv_resvisitas, hys.hvm_visitamotivo '+
          '                     WHERE rv_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
          '                       AND rv_estableci = '+SqlValue(NroEstablecimiento)+
          '                       AND vm_idvisita = rv_id '+
          '                       AND rv_id <>  '+SqlValue(idvisita)+
          '                       AND vm_fechabaja is null '+
          '                       AND vm_idmotivo = '+SqlInt(StrToInt(cComboVariable.Values[i]))+')'+
          '    AND ee_idtipoevento = (SELECT te_id '+
          '                             FROM hys.hte_tipoevento '+
          '                           WHERE te_idmotivovisita = '+SqlInt(StrToInt(cComboVariable.Values[i]))+')');
      end;
      i:= i+1;
    end;

    if (FModoVisita = maModificacion) and (FFechanotificacion <> sdqVisitas.FieldByName ('rv_fechanotificacion').AsDateTime) then
    begin
      EjecutarSqlST(
        ' UPDATE hys.hee_eventoempresa '+
        '    SET ee_fechabaja = sysdate, '+
        '        ee_usubaja = '+SqlValue(Sesion.UserID)+
        '  WHERE ee_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
        '    AND ee_establecimiento = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
        '    AND ee_tipo = '+SqlValue(fraTipoFet.Value)+
        '    AND ee_operativo = '+SqlValue(fraOperativo.Codigo)+
        '    AND ee_fechaevento = ' + SqlValue(sdqVisitas.FieldByName('rv_fechanotificacion').AsDateTime) +
        '    AND (ee_idtipoevento = 1 or ee_idtipoevento = 2)');
    end;

    frmEventos.tbRefrescarClick(nil);
    if visitaAsociada then
      Sql.Fields.Add('rv_idvisitaasociada', FIdVisita);
    if not ExisteSql ('SELECT 1 ' +
                      '  FROM ppm_planmej ' +
                      ' WHERE pm_cuit =  ' + SqlValue(fraEmpresa.mskCuit.Text) +
                      '   AND pm_estableci = ' + SqlValue(NroEstablecimiento)) then
      EjecutarSqlST('INSERT INTO ppm_planmej ' +
                    '            (pm_cuit, pm_estableci, pm_usalta, pm_fecalta ' +
                    '            ) ' +
                    '     VALUES (' + SqlValue(fraEmpresa.mskCuit.Text) + ', ' +
                                      SqlValue(NroEstablecimiento) + ', ' +
                                      SqlValue(frmPrincipal.DBLogin.LoginName) + ', SYSDATE ' +
                    '            )');
    EjecutarSqlST (Sql.Sql);
    if cbAuditado.Checked then
    begin
      if ExisteSql('SELECT 1 FROM ART.PRV_RESVISITAS WHERE RV_FECHAAUDITADO is null AND rv_id = '+SqlValue(FIdVisita)) then
      BEGIN
        EjecutarSqlST('UPDATE ART.PRV_RESVISITAS '+
                      '   SET RV_USUAUDITADO = '+ SqlValue(Sesion.UserID)+
                      '      ,RV_FECHAAUDITADO = sysdate '+
                      ' WHERE RV_ID = '+SqlValue(FIdVisita));
      END;
    end
    else
    begin
      EjecutarSqlST('UPDATE ART.PRV_RESVISITAS '+
                      '   SET RV_USUAUDITADO = NULL,'+
                      '       RV_FECHAAUDITADO = NULL '+
                      ' WHERE RV_ID = '+SqlValue(FIdVisita));
    end;
    RegistrarMotivos(idvisita,visitaAsociada);
    ActualizarObsDenuncias(idvisita);

    SaveArchivoVisita;

    //Actualizo las asociadas
    {with GetQuery('select rv_id from art.prv_resvisitas where rv_idvisitaasociada = ' + SqlValue(IdVisita)) do
    try
      while not Eof do
      begin
        EjecutarSqlST(' update art.prv_resvisitas ' +
                      ' set rv_tipo = ' + SqlValue(fraTipoFet.Value) + ', ' +
                      ' rv_operativo = ' + SqlValue(fraOperativo.Codigo) + ', ' +
                      ' rv_fecha = ' + SqlDate(edFechaVisita.Date) + ', ' +
                      ' rv_firmante = ' + SqlValue(fraPreventorVisita.Codigo) + ', ' +
                      ' rv_obsinterna = ' + SqlValue(trim(edObservacionInterna.Lines.Text)) + ', ' +
                      ' rv_descripcion = ' + SqlValue(trim(edObservacion.Lines.Text)) +
                      ' where rv_id = ' + SqlValue(fieldbyname('rv_id').AsInteger));
        RegistrarMotivos(fieldbyname('rv_id').AsInteger,True);
        Next;
      end;
    finally
      free;
    end;}
      i := 0;
      while i < cComboVariable.Items.Count do
      begin
        if cComboVariable.Checked[i]
          and ( (StrToInt(cComboVariable.Values[i]) = 2) or
                (StrToInt(cComboVariable.Values[i]) = 135) or
                (StrToInt(cComboVariable.Values[i]) = 136) or
                (StrToInt(cComboVariable.Values[i]) = 137) or
                (StrToInt(cComboVariable.Values[i]) = 138) or
                (StrToInt(cComboVariable.Values[i]) = 139) or
                (StrToInt(cComboVariable.Values[i]) = 140) or
                (StrToInt(cComboVariable.Values[i]) = 141)) then
        //Actualizar la fecha correspondiente...
        begin
          id_fechavisita := ValorSqlInteger(
              ' SELECT FV_ID '+
              '   FROM hys.hfv_fechasvisitas '+
              '  WHERE fv_cuit = '+ SqlValue(fraEmpresa.mskCuit.Text)+
              '    AND fv_estableci = '+ SqlValue(fraEstableciBusq.edCodigo.Value)+
              '    AND ((TO_CHAR (fv_fecha, ''MM/YYYY'') = TO_CHAR ('+SqlDate(edFechaVisita.Date) +', ''MM/YYYY'')  AND fv_fechadesde IS NULL) '+
              '         OR ('+SqlDate(edFechaVisita.Date)+' BETWEEN fv_fechadesde AND fv_fecha)) ');


          EjecutarSqlST(
              ' UPDATE hys.hfv_fechasvisitas'+
              '    SET fv_idvisita = '+SqlValue(idvisita)+
              '  WHERE fv_id = '+ SqlValue(id_fechavisita));
        end;
(* TKT 51761

        if cComboVariable.Checked[i] and (StrToInt(cComboVariable.Values[i]) = 22) then
        begin
          id_Gestion := ValorSql(
            ' SELECT ga_id '+
            '   FROM afi.aes_establecimiento, art.sex_expedientes, hys.hga_gestionaccidente '+
            '  WHERE ga_idexpediente = ex_id '+
            '    AND es_id = ga_idestablecimiento '+
            '    AND NVL (ex_fecharecaida, ex_fechaaccidente) <= '+SqlValue(edFechaVisita.Date)+
            '    AND ex_cuit || '''' = '+SqlValue(fraEmpresa.mskCuit.Text)+
            '    AND ga_idestado < 3 '+
            '    AND es_nroestableci = '+SqlValue(NroEstablecimiento));
          if id_gestion <> '' then
            EjecutarSqlST(' UPDATE hys.hga_gestionaccidente '+
                        '    SET ga_idestado = 3 '+
                        '  WHERE ga_id = '+SqlValue(id_Gestion)
                       );
        end;
*)        
        if cComboVariable.Checked[i] and (StrToInt(cComboVariable.Values[i]) = 88) then
        //Actualizar la fecha correspondiente...
        begin
          id_visita := ValorSql(
            ' SELECT prv1.rv_id '+ //, prv1.rv_fecha
            '   FROM art.prv_resvisitas prv1, hys.hvm_visitamotivo hvm1'+
            '  WHERE prv1.rv_tipo = '+SqlValue(fraTipoFet.Value)+
            '    AND prv1.rv_cuit = '+SqlValue(fraEmpresa.mskCuit.Text)+
            '    AND prv1.rv_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
            '    AND prv1.rv_operativo = '+SqlValue(fraOperativo.Codigo)+
            '    AND hvm1.vm_idvisita = prv1.rv_id '+
            '    AND prv1.rv_fechabaja IS NULL '+
            '    AND hvm1.vm_fechabaja IS NULL '+
            '    AND hvm1.vm_idmotivo = 88 '+
            '    AND prv1.rv_fecha = '+
            '          (SELECT MAX (prv2.rv_fecha) '+
            '             FROM art.prv_resvisitas prv2, hys.hvm_visitamotivo hvm2 '+
            '            WHERE prv2.rv_tipo = prv1.rv_tipo '+
            '              AND prv2.rv_cuit = prv1.rv_cuit '+
            '              AND prv2.rv_estableci = prv1.rv_estableci '+
            '              AND prv2.rv_operativo = prv1.rv_operativo '+
            '              AND hvm2.vm_idvisita = prv2.rv_id '+
            '              AND prv2.rv_fechabaja IS NULL '+
            '              AND hvm2.vm_fechabaja IS NULL '+
            '              AND hvm2.vm_idmotivo = 88)');
          EjecutarSqlST(
            ' UPDATE hys.hpa_pal '+
            '    SET pa_idvisita = '+ SqlValue(id_visita)+
            '  WHERE pa_cuit = '+SqlValue(fraEmpresa.mskCuit.Text)+
            '    AND pa_estableci = '+ SqlValue(NroEstablecimiento) +
            '    AND pa_tipo = '+SqlValue(fraTipoFet.Value)+
            '    AND pa_operativo = '+SqlValue(fraOperativo.Codigo));
          FFrmPAL.sdqPAL.Refresh;
        end;
        i:= i+1;
      end;
  finally
    Sql.Free;
  end;
end;

procedure TfrmFet.btnAsociarVisitaClick(Sender: TObject);
var
  sSQL : String;
begin
  if ValidarVisita then
  begin
    if clbestablecimientos.Count = 0 then
    begin
      sSQL :=
          '   SELECT es_nroestableci, es_nombre '+
          '     FROM afi.aem_empresa, afi.aco_contrato, afi.aes_establecimiento '+
          '    WHERE em_id = co_idempresa '+
          '      AND es_contrato = co_contrato '+
          '      AND co_contrato = art.get_vultcontrato(em_cuit) '+
          '      AND em_cuit = '+SqlValue(fraEmpresa.CUIT)+
          '      AND es_nroestableci <> '+SqlValue(fraEstableciBusq.edCodigo.Value)+
          '      AND es_fechabaja IS NULL '+
          '      AND NOT EXISTS(SELECT 1 '+
          '                       FROM art.prv_resvisitas '+
          '                      WHERE rv_cuit = em_cuit '+
          '                        AND rv_estableci = es_nroestableci '+
          '                        AND rv_fecha = '+SqlValue(edFechaVisita.Date)+
          '                        AND rv_tipo = '+SqlValue(fraTipoFet.Value)+
          '                        AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+')'+
          ' ORDER BY es_nroestableci';
      with GetQuery(sSQL)  do
      try
        while not Eof do
        begin
          clbestablecimientos.Add(Fields[0].AsString+' '+Fields[1].AsString,Fields[0].AsString);
          Next;
        end;
      finally
        Free;
      end;
    end;
      //clbestablecimientos.CheckAll;
    fpAsociarVisita.ShowModal;


  end;
end;


procedure TfrmFet.btnLimpiarVisitaClick(Sender: TObject);
var
  i: Integer;
begin
  pnlDatos.Enabled  := True;
  FIdVisitaAsociada := 0;
  edFechaVisita.Clear;
  edFechaViaticos.Clear;
  fraPreventorVisita.Clear;
  edFechaNotificacion.Clear;
  chkTraspaso.Checked := false;
  edFechaInicioViaticos.Clear;
  edFechaFinViaticos.Clear;
  cbAnclarViaticos.Checked := False;
  cbVerificarPreventor.Checked := False;
  edOrigen.Clear;

  for i := 0 to cbMotivos.Items.Count - 1 do
    cbMotivos.Checked[i] := false;

  edObservacion.Lines.Clear;
  edObservacionInterna.Lines.Clear;
end;

procedure TfrmFet.RegistrarMotivos(aidvisita : integer; VisitaAsociada : Boolean = False);
var
  i: Integer;
begin
  if (not VisitaAsociada) then
  begin
    for i := 0 to cbMotivos.Items.Count - 1 do
      // Si est� seleccionado, agrego si no existe
      if cbMotivos.Checked[i] then
      begin
        if not ExisteSQL ('SELECT 1 ' +
                          '  FROM hys.hvm_visitamotivo ' +
                          ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
                          '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivos.Values[i]))) then
          EjecutarSqlST(
            'INSERT INTO hys.hvm_visitamotivo ' +
            '            (vm_idvisita, vm_idmotivo, vm_usualta, vm_fechaalta, vm_id) ' +
            '     VALUES (' + SqlValue(aidvisita) + ', ' +
                              SqlValue(StrToInt(cbMotivos.Values[i])) + ', ' +
                              SqlValue(frmPrincipal.DBLogin.LoginName) + ', ' +
                              'SYSDATE, HYS.SEQ_HVM_ID.NEXTVAL)'
          )
        else
          EjecutarSqlST(
            'UPDATE hys.hvm_visitamotivo ' +
            '   SET vm_usubaja = NULL, ' +
            '       vm_fechabaja = NULL' +
            ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
            '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivos.Values[i]))
          );
        GuardarCargaPlan(fraEmpresa.ID, fraEstableciBusq.edCodigo.Value, edFechaVisita.Date, fraPreventorVisita.Value, 0, StrToInt(cbMotivos.Values[i]));
      end
      else
        // Si no es alta y existe doy de baja
        if (FModoVisita <> maAlta) and
           ExisteSQL ('SELECT 1 ' +
                          '  FROM hys.hvm_visitamotivo ' +
                          ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
                          '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivos.Values[i]))) then
          EjecutarSqlST(
            'UPDATE hys.hvm_visitamotivo ' +
            '   SET vm_usubaja = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' +
            '       vm_fechabaja = SYSDATE ' +
            ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
            '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivos.Values[i]))
          );
  end
  else
  begin
    for i := 0 to cbMotivosAsociarVisita.Items.Count - 1 do
      // Si est� seleccionado, agrego si no existe
      if cbMotivosAsociarVisita.Checked[i] then
      begin
        if not ExisteSQL ('SELECT 1 ' +
                          '  FROM hys.hvm_visitamotivo ' +
                          ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
                          '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivosAsociarVisita.Values[i]))) then
          EjecutarSqlST(
            'INSERT INTO hys.hvm_visitamotivo ' +
            '            (vm_idvisita, vm_idmotivo, vm_usualta, vm_fechaalta, vm_id) ' +
            '     VALUES (' + SqlValue(aidvisita) + ', ' +
                              SqlValue(StrToInt(cbMotivosAsociarVisita.Values[i])) + ', ' +
                              SqlValue(frmPrincipal.DBLogin.LoginName) + ', ' +
                              'SYSDATE, HYS.SEQ_HVM_ID.NEXTVAL)'
          )
        else
          EjecutarSqlST(
            'UPDATE hys.hvm_visitamotivo ' +
            '   SET vm_usubaja = NULL, ' +
            '       vm_fechabaja = NULL' +
            ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
            '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivosAsociarVisita.Values[i]))
          );

        GuardarCargaPlan(fraEmpresa.ID, ValorSqlIntegerEx('SELECT rv_estableci from art.prv_resvisitas where rv_id = :id', [aidvisita]), edFechaVisita.Date, fraPreventorVisita.Value, 0, StrToInt(cbMotivosAsociarVisita.Values[i]));
      end
      else
        // Si no es alta y existe doy de baja
        if (FModoVisita <> maAlta) and
           ExisteSQL ('SELECT 1 ' +
                          '  FROM hys.hvm_visitamotivo ' +
                          ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
                          '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivosAsociarVisita.Values[i]))) then
          EjecutarSqlST(
            'UPDATE hys.hvm_visitamotivo ' +
            '   SET vm_usubaja = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' +
            '       vm_fechabaja = SYSDATE ' +
            ' WHERE vm_idvisita = ' + SqlValue(aidvisita) +
            '   AND vm_idmotivo = ' + SqlValue(StrToInt(cbMotivosAsociarVisita.Values[i]))
          );
  end;
end;

procedure TfrmFet.RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not sdqVisitas.FieldByName('rv_fechabaja').IsNull Then
    AFont.Color := clRed
  else
    if not sdqVisitas.FieldByName ('rv_idvisitaasociada').IsNull then
    begin
      if not Highlight then
        AFont.Color := clBlue
      else
        AFont.Color := clLime
    end
end;

procedure TfrmFet.dbgMotivosGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not sdqMotivos.FieldByName('vm_fechabaja').IsNull Then
    AFont.Color := clRed;
end;

procedure TfrmFet.sdqVisitasAfterScroll(DataSet: TDataSet);
begin
  sdqMotivos.Close;
  sdqMotivos.ParamByName('rv_id').AsInteger := sdqVisitas.FieldByName('rv_id').AsInteger;
  sdqMotivos.Open;
  redObservaciones.Lines.Clear;
  redObservaciones.Lines.Add(Trim(DataSet.FieldByName('rv_descripcion').AsString));
  redObservacionesInterna.Lines.Clear;
  redObservacionesInterna.Lines.Add(Trim(DataSet.FieldByName('rv_obsinterna').AsString));
end;

procedure TfrmFet.fraEstableciBusqedCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if fraEmpresa.IsSelected then
  begin
    fraEstableciBusq.CUIT := fraEmpresa.mskCUIT.Text;
    fraEstableciBusq.edCodigoKeyPress(Sender, Key);
  end;
end;

procedure TfrmFet.btnFicticioClick(Sender: TObject);
var
  fechanotificacion : TDateTime;
begin
  if fraTipoFet.Value = 'EP' then
  begin
    edItem1.Value := 999999;
    rbGroupItem4.ItemIndex := 1;
    edItem5.Value := 9999;
    edItem6.Value := 9999;
    edItem6_1.Value := 9999;
    edItem6_1_A.Value := 0;
    edItem6_1_B.Value := 0;
    edItem6_2.Value := 0;
    edItem6_2_A.Value := 0;
    edItem6_2_B.Value := 0;
    edHorasHombre.Value := 999999;
    edCantidadtrabajadorasMujeres.Value := 999999;
    edCantidadDiasNoTrabajados.Value := 999999;
    edCantidadtrabajadoresHombres.Value := 999999;
  end
  else
    if fraTipoFet.Value = 'ET' then
    begin
      edEMail.Text := 'prevencion-ucap@provart.com.ar';
      edTelefono.Text := '1148192800';
      edItem4.Value := 999999;
      edItem4_1.Value := 999999;
      edItem5.Value := 9999;
      edItem6.Value := 9999;
      edItem6_1.Value := 9000;
      edItem6_1_A.Value := 9000;
      edItem6_1_B.Value := 0;
      editem6_1_2_A.Value := 0;
      edItem6_2.Value := 999;
      edItem6_2_A.Value := 0;
      edItem6_2_B.Value := 0;
    end;
  rgOrigen.ItemIndex := 1;
  edItem5.Modified := true;
  
  fechaNotificacion := ValorSqlDateTime(
    ' SELECT MAX (rv_fechanotificacion) '+
    '   FROM art.prv_resvisitas, hys.hvm_visitamotivo, art.pmo_motivos '+
    '  WHERE vm_idvisita = rv_id '+
    '    AND vm_idmotivo = mo_id '+
    '    AND rv_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND rv_estableci = '+ SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND rv_tipo = '+SqlValue(fraTipoFet.Value)+
    '    AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+
    '    AND vm_idmotivo in (56, 57) '+
    '    AND rv_fechabaja IS NULL ');
  if fechaNotificacion <> 0 then
    edFechaRecepcion.Date := fechaNotificacion
  else begin
    fechaNotificacion :=  ValorSqlDateTime(
    ' SELECT MAX (rv_fechanotificacion) '+
    '   FROM art.prv_resvisitas, hys.hvm_visitamotivo, art.pmo_motivos '+
    '  WHERE vm_idvisita = rv_id '+
    '    AND vm_idmotivo = mo_id '+
    '    AND rv_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND rv_tipo = '+SqlValue(fraTipoFet.Value)+
    '    AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+
    '    AND vm_idmotivo in (56, 57) '+
    '    AND rv_fechabaja IS NULL ');
    if (fechaNotificacion <> 0) then
      edFechaRecepcion.Date := fechaNotificacion;
  end;
  if ExisteSql(
    ' SELECT 1 '+
    '   FROM DUAL '+
    '  WHERE EXISTS ( '+
    '        SELECT 1 '+
    '          FROM hys.hcn_cabeceranomina '+
    '         WHERE cn_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '           AND cn_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
    '           AND TO_CHAR (cn_fecharelevamiento, ''YYYY'') = '+
    '               TO_CHAR (ADD_MONTHS (TO_DATE '+
    '               (art.hys.get_operativovigente_empresa (cn_cuit),''YYYYMM''), '+
    '               -1 ), ''YYYY'' )) '+
    '     OR EXISTS ( '+
    '        SELECT 1 '+
    '          FROM art.psr_sinriesgo '+
    '         WHERE sr_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '           AND sr_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Value)+
    '           AND TO_CHAR (sr_fecha, ''YYYY'') = '+
    '               TO_CHAR (ADD_MONTHS (TO_DATE '+
    '               (art.hys.get_operativovigente_empresa (sr_cuit),''YYYYMM''), '+
    '               -1 ), ''YYYY''))') then
  begin
    rbGroupItem4.ItemIndex := 0;
  end
  else
    rbGroupItem4.ItemIndex := 1;

end;

procedure TfrmFet.fraPreventorVisitacmbDescripcionDropDown(
  Sender: TObject);
begin
  if (trim(fraPreventorVisita.cmbDescripcion.Text) <> '') and
     (trim(fraPreventorVisita.cmbDescripcion.Text)[1] <> '%') then
      fraPreventorVisita.cmbDescripcion.Text := '%' + fraPreventorVisita.cmbDescripcion.Text;
  fraPreventorVisita.cmbDescripcionDropDown(Sender);
  if (trim(fraPreventorVisita.cmbDescripcion.Text) <> '') and
     (trim(fraPreventorVisita.cmbDescripcion.Text)[1] = '%') then
      fraPreventorVisita.cmbDescripcion.Text := copy(fraPreventorVisita.cmbDescripcion.Text, 2, length(fraPreventorVisita.cmbDescripcion.Text));
end;

procedure TfrmFet.btnExportadoClick(Sender: TObject);
var
  sqlText : String;
  i: integer;
begin
  if Validar and (fpNoExportar.ShowModal = mrOk) then
  begin
    Guardar;

    sqlText := 'DECLARE ' +
               'PRAGMA AUTONOMOUS_TRANSACTION; ' +
               'BEGIN ';
(*
    EjecutarSqlST(      'DECLARE ' +
                        'PRAGMA AUTONOMOUS_TRANSACTION; ' +
                        'BEGIN ' +
                        'UPDATE art.pet_empresastestigo ' +
                        '   SET et_fechaexport = SYSDATE, ' +
                        '       et_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE et_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND et_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND et_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND et_operativo = ' + SqlValue (fraOperativo.Codigo) +
                        '   AND et_fechabaja IS NULL; ' +

                        'UPDATE art.pan_anexo2 ' +
                        '   SET an_fechaexport = SYSDATE, ' +
                        '       an_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE an_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND an_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND an_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND an_operativo = ' + SqlValue (fraOperativo.Codigo) + '; ' +

                        'UPDATE art.pre_recomendaciones ' +
                        '   SET re_fechaexport = SYSDATE, ' +
                        '       re_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE re_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND re_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND re_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND re_operativo = ' + SqlValue (fraOperativo.Codigo) +
                        '   AND re_fechabaja IS NULL; ' +
                        'COMMIT; ' +
                        'END;'
                   )
*)
    for i := 0 to clbNoExportar.Items.Count - 1 do
      if clbNoExportar.Checked[i] then
        case StrToInt(clbNoExportar.Values[i]) of
          // Anexo 1 & 3
          1: sqlText := sqlText +
                        'UPDATE art.pet_empresastestigo ' +
                        '   SET et_fechaexport = SYSDATE, ' +
                        '       et_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE et_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND et_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND et_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND et_operativo = ' + SqlValue (fraOperativo.Codigo) +
                        '   AND et_fechabaja IS NULL; ';
          // Anexo 2 & 4
          2: sqlText := sqlText +
                        'UPDATE art.pan_anexo2 ' +
                        '   SET an_fechaexport = SYSDATE, ' +
                        '       an_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE an_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND an_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND an_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND an_operativo = ' + SqlValue (fraOperativo.Codigo) + '; ';
          // Diagn�sticos
          3: sqlText := sqlText +
                        'UPDATE pde_diagestableci ' +
                        '   SET de_fechaexport = SYSDATE,' +
                        '       de_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE de_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND de_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND de_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND de_operativo = ' + SqlValue (fraOperativo.Codigo) +
                        '   AND de_fechabaja IS NULL; ';
          // Recomendaciones
          4: sqlText := sqlText +
                        'UPDATE art.pre_recomendaciones ' +
                        '   SET re_fechaexport = SYSDATE, ' +
                        '       re_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE re_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND re_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND re_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND re_operativo = ' + SqlValue (fraOperativo.Codigo) +
                        '   AND re_fechabaja IS NULL; ';
          // Visitas
          5: sqlText := sqlText +
                        'UPDATE art.prv_recvisitas ' +
                        '   SET rv_fechaexport = SYSDATE, ' +
                        '       rv_usuexport = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE rv_cuit = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND rv_estableci = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND rv_tipo = ' + SqlValue (fraTipoFet.Value) +
                        '   AND rv_operativo = ' + SqlValue (fraOperativo.Codigo) +
                        '   AND rv_fechabaja IS NULL; ';
          // Aviso de Obra
          6: sqlText := sqlText +
                        'UPDATE PAO_AVISOOBRA ' +
                        '   SET AO_FECHAEXPORT = SYSDATE, ' +
                        '       AO_USUEXPORT = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                        ' WHERE AO_CUIT = ' + SqlValue (fraEmpresa.mskCUIT.Text) +
                        '   AND AO_ESTABLECI = ' + SqlValue (fraEstableciBusq.edCodigo.Value) +
                        '   AND AO_TIPO = ' + SqlValue (fraTipoFet.Value) +
                        '   AND AO_OPERATIVO = ' + SqlValue (fraOperativo.Codigo) + '; '
         end;

    sqlText := sqlText +
               'COMMIT; ' +
               'END;';

    EjecutarSqlST(sqlText)
  end
end;

procedure TfrmFet.tbEstablecimientosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAbmTipoEstablecimientoPreventor, frmAbmTipoEstablecimientoPreventor);

  if fraEmpresa.IsSelected then
    frmAbmTipoEstablecimientoPreventor.fraEmpresaFiltro.CUIT := fraEmpresa.Cuit;
  frmAbmTipoEstablecimientoPreventor.btnGuardar.Visible := false;

  frmAbmTipoEstablecimientoPreventor.ShowModal;
end;

procedure TfrmFet.tbAfiliacionesClick(Sender: TObject);
var
  establecimiento : Integer;
begin
  with TfrmContratoEstablecimiento.Create(Self) do
  try
    if FIDAvisoObraWeb > 0 then
      SetIDAvisoObraWeb(FIDAvisoObraWeb);
    if btnGuardar.Enabled then
      SetAutoCommit(true)
    else
      SetAutoCommit(false);
    DoCargarDatos(fraEmpresa.Contrato);
    sdqDatos.DisableControls;
    sdqDatos.AfterScroll := nil;
    sdqDatos.First;
    if fraEstableciBusq.IsSelected then
      while not sdqDatos.Eof and (sdqDatos.FieldByName('es_nroestableci').AsString <> fraEstableciBusq.edCodigo.Text) do
        sdqDatos.Next;
    Visible := false;
    sdqDatosAfterScroll(nil);
    sdqDatos.EnableControls;
    sdqDatos.AfterScroll := sdqDatosAfterScroll;
    ShowModal;
  finally
    Free;
  end;
  establecimiento := fraEstableciBusq.Value;
  fraEstableciBusq.Value := establecimiento;
  edCPA.Text := fraEstableciBusq.CPostalA;
  CargaFechasAnexo1;
end;

procedure TfrmFet.tbCargaDiferidaClick(Sender: TObject);
begin
  FHabilitarCargaDiferida := not FHabilitarCargaDiferida;

  if FHabilitarCargaDiferida then
  begin
    tbCargaDiferida.Hint := 'Deshabilitar carga ' + #13 + 'del operativo no actual (F8)';
    lblModoConsulta.Visible := false
  end
  else begin
    tbCargaDiferida.Hint := 'Habilitar carga ' + #13 + 'del operativo no actual (F8)';
    lblModoConsulta.Visible := fraOperativo.Codigo <> ValorSql ('SELECT art.hys.get_operativovigente_empresa (' +
                                                                SQLValue (fraEmpresa.CUIT) + ', SYSDATE) FROM DUAL');
  end;

  btnGuardar.Enabled := not lblModoConsulta.Visible;
  btnExportado.Enabled := btnGuardar.Enabled;
end;

procedure TfrmFet.fpNoExportarShow(Sender: TObject);
begin
  with clbNoExportar do
  begin
    Items.Clear;
    Values.Clear;

    if fraTipoFet.Codigo = 'EP' then
    begin
      Add ('Anexo 3', '1');
      Add ('Anexo 4', '2');
      Add ('Diagn�sticos', '3');
      Add ('Recomendaciones', '4');
      Add ('Seguimientos (Visitas)', '5');
      Add ('Aviso de Obra', '6');
    end
    else
      if fraTipoFet.Codigo = 'ET' then
      begin
        Add ('Anexo 1', '1');
        Add ('Anexo 2', '2');
        Add ('Diagn�sticos', '3');
        Add ('Recomendaciones', '4');
        Add ('Seguimientos (Visitas)', '5');
        Add ('Aviso de Obra', '6');
      end
    else
      if fraTipoFet.Codigo = 'CO' then
      begin
        Add ('Anexo 2', '2');
        Add ('Aviso de Obra', '6');
      end
      else begin
        Add ('Anexo 1', '1');
      end
  end;
end;

procedure TfrmFet.Button1Click(Sender: TObject);
begin
  fpNoExportar.ModalResult := mrOk
end;

procedure TfrmFet.fraEstableciBusqcmbDescripcionDropDown(Sender: TObject);
begin
  fraEstableciBusq.cmbDescripcionDropDown(Sender);
end;
{
procedure TfrmFet.ActualizarVisita;
begin
  EjecutarSqlST(' UPDATE hys.hep_estabporpreventor ' +
                ' SET ep_fechaultvisita = (SELECT MAX(RV_FECHA) ' +
                '                          FROM ART.PRV_RESVISITAS ' +
                '                          WHERE RV_CUIT = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                '                          AND RV_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Value) +
                '                          AND RV_FECHABAJA IS NULL AND RV_IDVISITAASOCIADA IS NULL) ' +
                ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Value));

  EjecutarSqlST(' UPDATE hys.hep_estabporpreventor ' +
                ' SET ep_preventorultvisita = (SELECT MAX(IT_ID) ' +
                '                              FROM ART.PRV_RESVISITAS, ART.PIT_FIRMANTES ' +
                '                              WHERE RV_CUIT = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                '                              AND RV_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Value) +
                '                              AND RV_FECHABAJA IS NULL AND RV_IDVISITAASOCIADA IS NULL ' +
                '                              AND EP_FECHAULTVISITA = RV_FECHA AND IT_CODIGO = RV_FIRMANTE) ' +
                ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Value));

  EjecutarSqlST(' UPDATE hys.hep_estabporpreventor ' +
                ' SET ep_cantvisitas = (SELECT COUNT(*) ' +
                '                       FROM art.prv_resvisitas, hys.hco_cuitoperativo, hys.hvo_vigenciaoperativo ' +
                '                       WHERE rv_cuit = co_cuit ' +
                '                       AND rv_fechabaja IS NULL ' +
                '                       AND rv_cuit = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                '                       AND rv_estableci = ' + SqlValue(fraEstableciBusq.edCodigo.Value) +
                '                       AND rv_fecha >= vo_vigenciadesde ' +
                '                       AND rv_fecha <= NVL(vo_vigenciahasta, rv_fecha) ' +
                '                       AND rv_idvisitaasociada IS NULL ' +
                '                       AND co_id = ep_idcooperativo ' +
                '                       AND vo_operativo = co_operativo ' +
                '                       AND vo_tipo = co_tipo) ' +
                ' WHERE EP_CUIT = ' + SqlValue(fraEmpresa.mskCuit.Text) +
                ' AND EP_ESTABLECI = ' + SqlValue(fraEstableciBusq.edCodigo.Value));

end;
}
procedure TfrmFet.cbMotivosClickCheck(Sender: TObject);
var i :integer;
flag : Boolean;
begin
  i := 0;
  flag := False;
  edOrigen.Visible :=  False;
  lbArchivoOrigen.Visible := False;
  while i < cbMotivos.Items.Count do
  begin
    if cbMotivos.Checked[i] and ((StrToInt(cbMotivos.Values[i]) = 56) or (StrToInt(cbMotivos.Values[i]) = 57)) then
    begin
     chkTraspaso.Visible := true;
     edFechaNotificacion.Visible := True;
     if edFechaNotificacion.Date = 0 then
       edFechaNotificacion.Date    := edFechaVisita.Date;
     lbFechaNotificacion.Visible := True;
     flag := True;
    end;
    if cbMotivos.Checked[i] and ((StrToInt(cbMotivos.Values[i]) = 121) or (StrToInt(cbMotivos.Values[i]) = 122)) then
    begin
      edOrigen.Visible :=  True;
      lbArchivoOrigen.Visible := True;
    end;
    i:= i+1;
  end;
  if not flag then
  begin
    edFechaNotificacion.Visible := False;
    lbFechaNotificacion.Visible := False;
    chkTraspaso.Visible := false;
    chkTraspaso.Checked := false;
    edFechaNotificacion.Clear;
  end;
end;

procedure TfrmFet.cbSinFirmasAnexo2Click(Sender: TObject);
var
  i : Integer;
begin
  if cbSinFirmasAnexo2.Checked then
    for i := 0 to chkNivelFirmas.Items.Count - 1 do
      chkNivelFirmas.Checked[i] := False;
end;

procedure TfrmFet.tbSumarioClick(Sender: TObject);
begin
  with TfrmConsultaDictamenesAcustorios.Create(Self) do
  try
    FormStyle := fsNormal;
    Visible := false;
    fraEmpresaDemandante.mskCUIT.Text := fraEmpresa.mskCUIT.Text;
    tbRefrescarClick(nil);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmFet.tbHistoricoPlanMejorasClick(Sender: TObject);
begin
  with TfrmHistoricoPlanMejoras.Create(Self) do
  try
    CUIT   := fraEmpresa.mskCUIT.Text ;
    Estableci := fraEstableciBusq.edCodigo.Value;
    Load;
    Visible := false;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmFet.btnFechaViaticosClick(Sender: TObject);
begin
  if FFEntregaViaticos <> 0 then
    edFechaViaticos.date := FFEntregaViaticos;
end;

procedure TfrmFet.tbConstanciaVisitasClick(Sender: TObject);
begin
  if ExisteSql(
    ' SELECT 1 '+
    '   FROM afi.aco_contrato, afi.aem_empresa '+
    '  WHERE co_idempresa = em_id '+
    '    AND co_contrato = art.get_vultcontrato (em_cuit) '+
    '    AND em_cuit = '+SqlValue(fraEmpresa.CUIT)+
    '    AND co_totempleados = 0 ') and (fraTipoFet.Codigo = 'GB') then
  begin
    MsgBox('No se puede imprimir la visita porque tiene capitas cero.');
  end
  else
  begin
    chkMedidas.Checked := true;
    chkPRSPAPE.Enabled := AreIn(fraTipoFet.Codigo, ['ET', 'EP']);
    chkPRSPAPE.Checked := chkPRSPAPE.Enabled;
    dedFechaVisita.Clear;
    dedFechaVisita.Enabled := chkPRSPAPE.Enabled;
    chkPal.Enabled := chkPRSPAPE.Enabled;

    if AreIn(fraTipoFet.Codigo, ['ET', 'EP'])then
      chkMedidas.Caption := 'Medidas incluir PRS/PAPE'
    else
      chkMedidas.Caption := 'Medidas';

    if (fpConstancias.ShowModal = mrOk) then
      ArmarConstanciaVisita( fraEmpresa.CUIT ,fraEstableciBusq.edCodigo.Value, fraTipoFet.Codigo,
                             fraOperativo.Codigo,chkMedidas.Checked, chkPRSPAPE.Checked, chkPal.Checked, dedFechaVisita.Date);
  end
end;

procedure TfrmFet.btnAceptarConstanciaClick(Sender: TObject);
begin
  VerificarMultiple (['Constancia de Visita',
                      dedFechaVisita,
                      (not chkPRSPAPE.Checked) or
                      (chkPRSPAPE.Checked and IsValidDate (dedFechaVisita.Text, 'DD/MM/YYYY')),
                      'La fecha es inv�lida']);
  if chkPal.Checked then
        Verificar( dedFechaVisita.Date = 0, dedFechaVisita, 'Debe seleccionar una fecha.' );
  fpConstancias.ModalResult := mrOk
end;

procedure TfrmFet.fpVisitaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = 82) or (Key = 114))  then
    btnFechaViaticos.Click;
end;

procedure TfrmFet.tbConstanciaVistasVaciaClick(Sender: TObject);
var
  sCondicionExtra,
  sConsulta,
  sCIIU,   sOperativo: String;
begin
  if ExisteSql(
    ' SELECT 1 '+
    '   FROM afi.aco_contrato, afi.aem_empresa '+
    '  WHERE co_idempresa = em_id '+
    '    AND co_contrato = art.get_vultcontrato (em_cuit) '+
    '    AND co_contrato = '+SqlValue(fraEmpresa.Contrato)+
    '    AND co_totempleados = 0 ') and (fraTipoFet.Codigo = 'GB') then
  begin
    MsgBox('No se puede imprimir la visita porque tiene capitas cero.');
  end
  else
  begin
  
    chkMedidas.Checked := true;
    chkPRSPAPE.Enabled := AreIn(fraTipoFet.Codigo, ['ET', 'EP']);
    chkPRSPAPE.Checked := chkPRSPAPE.Enabled;
    dedFechaVisita.Clear;
    dedFechaVisita.Enabled := chkPRSPAPE.Enabled;


      sCondicionExtra := '';
      sConsulta := '';

    sOperativo := ValorSql ('SELECT co_operativo ' +
                            '  FROM hys.hco_cuitoperativo hco1 ' +
                            ' WHERE co_operativo = ' +
                            '         (SELECT MAX(hco2.co_operativo) ' +
                            '            FROM hys.hco_cuitoperativo hco2 ' +
                            '           WHERE co_operativo <> ' +
                            '                   (SELECT co_operativo ' +
                            '                      FROM hys.hco_cuitoperativo hco3 ' +
                            '                     WHERE co_id = art.hys.get_idoperativovigente_empresa(co_idempresa, SYSDATE) ' +
                            '                       AND hco2.co_idempresa = hco3.co_idempresa ' +
                            '                       AND co_tipo = ''GB'') ' +
                            '             AND hco1.co_idempresa = hco2.co_idempresa) ' +
                            '   AND hco1.co_tipo IN(''ET'', ''EP'') ' +
                            '   AND co_cuit = ' + SqlValue(fraEmpresa.CUIT));

    if sOperativo <> '' then
      sCondicionExtra := '   AND dd_operativo > ' + SqlValue(sOperativo);


    if AreIn(fraTipoFet.Codigo, ['ET', 'EP']) then
      sCondicionExtra := '    AND dd_tipo = ' + SqlValue(fraTipoFet.Codigo);


    // CIIU del Establecimiento
      sCIIU := ValorSql('SELECT art.hys.get_codactividadrevdos(ac_id, ac_revision) ' +
                        '  FROM comunes.cac_actividad ' +
                        ' WHERE ac_codigo = ' + SqlValue(fraEstableciBusq.Actividad));
    // CIIU de la Empresa si no existe para el Estab.
      sCIIU := iif (sCIIU = '',
                    ValorSQL ('SELECT art.hys.get_codactividadrevdos(ac_id, ac_revision) ' +
                              '  FROM afi.aco_contrato, comunes.cac_actividad ' +
                              ' WHERE co_contrato = ' + SqlValue(fraEmpresa.edContrato.Text) +
                              '   AND co_idactividad = ac_id '),
                    sCIIU);

    ArmarConstanciaVisitaVacia( fraEmpresa.CUIT ,fraEstableciBusq.edCodigo.Value, fraTipoFet.Codigo,
                             sOperativo,chkMedidas.Checked, chkPRSPAPE.Checked, chkPal.Checked, dedFechaVisita.Date);
  end;
end;

procedure TfrmFet.tbAnexo2VacioClick(Sender: TObject);
var
  tipoAnexo2 : String;
begin
  tipoAnexo2 :=  GetListViewActive.Items[GetListViewActive.Items.Count-1].SubItems[2];
  with TrptAnexo2.Create(Self) do
  try
    Load(fraEmpresa.mskCUIT.Text,fraEstableciBusq.edCodigo.Value,'','',tipoAnexo2);
  finally
    Free;
  end;
end;

procedure TfrmFet.tbAnexo2Click(Sender: TObject);
var
  tipoAnexo2 : String;
begin
  tipoAnexo2 :=  GetListViewActive.Items[GetListViewActive.Items.Count-1].SubItems[2];
  with TrptAnexo2.Create(Self) do
  try
    Load(fraEmpresa.mskCUIT.Text,fraEstableciBusq.edCodigo.Value,fraTipoFet.Codigo,fraOperativo.Codigo, tipoAnexo2);
  finally
    Free;
  end;
end;

procedure TfrmFet.btCambioVisitaClick(Sender: TObject);
begin
  if sdqVisitas.IsEmpty then
    MsgBox('No hay visita para cambiar.')
  else
  begin
    if (MsgBox('�Desea cambiar la visita seleccionada al tipo : '+fraTipoFet.Codigo +
        ' y operativo :'+fraOperativo.Codigo  +'?',  MB_ICONQUESTION + MB_YESNO,
        'Cambiar Visita') = IDYES) then
    begin
      EjecutarSqlST(
        ' UPDATE art.prv_resvisitas '+
        '    SET rv_tipo = '+SqlValue(fraTipoFet.Codigo)+','+
        '        rv_operativo = '+ SqlValue(fraOperativo.Codigo)+
        '  WHERE rv_id = '+SqlValue(sdqVisitas.FieldByName('rv_id').AsInteger));
      btnRefrescarVisitasClick(nil);
    end;
  end;
end;

function TfrmFet.ValidaDenuncias: Boolean;
var
  DenInc, Diagnostico, Recomendaciones : Integer;
  fechadesde: TDate;
  sExtraCond: String;
begin
  if (fraTipoFet.Value = 'ET') then
  begin
    fechadesde := ValorSqlDateTime( ' SELECT vo_vigenciadesde '+
                                    '   FROM hys.hvo_vigenciaoperativo '+
                                    '  WHERE vo_operativo = '+ SqlValue(fraOperativo.Codigo)+
                                    '    AND vo_tipo = '+SqlValue(fraTipoFet.Codigo));
    sExtraCond := ' AND OD_FECHA >= ' + SqlValue(fechadesde);
  end;

  DenInc := ValorSql(
    ' SELECT count(*) '+
    '   FROM POD_OBRADENUNCIA '+
    '  WHERE OD_CUIT = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND OD_FECHABAJA IS NULL '+
    '    AND (OD_TIPO = '+SqlValue(fraTipoFet.Codigo)+' OR '+SqlValue(fraTipoFet.Codigo)+' IS NULL) '+
    '    AND (OD_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+' OR '+SqlValue(fraOperativo.Codigo)+' IS NULL) '+
    '    AND OD_ESTABLECI = '+SqlValue(fraEstableciBusq.edCodigo.Text) + sExtraCond);

  Diagnostico := ValorSql(
    ' SELECT COUNT(*) '+
    '   FROM PDE_DIAGESTABLECI ' +
    '  WHERE DE_CUIT = '+ SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND DE_ESTABLECI = '+ SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND DE_TIPO = '+SqlValue(fraTipoFet.Codigo)+
    '    AND DE_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+
    '    AND DE_FECHABAJA IS NULL ');

  Recomendaciones := ValorSql(
    ' SELECT COUNT(*) '+
    '   FROM PRE_RECOMENDACIONES ' +
    '  WHERE RE_CUIT = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND RE_ESTABLECI = '+ SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND RE_TIPO = ' + SqlValue(fraTipoFet.Codigo)+
    '    AND RE_OPERATIVO = '+ SqlValue(fraOperativo.Codigo)+
    '    AND RE_FECHABAJA IS NULL');
  If (DenInc > 0) or (Diagnostico > 0) or (Recomendaciones > 0) then
    Result := True
  else
    Result := False;


end;

function TfrmFet.ValidaAnexoFicticio: Boolean;
begin
  if (((edItem1.Value = 999999) and
      (edItem5.Value = 9999) and (edItem6.Value = 9999) and
      (edItem6_1.Value = 9999) and (edItem6_1_A.Value = 0) and
      (edItem6_1_B.Value = 0) and (edItem6_2.Value = 0) and
      (edItem6_2_A.Value = 0) and (edItem6_2_B.Value = 0) and
      (edHorasHombre.Value = 999999) and (edCantidadtrabajadorasMujeres.Value = 999999) and
      (edCantidadDiasNoTrabajados.Value = 999999) and
      (edCantidadtrabajadoresHombres.Value = 999999))
    or
      ((edItem4.Value = 999999) and (edItem5.Value = 9999) and
      (edItem6.Value = 9999) and (edItem6_1.Value = 9000) and
      (edItem6_1_A.Value = 9000) and (edItem6_1_B.Value = 0) and
      (edItem6_2.Value = 999) and (edItem6_2_A.Value = 0) and
      (edItem6_2_B.Value = 0)))then
    Result := True
  else
    Result := False;
end;

Function TfrmFet.ImportarPRS(IDVisita : Integer) : Boolean;
var
  fechaVisita : TDate;
  WorkBk : _WorkBook;
  F: file of {$IFDEF VER150}Char{$ELSE}AnsiChar{$ENDIF};
  Buf: array[1..100] of {$IFDEF VER150}Char{$ELSE}AnsiChar{$ENDIF};
  NumRead: Integer;
   i, j, diagAnt, recAnt : integer;
  listReporteError,listError,campos, listString, cabecera : TStringList;
  sArchivoLOG, variable, Cuit, Estableci  : string;
  error, modoDiagnostico, modoRecomendaciones, errorConsecutividad : Boolean;
  S: String;
begin
  //completar
  fechaVisita := ValorSqlDateTime('SELECT RV_FECHA FROM art.prv_resvisitas WHERE rv_id = '+SqlValue(IdVisita));
  result := false;
  error := False;
  errorConsecutividad := False;
  listString := TStringList.Create;
  listError := TStringList.Create;
  cabecera := TStringList.Create;
  campos := TStringList.Create;
  diagAnt := 0;
  recAnt := 0;
  listReporteError := TStringList.Create;
  try
    try
    // Open the Excel File
      WorkBk := ExcelApplication.Workbooks.Open(edOrigen.FileName, Null, Null,
                                                Null, Null, Null,
                                                Null, Null, Null,
                                                Null, Null, Null, Null, LCID_1);
      DeleteFile(edOrigen.InitialDir+'\Origen.csv');
      WorkBk.SaveAs(edOrigen.InitialDir+'\Origen.csv',xlCSV,Null, Null, Null, Null,
                                xlNochange,Null, Null, Null, Null, LCID_1);
    except
      WorkBk.Close(True, edOrigen.FileName, EmptyParam, LCID_1);
      ExcelApplication.Quit;
      ExcelApplication.Disconnect;
    end;
  finally
    WorkBk.Close(false, edOrigen.FileName, EmptyParam, LCID_1);
    ExcelApplication.Quit;
    ExcelApplication.Disconnect;
  end;

  try

    S := '';
    AssignFile(F, edOrigen.InitialDir+'\Origen.csv');
    Reset(F);
    repeat
      BlockRead(F, Buf, SizeOf(Buf), NumRead);
      S := S  + copy(Buf, 1, NumRead);
    until (NumRead = 0);
    CloseFile(F);

    S := StringReplace(S, #$D#$A, #$1#$1, [rfReplaceAll]);
    S := StringReplace(S, #$A, ' ', [rfReplaceAll]);
    S := StringReplace(S, #$D, ' ', [rfReplaceAll]);
    S := StringReplace(S, #$1#$1, #13#10, [rfReplaceAll]);

    listString.Text := S;
    i := 0;
    variable := StringReplace(listString.Strings[i],'"','',[rfReplaceAll]);
    SubString(variable,';',cabecera);
    Cuit := trim(Cabecera.Strings[0]);
    Estableci := trim(cabecera.Strings[1]);
    modoDiagnostico := False;
    modoRecomendaciones := False;
    listError.Clear;
    if (fraTipoFet.Codigo = 'ET') and (edItem4.IsEmpty or edItem5.IsEmpty or edItem6.IsEmpty) then
    begin
      MsgBox('No existe Anexo 1.');
        Exit;
    end;
    if (fraTipoFet.Codigo = 'EP') and ((rbGroupItem4.ItemIndex = -1) or edItem5.IsEmpty or edItem6.IsEmpty) then
    begin
      MsgBox('No existe Anexo 3.');
        Exit;
    end;
    if (fraTipoFet.Codigo = 'ET') and (Anexo1_IsEmpty) then
    begin
      MsgBox('No existe Anexo 2.');
      Exit;
    end;
    if (fraTipoFet.Codigo = 'EP') and (Anexo1_IsEmpty) then
    begin
        MsgBox('No existe Anexo 4.');
        Exit;
    end;
    if (Cuit <> fraEmpresa.mskCUIT.Text) or (Estableci <> fraEstableciBusq.edCodigo.Text) then
    begin
      if (Cuit <> fraEmpresa.mskCUIT.Text) then
        MsgBox('El Cuit no corresponde con el que se esta asignando.')
      else
        MsgBox('El establecimiento no corresponde con el que se esta asignando.');
    end
    else
    if not ExisteSql(
      ' SELECT 1 '+
      '   FROM DUAL '+
      '  WHERE art.hys.get_tipo_estab_srt ( '+SqlValue(Cuit)+', '+
      SqlValue(Estableci)+', SYSDATE) IN (''ET'', ''EP'')') then
    begin
      MsgBox('El establecimiento no es ET ni EP.');
    end
    else
    begin
      listReporteError.Add(Cuit+';'+Estableci);
      for i := 1 to listString.Count-1 do
      begin
        listError.Clear;
        campos.Clear;
        if not errorConsecutividad then
        begin
          variable := StringReplace(listString.Strings[i],'"','',[rfReplaceAll]);
          SubString(variable,';',campos);
          if variable <> '' then
          if UpperCase(campos.Strings[0]) =  'DIAGNOSTICOS' then
          begin
            listReporteError.Add('DIAGNOSTICOS');
            modoDiagnostico := true;
          end
          else
          if UpperCase(trim(campos.Strings[0])) = 'RECOMENDACIONES' then
          begin
            listReporteError.Add('RECOMENDACIONES');
            modoRecomendaciones := true;
          end
          else
          begin
            if (variable[1]<> '#') and (variable <> '') and ((campos.Strings[0] <> '') and (campos.Strings[1] <> '') and (campos.Strings[4] <> '')) then
            begin
              if modoDiagnostico and not modoRecomendaciones then
              begin //Modo Diagnostico
              //campo 0 nro diagnostico
              //campo 1 tipo Diagnostico
              //campo 2 Sector
              //campo 3 Trabajadores
              //campo 4 Causal/riesgo

                if (diagAnt <> 0) and (diagant+1 <> StrToInt(trim(campos.Strings[0]))) then
                begin
                  MsgBox('No hay consecutividad, se guardo hasta el Diagn�stico '+IntToStr(diagAnt));
                  errorConsecutividad := True;
                end
                else
                begin
                  diagAnt := StrToInt( trim(campos.Strings[0]));

        {*****************************************************************************}
        {                             Verificaciones                                  }
        {*****************************************************************************}
                  if (trim(campos.Strings[1]) = '') then
                  begin
                    if not error then
                      listError.Add('#Diagn�stico.');
                    error := true;
                    listError.Add('#Debe especificar el tipo de Diagn�stico.');
                  end;
                  if (fraTipoFet.Codigo = 'EP') and  (trim(campos.Strings[2]) = '') then
                  begin
                    if not error then
                      listError.Add('#Diagn�stico.');
                    error := true;
                    listError.Add('#Debe especificar el puesto de trabajo.');
                  end;
                  if (trim(campos.Strings[4]) = '') then
                  begin
                    if not error then
                      listError.Add('#Diagn�stico.');
                    error := true;
                    listError.Add('#Debe especificar la Descripci�n del Diagn�stico.');
                  end;
        {******************************************************************************}
                  if not error then
                  begin
                    if ExisteSql(
                      ' SELECT 1 '+
                      '   FROM pde_diagestableci '+
                      '  WHERE de_cuit = '+SqlValue(Cuit)+
                      '    AND de_estableci = '+SqlValue(Estableci)+
                      '    AND de_tipo = '+SqlValue(fraTipoFet.Codigo)+
                      '    AND de_operativo = '+SqlValue(fraOperativo.Codigo)+
                      '    AND de_diagnostico = '+SqlValue(trim(campos.Strings[0]))) then
                    begin
                      EjecutarSqlST(
                        ' UPDATE PDE_DIAGESTABLECI ' +
                        '    SET DE_TIPO_DIAGNOSTICO = '+SqlValue(trim(campos.Strings[1]))+', ' +
                        '        DE_DESCRIPCION1 = ' + SqlString(Copy(trim(campos.Strings[4]),0, 4000),True)+ ', ' +
                        '        DE_DESCRIPCION2 = ' + SqlString(Copy(trim(campos.Strings[4]), 4001, 3900),True) + ', ' +
                        '        DE_SECTOREMPRESA = ' + SqlValue(campos.Strings[2]) + ', ' +
                        '        DE_TRABAJADORESEXPUESTOS = ' + SqlValue(trim(campos.Strings[3])) + ', ' +
                        '        DE_FECHAMODIF = SYSDATE, ' +
                        '        DE_USUMODIF = '+ SqlValue(frmPrincipal.DBLogin.LoginName)+', '+
                        '        DE_FECHABAJA = NULL, '+
                        '        DE_USUBAJA = NULL'+
                        '  WHERE DE_CUIT = '+SqlValue(Cuit)+
                        '    AND DE_ESTABLECI = ' +SqlValue(Estableci)+
                        '    AND DE_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                        '    AND DE_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+
                        '    AND DE_DIAGNOSTICO = ' +SqlValue(trim(campos.Strings[0])));
                    end
                    else
                    begin
                      EjecutarSqlST(
                        ' INSERT INTO PDE_DIAGESTABLECI ' +
                        '             (DE_CUIT, DE_ESTABLECI, DE_TIPO, DE_OPERATIVO, DE_DIAGNOSTICO, DE_TIPO_DIAGNOSTICO, DE_DESCRIPCION1, DE_DESCRIPCION2, DE_SECTOREMPRESA, DE_TRABAJADORESEXPUESTOS, DE_FECHAALTA, DE_USUALTA) ' +
                        '      VALUES ('+SqlValue(Cuit)+', ' +SqlValue(Estableci)+', '+SqlValue(fraTipoFet.Codigo)+', '+SqlValue(fraOperativo.Codigo)+', ' +SqlValue(trim(campos.Strings[0])) + ', '+SqlValue(trim(campos.Strings[1]))+ ', ' +
                            SqlString(Copy(trim(campos.Strings[4]),0, 4000),True)+ ', '+ SqlString(Copy(trim(campos.Strings[4]), 4001, 3900),True) + ', ' +
                            SqlValue(trim(campos.Strings[2])) + ', ' + SqlValue(trim(campos.Strings[3])) + ', ' +
                            'SYSDATE, '+ SqlValue(frmPrincipal.DBLogin.LoginName)+')' );
                    end;
                  end;
                end;
              end
              else
                if modoDiagnostico and  modoRecomendaciones then
                begin //Modo Recomendaciones
                //campo 0 Rec.
                //campo 1 RECOMENDACIONES ACORDADAS
                //campo 2 Responsable de ejecucion
                //campo 3 FechaCumplim.
                //campo 4 FechaSeguim.
                //campo 5 CA y RPAsociados

                  if (recAnt <> 0) and (recAnt+1 <> StrToInt(trim(campos.Strings[0]))) then
                  begin
                    MsgBox('No hay consecutividad, se guardo hasta la Recomendaci�n '+IntToStr(recAnt));
                    errorConsecutividad := True;
                  end
                  else
                  begin
                    recAnt := StrToInt( trim(campos.Strings[0]));
                  {*****************************************************************************}
                  {                             Verificaciones                                  }
                  {*****************************************************************************}
                    if (fraTipoFet.Codigo = 'EP') and  (trim(campos.Strings[2]) = '') then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#Debe especificar el responsable de ejecuci�n.');
                    end;
                    if (trim(campos.Strings[1]) = '') then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#Debe especificar la Descripci�n de la Recomendaci�n.');
                    end;
                    if not IsValidDate (trim(campos.Strings[3]), 'DD/MM/YYYY') then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#Debe especificar la Fecha de Cumplimiento.');
                    end;
                    if not IsValidDate (trim(campos.Strings[4]), 'DD/MM/YYYY') then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#Debe especificar la Fecha de Seguimiento.');
                    end;
                    if fechaVisita > StrToDate(trim(campos.Strings[3]))then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#La fecha de visita no debe ser mayor a la fecha de cumplimiento.');
                    end;
                    if fechaVisita > StrToDate(trim(campos.Strings[4]))    then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#La fecha de visita no debe ser mayor a la fecha de Seguimiento.');
                    end;
                    if StrToDateFmt('DD/MM/YYYY' ,trim(campos.Strings[3])) >   StrToDateFmt('DD/MM/YYYY' ,trim(campos.Strings[4])) then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#El rango de fechas es inv�lido.');
                    end;
                    if (trim(campos.Strings[1]) = '') then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#Debe especificar la Descripci�n de la Recomendaci�n.');
                    end;
                    if not ExisteSql(
                      ' SELECT 1 '+
                      '   FROM hys.hvo_vigenciaoperativo '+
                      '  WHERE vo_operativo = '+ SqlValue(fraOperativo.Codigo)+
                      '    AND vo_tipo = '+SqlValue(fraTipoFet.Codigo)+
                      '    AND vo_vigenciadesde < '+SqlValue(StrToDateFmt('DD/MM/YYYY' ,trim(campos.Strings[4])))) then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#No puede ser la fecha menor a la vigencia del operativo.');
                    end;

                    if ((campos.count-1) -5) > 10 then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#El l�mite de diagn�sticos por recomendaci�n es 10.');
                    end;
                    if trim(campos.Strings[5]) = '' then
                    begin
                      if not error then
                        listError.Add('#Recomendaci�n.');
                      error := true;
                      listError.Add('#Debe especificar al menos un diagn�stico');
                    end;

                    for j := 5 to campos.Count-1 do
                    begin
                      if trim(campos.Strings[j]) <> '' then
                      if not ExisteSql(
                            ' SELECT 1 '+
                            '   FROM pde_diagestableci '+
                            '  WHERE de_cuit = '+SqlValue(Cuit)+
                            '    AND de_estableci = '+SqlValue(Estableci)+
                            '    AND de_tipo = '+SqlValue(fraTipoFet.Codigo)+
                            '    AND de_operativo = '+SqlValue(fraOperativo.Codigo)+
                            '    AND de_fechabaja is null '+
                            '    AND de_diagnostico = '+SqlValue(trim(campos.Strings[j]))) then
                      begin
                        if not error then
                          listError.Add('#Recomendaci�n.');
                        error := true;
                        listError.Add('#El diagn�stico ' +campos.Strings[j]+' no existe.');
                      end;
                    end;
                  {*****************************************************************************}
                    if not error then
                    begin
                      if ExisteSql(
                        ' SELECT 1 '+
                        '   FROM art.pre_recomendaciones '+
                        '  WHERE re_cuit = '+SqlValue(Cuit)+
                        '    AND re_estableci = '+SqlValue(Estableci)+
                        '    AND re_tipo = '+SqlValue(fraTipoFet.Codigo)+
                        '    AND re_operativo = '+SqlValue(fraOperativo.Codigo) +
                        '    AND re_recomendacion = '+SqlValue(trim(campos.Strings[0]))) then
                      begin
                        EjecutarSqlST(
                              'UPDATE PRE_RECOMENDACIONES ' +
                              '       SET RE_DESCRIPCION1 = ' + SqlString(Copy(trim(campos.Strings[1]),0, 4000), True) + ', ' +
                              '           RE_DESCRIPCION2 = ' + SqlString(Copy(trim(campos.Strings[1]), 4001, 3900), True) + ', ' +
                              '           RE_CUMPLIMIENTO = ' + Sqlvalue (StrToDateFmt('DD/MM/YYYY' ,campos.Strings[3])) + ', ' +
                              '           RE_SEGUIMIENTO  = ' + Sqlvalue (StrToDateFmt('DD/MM/YYYY' ,campos.Strings[4])) + ', ' +
                              '           RE_FECHAMODIF   = SYSDATE, ' +
                              '           RE_RESPONSABLE  = ' + SqlValue(trim(campos.Strings[2])) + ', ' +
                              '           RE_USUMODIF     = ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' +
                              '           RE_IDVISITA     = ' + SqlValue (IdVisita) + ', ' +
                              '           RE_IDFIRMANTE   = ' + SqlValue (fraPreventorVisita.Value) + ', ' +
                              '           RE_NOAMERITA    = ''N'',' +
                              '           RE_USUbaja     = null,'+
                              '           RE_fechabaja     = null'+
                              ' WHERE RE_CUIT = ' + SqlValue(Cuit) + ' ' +
                              '   AND RE_ESTABLECI = ' + SqlInt(Estableci) +
                              '   AND RE_TIPO = ' + SqlValue(fraTipoFet.Codigo) + ' ' +
                              '   AND RE_OPERATIVO = ' + SqlValue(fraOperativo.Codigo) + ' ' +
                              '   AND RE_RECOMENDACION = ' + SqlValue(trim(campos.Strings[0])));
                      end
                      else
                      begin
                        EjecutarSqlST( 'INSERT INTO PRE_RECOMENDACIONES ' +
                            '            (RE_CUIT, RE_ESTABLECI, RE_TIPO, RE_OPERATIVO, ' +
                            '             RE_RECOMENDACION, RE_DESCRIPCION1, RE_DESCRIPCION2, ' +
                            '             RE_CUMPLIMIENTO, RE_SEGUIMIENTO, RE_FECHAALTA, ' +
                            '             RE_USUALTA, RE_RESPONSABLE, RE_IDVISITA, ' +
                            '             RE_IDFIRMANTE, RE_NOAMERITA) ' +
                            '     VALUES ('+SqlValue(Cuit)+', '+SqlValue(Estableci) + ', ' + SqlValue(fraTipoFet.Codigo) + ', ' + SqlValue(fraOperativo.Codigo) + ', '  +
                              SqlValue(trim(campos.Strings[0])) + ', ' + SqlString(Copy(trim(campos.Strings[1]),0, 4000), True) + ', ' + SqlString(Copy(trim(campos.Strings[1]), 4001, 3900), True) + ', ' +
                              Sqlvalue (StrToDateFmt('DD/MM/YYYY' ,trim(campos.Strings[3]))) + ', ' + Sqlvalue (StrToDateFmt('DD/MM/YYYY' ,trim(campos.Strings[4]))) + ', SYSDATE, ' +
                              SqlValue (frmPrincipal.DBLogin.LoginName) + ', ' + SqlValue(trim(campos.Strings[2])) + ', ' +
                              SqlValue (IdVisita)  + ', ' + SqlValue (fraPreventorVisita.Value) + ', ' +
                              ' ''N'' )');
                      end;
                      if fraTipoFet.Codigo = 'ET' then
                      begin
                        GuardarVisitaEnPlan(Cuit,StrToInt(Estableci),fraTipoFet.Codigo,fraOperativo.Codigo,
                                            StrToDateFmt('DD/MM/YYYY' ,campos.Strings[4]),false,
                                            edFechaVisita);
                      end;

                      for j := 5 to campos.Count-1 do
                      begin
                        if trim(campos.Strings[j]) <> '' then
                        begin
                          if ExisteSql(
                            ' SELECT 1 '+
                            '   FROM art.pdr_diagporrec '+
                            '  WHERE dr_cuit = '+ SqlValue(Cuit)+
                            '    AND dr_estableci = '+ SqlValue(Estableci)+
                            '    AND dr_operativo = '+ SqlValue(fraOperativo.Codigo) +
                            '    AND dr_tipo = '+SqlValue(fraTipoFet.Codigo)+
                            '    AND dr_diagnostico = '+ SqlValue(trim(campos.Strings[j]))+
                            '    AND dr_recomendacion = '+SqlValue(trim(campos.Strings[0]))) then
                          begin
                            EjecutarSqlST(
                              'UPDATE pdr_diagporrec ' +
                              '       SET dr_idvisita  = ' + SqlValue (IdVisita) + ', ' +
                              '           dr_fechamodif = SYSDATE, ' +
                              '           dr_fechabaja = NULL, ' +
                              '           dr_usubaja = NULL, ' +
                              '           dr_usumodif  = ' + SqlValue (frmPrincipal.DBLogin.LoginName) +
                              ' WHERE dr_cuit = ' + SqlValue(Cuit) +
                              '   AND dr_estableci = ' + SqlValue(Estableci) +
                              '   AND dr_tipo = ' + SqlValue(fraTipoFet.Codigo) +
                              '   AND dr_operativo = ' + SqlValue(fraOperativo.Codigo) +
                              '   AND dr_diagnostico = ' + SqlValue(trim(campos.Strings[j])) +
                              '   AND dr_recomendacion = ' + SqlValue(trim(campos.Strings[0])));
                          end
                          else
                          begin
                            EjecutarSqlST(
                                  'INSERT INTO pdr_diagporrec (dr_cuit, dr_estableci, dr_recomendacion, ' +
                                  '                            dr_diagnostico, dr_tipo, dr_operativo, ' +
                                  '                            dr_idvisita, dr_usualta, dr_fechaalta) ' +
                                  '     VALUES (' + SqlValue(Cuit) +  ', ' + SqlInt(Estableci) + ', ' + SqlValue(trim(campos.Strings[0])) + ', ' +
                                          SqlValue(trim(campos.Strings[j])) + ', ' + SqlValue(fraTipoFet.Codigo) + ', ' + SqlValue(fraOperativo.Codigo)+', '+
                                          SqlValue (IdVisita) + ', ' + SqlValue (frmPrincipal.DBLogin.LoginName) + ', SYSDATE )');
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
            end;
          end;
        end;
        if listError.Text <> '' then
        begin
          listReporteError.Add(variable);
          listReporteError.AddStrings(listError);
        end;
        error := false;
      end;
    end;
    if listReporteError.Count > 3 then
    begin
      sArchivoLOG := IncludeTrailingPathDelimiter(ExtractFileDir(edOrigen.FileName)) +
                      ChangeFileExt(ExtractFileName(edOrigen.FileName), '') + '_LOG.txt';

      listReporteError.SaveToFile(sArchivoLOG);
      if FileExists(sArchivoLOG) and (MsgBox('�Desea ver el log de errores?', MB_ICONQUESTION + MB_YESNO, 'Guardar Datos') = IDYES) then
      begin
        ShellExecute(frmFet.Handle, nil, PChar('notepad'), PChar(sArchivoLOG), nil, SW_SHOWNORMAL);
      end;
      result := false;
    end
    else
      result := true;

    DeleteFile(edOrigen.InitialDir+'\Origen.csv');
    listString.Free;
    cabecera.Free;
    campos.Free;
    listError.Free;
    listReporteError.Free;
  except
  on E: Exception do
    begin

    ErrorMsg(E, 'Error al guardar los datos.');
    end;
  end;
end;

procedure TfrmFet.SubString(const S: String; Separator: Char; Sl: TStringList);
var
  Start, Anterior : Integer;
begin
  Start := 1;
  Anterior := 1;
  while (Start <= Length(S)) {and (Start <> (Anterior+1) )} do
    Sl.Add(obtenerString(S, Separator, Start, Anterior));
end;

procedure TfrmFet.GuardarEnPal(aAnexo, aItem, aCumplimiento: String);
var
  idPal: integer;
begin
  idPal :=  ValorSqlIntegerEx( ' SELECT pa_id ' +
                               ' FROM hys.hpa_pal ' +
                               ' WHERE pa_cuit = :cuit ' +
                               '   AND pa_estableci = :estab ' +
                               '   AND pa_tipo = :tipo ' +
                               '   AND pa_operativo = :oper '+
                               '   AND pa_anexo = :anexo ' +
                               '   AND pa_itemanexo = :item ', [fraEmpresa.CUIT,
                                                                fraEstableciBusq.Value,
                                                                fraTipoFet.Codigo,
                                                                fraOperativo.Codigo,
                                                                aAnexo,
                                                                aItem], 0);
  if (idPal > 0) then
  begin
    if(aCumplimiento <> 'N') then
      EjecutarSqlSTEx(' UPDATE HYS.HPA_PAL ' +
                      ' SET PA_FECHABAJA = SYSDATE, ' +
                      '     PA_USUBAJA = :usubaja ' +
                      ' WHERE PA_ID = :id', [Sesion.LoginName, idPal])
    else 
      EjecutarSqlSTEx(' UPDATE HYS.HPA_PAL ' +
                      ' SET PA_FECHABAJA = NULL, ' +
                      '     PA_USUBAJA = NULL ' +
                      ' WHERE PA_ID = :id', [idPal]);
  end
  else begin
    if (idPal = 0) and (aCumplimiento = 'N') then
      EjecutarSqlSTEx(' INSERT INTO HYS.HPA_PAL(PA_ID, PA_CUIT, PA_ESTABLECI, PA_TIPO, PA_OPERATIVO, ' +
                      '                         PA_ANEXO, PA_ITEMANEXO, PA_CUMPLIMIENTO, PA_SEGUIMIENTO, ' +
                      '                         PA_FECHAALTA, PA_USUALTA) ' +
                      ' VALUES (HYS.SEQ_HPA_PAL_ID.NEXTVAL, :cuit, :estab, :tipo, :operativo, ' +
                      '         :anexo, :item, NULL, NULL, ' +
                      '         sysdate, :usualta) ', [fraEmpresa.CUIT,
                                                       fraEstableciBusq.Value,
                                                       fraTipoFet.Codigo,
                                                       fraOperativo.Codigo,
                                                       aAnexo,
                                                       aItem,
                                                       Sesion.LoginName]);
  end;
end;

function TfrmFet.obtenerString(const S: String; Separator: Char; var StartPos, Anterior: Integer): String;
var
  Index: Integer;
begin
  Result := '';

  Anterior := StartPos;
  if StartPos > length(S) then
    Exit;

  Index := StartPos;

  while (S[Index] <> Separator) and (Index <= length(S)) do
    Index := Index + 1;
  if(Index <> StartPos) then
    Result := Copy(S, StartPos, Index - StartPos)
  else
    Result := '';
  StartPos := Index + 1;
end;

procedure TfrmFet.tbLimpiarClick(Sender: TObject);
var
  iTabs, iItems : Integer;
begin
  if ExisteSql(
    ' SELECT 1 '+
    '   FROM art.pan_anexo2 '+
    '  WHERE an_cuit = '+SqlValue(fraEmpresa.CUIT)+
    '    AND an_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND an_tipo = '+SqlValue(fraTipoFet.Codigo)+
    '    AND an_operativo = '+ SqlValue(fraOperativo.Codigo)) then
  begin
    InvalidMsg(tsAnexos, 'Ya existe Anexo 2 Cargado.');
  end
  else
  begin
    iTabs := tsAnexos.ActivePageIndex + Ord('A');
    with GetListView(Chr(iTabs)) do begin
      for iItems := 0 To Items.Count - 1 do
      begin
        if (Items[iItems].ImageIndex <> IMG_READONLY) and
           (Items[iItems].ImageIndex <> IMG_CATEGORIA) then
        Items[iItems].ImageIndex := -1;
      end;
    end;
    iAnexo2 := -1;
  end;
end;

procedure TfrmFet.cargaFechasAnexo1;
var
  fechaNotificacion : TDate;
  telafi: String;
begin
  edFechaInicioActividad.Date := ValorSqlDateTime(
    ' SELECT es_feinicactiv '+
    '   FROM afi.aes_establecimiento, aco_contrato '+
    '  WHERE es_contrato = co_contrato '+
    '    AND es_nroestableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND co_contrato = '+SqlValue(fraEmpresa.Contrato));

  telafi := ValorSql(
    ' SELECT te_area||te_numero '+
    '   FROM afi.aes_establecimiento, afi.ate_telefonoestablecimiento '+
    '  WHERE es_id = te_idestablecimiento '+
    '    AND te_fechabaja IS NULL ' +
    '    AND es_nroestableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND es_contrato = '+SqlValue(fraEmpresa.Contrato) +
    '  order by te_idtipotelefono');

  if not ValidaAnexoFicticio then
    edTelefono.Text := StringReplace(telafi, ' ', '', [rfReplaceAll]);

  fechaNotificacion := ValorSqlDateTime(
    ' SELECT rv_fechanotificacion '+
    '   FROM art.prv_resvisitas a, hys.hvm_visitamotivo, art.pmo_motivos '+
    '  WHERE vm_idvisita = rv_id '+
    '    AND vm_idmotivo = mo_id '+
    '    AND rv_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    //'    AND rv_estableci = '+ SqlValue(fraEstableciBusq.edCodigo.Text)+
    '    AND rv_tipo = '+SqlValue(fraTipoFet.Value)+
    '    AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+
    '    AND vm_idmotivo in (56, 57) '+
    '    AND rv_fechabaja IS NULL '+
    '    AND rv_id = (SELECT MIN(b.rv_id) '+
    '                   FROM art.prv_resvisitas b, hys.hvm_visitamotivo hvmb '+
    '                  WHERE a.rv_cuit = b.rv_cuit '+
    '                    AND a.rv_tipo = b.rv_tipo '+
    '                    AND hvmb.vm_idvisita = b.rv_id '+
    '                    AND b.rv_fechabaja IS NULL '+
    '                    AND hvmb.vm_idmotivo IN(56, 57) '+
    '                    AND a.rv_operativo = b.rv_operativo) ');
  if (fechaNotificacion <> 0) and (edFechaNotificacionAnexo.Date = 0) then
    edFechaNotificacionAnexo.Date := fechaNotificacion;
  (*else begin
    fechaNotificacion :=  ValorSqlDateTime(
    ' SELECT MAX (rv_fechanotificacion) '+
    '   FROM art.prv_resvisitas, hys.hvm_visitamotivo, art.pmo_motivos '+
    '  WHERE vm_idvisita = rv_id '+
    '    AND vm_idmotivo = mo_id '+
    '    AND rv_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '    AND rv_tipo = '+SqlValue(fraTipoFet.Value)+
    '    AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+
    '    AND vm_idmotivo in (56, 57) '+
    '    AND rv_fechabaja IS NULL ');
    if (fechaNotificacion <> 0) then
      edFechaNotificacionAnexo.Date := fechaNotificacion;
  end;
  *)
end;

procedure TfrmFet.cargaFechasAnexo2;
var
  fecharecep: TDate;
begin
  fecharecep := ValorSqlDateTime(
    '  SELECT MAX (rv_fecha) '+
    '    FROM art.prv_resvisitas, hys.hvm_visitamotivo, art.pmo_motivos '+
    '   WHERE vm_idvisita = rv_id '+
    '     AND vm_idmotivo = mo_id '+
    '     AND rv_cuit = '+SqlValue(fraEmpresa.mskCUIT.Text)+
    '     AND rv_estableci = '+SqlValue(fraEstableciBusq.edCodigo.Text)+
    '     AND rv_tipo = '+SqlValue(fraTipoFet.Value)+
    '     AND rv_operativo = '+SqlValue(fraOperativo.Codigo)+
    '     AND vm_idmotivo in (129, 130, 85) '+
    '     AND rv_fechabaja IS NULL ');
    if fecharecep <> 0 then
      edFechaRecepcionAnexo2.Date := fecharecep;
end;

procedure TfrmFet.MuestraUltimosDom(const flgMostrar: boolean);
begin

  FfrmUltimoRegistroDom := TfrmUltimoRegistroDom.Create(Self);
  try
    FfrmUltimoRegistroDom.Titulo                 := tbUltmimoRegDom.Hint;
    FfrmUltimoRegistroDom.fraCO_CONTRATO.Contrato:= fraEmpresa.Contrato;
    FfrmUltimoRegistroDom.edUR_CODIGOPOSTAL.Text := fraEstableciBusq.edCPostal.Text;

    if FfrmUltimoRegistroDom.ExistenRegistros or flgMostrar then
    begin
      case FfrmUltimoRegistroDom.ShowModal of
        mrOk: begin
                EjecutarSqlEx(
                      'UPDATE  afi.aes_establecimiento '
                    + '   SET  afi.aes_establecimiento.es_iur_id  = :ur_id, '
                    + '        afi.aes_establecimiento.es_nromisimplificacion  = :sucursal, '
                    + '        afi.aes_establecimiento.es_existe_ultimodom  = ''S'' '
                    + ' WHERE  afi.aes_establecimiento.es_id = :es_id '
                    , [ FfrmUltimoRegistroDom.IdUltimoDom,
                        FfrmUltimoRegistroDom.Sucursal,
                        fraEstableciBusq.IdEstablecimiento]
                );
              end;
        mrNo: begin
                EjecutarSqlEx(
                      'UPDATE  afi.aes_establecimiento '
                    + '   SET  afi.aes_establecimiento.es_iur_id  = null, '
                    + '        afi.aes_establecimiento.es_nromisimplificacion  = null, '
                    + '        afi.aes_establecimiento.es_existe_ultimodom  = ''N'' '
                    + ' WHERE  afi.aes_establecimiento.es_id = :es_id '
                    , [ fraEstableciBusq.IdEstablecimiento]
                );
              end;
      end;
    end;

  finally
    FreeAndNil(FfrmUltimoRegistroDom);
  end;

end;

procedure TfrmFet.tbUltmimoRegDomClick(Sender: TObject);
begin
  MuestraUltimosDom(True);
end;

procedure TfrmFet.tbImpresionPreventorClick(Sender: TObject);
var
  pathQrp : String;
  Vigencia : String;
begin
  Verificar(not fraEmpresa.IsSelected,fraEmpresa,'Debe seleccionar una empresa.');
  Verificar(not fraEstableciBusq.IsSelected,fraEstableciBusq,'Debe seleccionar un establecimiento.');
  Vigencia := ValorSqlEx('SELECT hys.get_ultvigenciarelev463(:contrato, :estab, :procedencia) FROM DUAL', [fraEmpresa.Contrato, fraEstableciBusq.edCodigo.Text, 'E']);
  with TrptRes463Preventor.Create(Self) do
  try
    Load(fraEmpresa.Contrato, StrToInt(fraEstableciBusq.edCodigo.Text),Vigencia);
    pathQrp := Path;
  finally
    Free;
  end;
  if not FileToPDFSvr(pathQrp,TempPath) then
    raise Exception.Create('Error al generar el PDF');
  AbrirPDF(ChangeFileExt(pathQrp, '.pdf'));
end;

procedure TfrmFet.tbAnexoItemsNoClick(Sender: TObject);
begin
  Verificar(not fraEmpresa.IsSelected,fraEmpresa,'Debe seleccionar una empresa.');
  Verificar(not fraEstableciBusq.IsSelected,fraEstableciBusq,'Debe seleccionar un establecimiento.');
  fpItemsNo.ShowModal;
end;

procedure TfrmFet.btnAceptarProcedenciaClick(Sender: TObject);
var
  sCIIU : String;
begin
  // CIIU del Establecimiento
    sCIIU := ValorSql('SELECT art.hys.get_codactividadrevdos(ac_id, ac_revision) ' +
                      '  FROM comunes.cac_actividad ' +
                      ' WHERE ac_codigo = ' + SqlValue(fraEstableciBusq.Actividad));
    // CIIU de la Empresa si no existe para el Estab.
    sCIIU := iif (sCIIU = '',
                  ValorSQL ('SELECT art.hys.get_codactividadrevdos(ac_id, ac_revision) ' +
                            '  FROM afi.aco_contrato, comunes.cac_actividad ' +
                            ' WHERE co_contrato = ' + SqlValue(fraEmpresa.edContrato.Text) +
                            '   AND co_idactividad = ac_id '),
                  sCIIU);
  with TrptVisitasNo.Create(Self) do
  try
    FModoEmpleador := rgProcedencia.ItemIndex = 0;
    VistaPrevia(fraEmpresa.mskCUIT.Text,
                fraEstableciBusq.edCodigo.Text,
                fraEmpresa.cmbRSocial.Text,
                fraEstableciBusq.cmbDescripcion.Text,
                fraEmpresa.edContrato.Text,
                sCIIU,
                fraEstableciBusq.edDomicilio.Text,
                fraEstableciBusq.edLocalidad.Text,
                edCPA.Text,
                fraEstableciBusq.edProvincia.Text,
                ValorSQL ('SELECT DECODE(st_telefonos, ' +
                          '              NULL, mp_telefonos, ' +
                          '              ''S/D'', mp_telefonos, ' +
                          '              st_telefonos) ' +
                          '  FROM cmp_empresas, cst_estableci ' +
                          ' WHERE mp_cuit = st_cuit ' +
                          '   AND st_cuit = ' + SqlValue(fraEmpresa.mskCUIT.Text) +
                          '   AND st_clave = ' + fraEstableciBusq.edCodigo.TextSql),
                ValorSQL ('SELECT dc_mail ' +
                          '  FROM afi.adc_domiciliocontrato ' +
                          ' WHERE ROWNUM = 1 ' +
                          '   AND dc_contrato = ' + SqlValue(fraEmpresa.Contrato)),
                (rgProcedencia.ItemIndex = 1)
                );
  finally
    Free;
  end;
  fpItemsNo.ModalResult := mrOk;
end;

procedure TfrmFet.tbImpresionVerosimilitudClick(Sender: TObject);
var
  pathDestino : String;
  valorContrato : String;
  idestableci : String;
begin
  pathDestino := ValorSql(
    ' SELECT pa_valor '+
    '   FROM hys.hpa_parametro '+
    '  WHERE pa_clave = ''CARPETAREPORTES'' ');

  valorContrato := LPad(copy(inttostr(fraEmpresa.Contrato),
                   Length(inttostr(fraEmpresa.Contrato))-2,3),'0',3);
  pathDestino := IncludeTrailingBackslash(pathDestino)+valorContrato+'\';
  idestableci := ValorSql(
    ' SELECT SUBSTR (es_id, LENGTH (es_id)) '+
    '   FROM afi.aes_establecimiento '+
    '  WHERE es_contrato = '+SqlValue(fraEmpresa.Contrato)+
    '    AND es_nroestableci = '+SqlValue(fraEstableciBusq.edCodigo.Text));
  pathDestino := pathDestino+idestableci+'\'+inttostr(fraEmpresa.Contrato)+
  '_'+IntToStr(fraEstableciBusq.IdEstablecimiento)+'_'+
  ValorSql('select art.hys.get_ultvigenciarelev463('+SqlValue(fraEmpresa.Contrato)+ ',' + SqlValue(fraEstableciBusq.edCodigo.Text)+ ', ''E'') from dual');
  Verificar(not FileExists(pathDestino+'.pdf'),tbImpresionVerosimilitud, 'No existe el archivo.');
    AbrirPDF(ChangeFileExt(pathDestino, '.pdf'));

end;

procedure TfrmFet.tbCargaRelevPreventorClick(Sender: TObject);
begin
  Verificar(not fraEmpresa.IsSelected, fraempresa, 'Debe seleccionar la Empresa');
  Verificar(not fraEstableciBusq.IsSelected, fraEstableciBusq, 'Debe seleccionar el Establecimiento');
  Verificar(not fraTipoFet.IsSelected, fraTipoFet, 'Debe seleccionar el Tipo');
  Verificar(not fraOperativo.IsSelected,fraOperativo, 'Debe seleccionar el Operativo');
  Verificar(btnGuardar.Enabled,tbCargaRelevPreventor,'No debe estar en Modo Edicion');
  with TfrmCargaRelevamientoPreventor463.Create(Self) do
  try
    Load(fraEmpresa.Contrato, fraEstableciBusq.edCodigo.Value,
         fraOperativo.Codigo, fraTipoFet.Codigo);
    Visible := False;
    ShowModal;
  finally
    Free;
  end;  
end;

procedure TfrmFet.tbRelevRiesgo463Click(Sender: TObject);
begin
  Verificar(btnGuardar.Enabled,tbCargaRelevPreventor,'No debe estar en Modo Edicion');
  with TfrmRelevamientosRiesgosLaborales.Create(Self) do
  try
    fraEmpresa.Contrato := Self.fraEmpresa.Contrato;
    OnEmpresaChange(nil);
    fraEstableciBusq.edCodigo.Value := Self.fraEstableciBusq.edCodigo.Value;
    if fraEstableciBusq.edCodigo.Value = 0 then
      fraEstableciBusq.Clear;
    fraEstableciBusqExit(nil);
    OnEstableciBusqChange(nil);
    Visible := False;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmFet.edTelefonoChange(Sender: TObject);
begin
  edTelefono.Modified := true;
end;

procedure TfrmFet.edEMailChange(Sender: TObject);
begin
  edEMail.Modified := true;
end;

procedure TfrmFet.chkAmeritaPRSClick(Sender: TObject);
begin
  if chkAmeritaPRS.Checked then
    chkNoAmeritaPRS.Checked := false;
  chkAmeritaPRS.Tag := 1;
end;

procedure TfrmFet.chkNoAmeritaPRSClick(Sender: TObject);
begin
  if chkNoAmeritaPRS.Checked then
    chkAmeritaPRS.Checked := false;
  chkNoAmeritaPRS.Tag := 1;
end;

procedure TfrmFet.chkAmeritaPALClick(Sender: TObject);
begin
  if chkAmeritaPAL.Checked then
    chkNoAmeritaPAL.Checked := false;
  chkAmeritaPAL.Tag := 1;
end;

procedure TfrmFet.chkNivelFirmasClickCheck(Sender: TObject);
begin
  cbSinFirmasAnexo2.Checked := False;
end;

procedure TfrmFet.chkNoAmeritaPALClick(Sender: TObject);
begin
  if chkNoAmeritaPAL.Checked then
    chkAmeritaPAL.Checked := false;
  chkNoAmeritaPAL.Tag := 1;
end;

procedure TfrmFet.btnAceptarCambioPreventorClick(Sender: TObject);
begin
  Verificar((clbestablecimientos.ItemsChecked.Count >0) and  (cbMotivosAsociarVisita.ItemsChecked.Count = 0), cbMotivosAsociarVisita,
            'Debe seleccionar por lo menos un motivo.');
  fpAsociarVisita.ModalResult := mrOk;
end;

procedure TfrmFet.btnCancelarCambioPreventorClick(Sender: TObject);
begin
  clbestablecimientos.UncheckAll;
  fpAsociarVisita.ModalResult := mrCancel;
end;

procedure TfrmFet.Button3Click(Sender: TObject);
begin
  clbestablecimientos.CheckAll;
end;

procedure TfrmFet.edFechaVisitaChange(Sender: TObject);
begin
  if(FModoVisita = maAlta) then
    CargarMotivos(false);
end;

procedure TfrmFet.chkVerTodasClick(Sender: TObject);
begin
  if chkVerTodas.Checked then
    CargarMotivos(false);
end;

procedure TfrmFet.cbCopiarMotivosVisitaClick(Sender: TObject);
var
  i : Integer;
  j : Integer;
begin
  i := 0;
  while i < cbMotivos.Items.Count do
  begin
    if cbMotivos.Checked[i] then
    begin
      j := 0;
      while j < cbMotivosAsociarVisita.Items.Count do
      begin
        if cbMotivos.Values[i] = cbMotivosAsociarVisita.Values[j] then
          cbMotivosAsociarVisita.Checked[i] := cbMotivos.Checked[i];
        j := j+1;
      end;
    end;
    i:= i+1;
  end;
end;

procedure TfrmFet.tbImportacionNominaClick(Sender: TObject);
begin
  Verificar(btnGuardar.Enabled,tbCargaRelevPreventor,'No debe estar en Modo Edicion');
  with TfrmImportacionNominas.Create(Self) do
  try
    Visible := False;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmFet.chkTraspasoClick(Sender: TObject);
begin
  if chkTraspaso.Checked then
  begin
    edFechaVisita.OnChange := nil;
    edFechaVisita.Date := ValorSqlDateTimeEx('SELECT vo_vigenciadesde FROM hys.hvo_vigenciaoperativo WHERE vo_tipo = :tipo AND vo_operativo = :operativo', [fraTipoFet.Codigo, fraOperativo.Codigo]);
    edFechaVisita.OnChange := edFechaVisitaChange;
    edFechaNotificacion.Date := ValorSqlDateTimeEx('SELECT co_fechalta FROM hys.hco_cuitoperativo WHERE co_cuit = :cuit AND co_tipo = :tipo AND co_operativo = :operativo', [fraEmpresa.CUIT, fraTipoFet.Codigo, fraOperativo.Codigo]);
  end
  else begin
    edFechaVisita.Clear;
    edFechaNotificacion.Clear;
  end;
end;

procedure TfrmFet.ActualizarPRSPAL;
begin
  if chkNoAmeritaPRS.Checked and
       (ValorSql(' SELECT COUNT(*) '+
                 '   FROM PRE_RECOMENDACIONES ' +
                 '  WHERE RE_CUIT = '+SqlValue(fraEmpresa.mskCUIT.Text)+
                 '    AND RE_ESTABLECI = '+ SqlValue(fraEstableciBusq.edCodigo.Text)+
                 '    AND RE_TIPO = ' + SqlValue(fraTipoFet.Codigo)+
                 '    AND RE_OPERATIVO = '+ SqlValue(fraOperativo.Codigo)+
                 '    AND RE_FECHABAJA IS NULL ' +
                 '    AND NVL(RE_NOAMERITA, ''N'') = ''N''') > 0) then
    begin
      chkNoAmeritaPRS.Checked := False;
      chkAmeritaPRS.Checked := True;
      chkAmeritaPRS.Tag := 1;
    end;

    if chkNoAmeritaPAL.Checked and
        (ValorSql(' SELECT COUNT(*) '+
                 '   FROM HYS.HPA_PAL ' +
                 '  WHERE PA_CUIT = '+SqlValue(fraEmpresa.mskCUIT.Text)+
                 '    AND PA_ESTABLECI = '+ SqlValue(fraEstableciBusq.edCodigo.Text)+
                 '    AND PA_TIPO = ' + SqlValue(fraTipoFet.Codigo)+
                 '    AND PA_OPERATIVO = '+ SqlValue(fraOperativo.Codigo)+
                 '    AND PA_FECHABAJA IS NULL ' +
                 '    AND NVL(PA_NOAMERITA, ''N'') = ''N''') > 0) then
    begin
      chkNoAmeritaPAL.Checked := False;
      chkAmeritaPAL.Checked := True;
      chkAmeritaPAL.Tag := 1;
    end;
end;

procedure TfrmFet.SaveArchivoVisita;
var
  Id: TTableId;
  sClave: String;
  iContrato, iEstableci: Integer;
begin

  if (MsgBox('�Desea Cargar Documentaci�n?', MB_ICONQUESTION + MB_YESNO, 'Guardar Datos') = IDYES) then
  begin
    iContrato  := fraEmpresa.Contrato;
    iEstableci := StrToInt(fraEstableciBusq.edCodigo.Text);
    sClave     := GetClaveArmada(2, Trim(IntToStr(iContrato)), Trim(IntToStr(iEstableci)), '','');

    if not VerificarClaveExiste(ID_CARPETA_HYS, sClave, Id) then
      DoInsertArchivo(ID_CARPETA_HYS, TIPOUBICACION_GUARDA, '', 0, '', frmPrincipal.dbLogin.UserId, sClave, False, 'ALTA INICIAL');

    with TfrmCargaDocumentacion.Create(Self) do
    begin
      fraFiltroArchivoCapturaContenido.Visible := False;
      fraFiltroArchivoCapturaContenido.Tipo    := ID_CARPETA_HYS;
      fraFiltroArchivoCapturaContenido.OnArchivoChange(nil);
      OnChangeTipoDocumento(nil);
      fraTipoArchivoPropiedadesChange(nil);
      fraFiltroArchivoCapturaContenido.fraEmpresaEmpresa.Contrato := iContrato;
      fraFiltroArchivoCapturaContenido.fraEmpresaEmpresa.OnChange(nil);
      fraFiltroArchivoCapturaContenido.fraEstablecimiento.Codigo  := Trim(IntToStr(iEstableci));
      fraTipoDocumento.Codigo := CODDOC_CONSTANCIA;
      edHojas.Value := 1;
      edCodigoDocumento.Clear;
      edObservaciones.Text := '';
      rgbOpcionDestino.ItemIndex := 0;
      edFechaVisita.Date := self.edFechaVisita.Date;
      edfechavisita.Enabled := False;
      Commit          := False;
      SoloUnaEtiqueta := True;
      fraFiltroArchivoCapturaContenido.Visible := True;
      fraFiltroArchivoCapturaContenido.fraTipoARchivo.Enabled := False;

      ShowModal;
    end;
  end;

end;


procedure TfrmFet.SetPageDomicilio319;
begin
  frmObras.tsAvisoObra.ActivePageIndex := 2;
end;

procedure TfrmFet.SetIs319;
begin
  frmObras.FAOWEB319 := True;
  frmobras.FIDAOWeb := FIDAvisoObraWeb;
end;

procedure TfrmFet.GuardarNivelFirma;
var
  i : Integer;
begin
  for i:=0 to chkNivelFirmas.Count-1 do
  begin
    if chkNivelFirmas.Checked[i] then
    begin
      if ExisteSql('SELECT 1 FROM HYS.HNF_NIVELFIRMA '+
                   ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                    '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                    '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                    '  AND NF_IDTIPOFIRMA = '+ SqlValue(Integer(chkNivelFirmas.Items.Objects[i]))+
                    '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                    '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo)) then
      begin
        if ExisteSql('SELECT 1 FROM HYS.HNF_NIVELFIRMA '+
                   ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                    '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                    '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                    '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+
                    '  AND NF_IDTIPOFIRMA = '+ SqlValue(Integer(chkNivelFirmas.Items.Objects[i]))+
                    '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                    '  AND NF_FECHABAJA IS NOT NULL ') then
        begin
          EjecutarSqlST('UPDATE HYS.HNF_NIVELFIRMA '+
                        '   SET NF_FECHABAJA = NULL, NF_USUBAJA = NULL, '+
                        '       NF_FECHAMODIF = SYSDATE, NF_USUMODIF = '+SqlValue(Sesion.LoginName)+
                        ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                        '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                        '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                        '  AND NF_IDTIPOFIRMA = '+ SqlValue(Integer(chkNivelFirmas.Items.Objects[i]))+
                        '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                        '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo));
        end;
      end
      else
      begin
        EjecutarSqlST(
                    ' INSERT INTO hys.HNF_NIVELFIRMA '+
                    '             (NF_ID, NF_CUIT, NF_ESTABLECI, NF_TIPO, NF_OPERATIVO,'+
                    '              NF_TIPOFORMULARIO, NF_IDTIPOFIRMA, '+
                    '              NF_FECHAALTA, NF_USUALTA '+
                    '             )'+
                    '      VALUES (hys.SEQ_HNF_ID.NEXTVAL,'+SqlValue(fraEmpresa.mskCUIT.Text)+', '+
                                   SqlValue(fraEstableciBusq.edCodigo.Text)+', '+SqlValue(fraTipoFet.Codigo)+', '+
                                   SqlValue(fraOperativo.Codigo)+','+SqlValue('ANX4')+','+
                                   SqlValue(Integer(chkNivelFirmas.Items.Objects[i]))+
                                   ',sysdate,'+SqlValue(Sesion.UserID)+')');
      end;
    end
    else
    begin
      if ExisteSql('SELECT 1 FROM HYS.HNF_NIVELFIRMA '+
                   ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                    '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                    '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                    '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+
                    '  AND NF_IDTIPOFIRMA = '+ SqlValue(Integer(chkNivelFirmas.Items.Objects[i]))+
                    '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                    '  AND NF_FECHABAJA IS NULL ') then
        begin
          EjecutarSqlST('UPDATE HYS.HNF_NIVELFIRMA '+
                        '   SET NF_FECHABAJA = SYSDATE, NF_USUBAJA = '+SqlValue(Sesion.LoginName)+
                        ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                        '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                        '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                        '  AND NF_IDTIPOFIRMA = '+ SqlValue(Integer(chkNivelFirmas.Items.Objects[i]))+
                        '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                        '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo));
        end;
    end;
  end;
  // Sin Firmas
  if cbSinFirmasAnexo2.Checked then
  begin
    if ExisteSql('SELECT 1 FROM HYS.HNF_NIVELFIRMA '+
                 ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                  '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                  '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                  '  AND NF_IDTIPOFIRMA = 5'+
                  '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                  '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo)) then
    begin
      if ExisteSql('SELECT 1 FROM HYS.HNF_NIVELFIRMA '+
                 ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                  '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                  '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                  '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+
                  '  AND NF_IDTIPOFIRMA = 5'+
                  '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                  '  AND NF_FECHABAJA IS NOT NULL ') then
      begin
        EjecutarSqlST('UPDATE HYS.HNF_NIVELFIRMA '+
                      '   SET NF_FECHABAJA = NULL, NF_USUBAJA = NULL, '+
                      '       NF_FECHAMODIF = SYSDATE, NF_USUMODIF = '+SqlValue(Sesion.LoginName)+
                      ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                      '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                      '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                      '  AND NF_IDTIPOFIRMA = 5'+
                      '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                      '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo));
      end;
    end
    else
    begin
      EjecutarSqlST(
                  ' INSERT INTO hys.HNF_NIVELFIRMA '+
                  '             (NF_ID, NF_CUIT, NF_ESTABLECI, NF_TIPO, NF_OPERATIVO,'+
                  '              NF_TIPOFORMULARIO, NF_IDTIPOFIRMA, '+
                  '              NF_FECHAALTA, NF_USUALTA '+
                  '             )'+
                  '      VALUES (hys.SEQ_HNF_ID.NEXTVAL,'+SqlValue(fraEmpresa.mskCUIT.Text)+', '+
                                 SqlValue(fraEstableciBusq.edCodigo.Text)+', '+SqlValue(fraTipoFet.Codigo)+', '+
                                 SqlValue(fraOperativo.Codigo)+','+SqlValue('ANX4')+',5,sysdate,'+
                                 SqlValue(Sesion.UserID)+')');
    end;
  end
  else
  begin
    if ExisteSql('SELECT 1 FROM HYS.HNF_NIVELFIRMA '+
                 ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                  '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                  '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                  '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo)+
                  '  AND NF_IDTIPOFIRMA = 5'+
                  '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                  '  AND NF_FECHABAJA IS NULL ') then
      begin
        EjecutarSqlST('UPDATE HYS.HNF_NIVELFIRMA '+
                      '   SET NF_FECHABAJA = SYSDATE, NF_USUBAJA = '+SqlValue(Sesion.LoginName)+
                      ' WHERE NF_CUIT = ' +SqlValue(fraEmpresa.mskCUIT.Text)+
                      '  AND NF_ESTABLECI = ' +SqlValue(fraEstableciBusq.edCodigo.Text)+
                      '  AND NF_TIPO = '+SqlValue(fraTipoFet.Codigo)+
                      '  AND NF_IDTIPOFIRMA = 5'+
                      '  AND NF_TIPOFORMULARIO = ''ANX4'' '+
                      '  AND NF_OPERATIVO = '+SqlValue(fraOperativo.Codigo));
      end;
  end;
end;


end.
