�
 TFRMMANRELACIONENTVEND 0�.  TPF0�TfrmManRelacionEntVendfrmManRelacionEntVendLeftTopEWidth Height�Caption0Mantenimiento de Relaciones Entidades-VendedoresConstraints.MinHeight�Constraints.MinWidth 	Font.NameTahomaPixelsPerInch`
TextHeight � TLabelLabel23Left?Top9Width%HeightCaptionNombre  �TPanel
pnlFiltrosWidthHeightVisible	
DesignSize  	TGroupBox	GroupBox5LeftTop Width�HeightFAnchorsakLeftakTopakRight CaptionEntidadTabOrder 
DesignSize�F  TLabelLabel2LeftTopWidthHeightCaptionDesde  TLabelLabel17LeftTop+WidthHeightCaptionHasta  �TfraEntidadCUITfraEntidadHastaLeft7Top(WidthIHeightAnchorsakLeftakTopakRight TabOrder
DesignSizeI  �TLabelLabel1Left{  �TLabel	lbRSocialWidthCaptionCUIT	Font.NameTahoma  �TLabelLabel3Width;  �TLabelLabel2Left�   �TArtComboBoxcmbDescripcionLeftWidth*  �	TMaskEditmskCuitLeft"
OnKeyPress  �TPatternEditedEN_CODBANCOLeft� Width<   �TfraEntidadCUITfraEntidadDesdeLeft7TopWidthIHeightAnchorsakLeftakTopakRight TabOrder OnExitfraEntidadDesdeExit
DesignSizeI  �TLabelLabel1Left{  �TLabel	lbRSocialWidthCaptionCUIT	Font.NameTahoma  �TLabelLabel3Width;  �TLabelLabel2Left�   �TArtComboBoxcmbDescripcionLeftWidth*  �	TMaskEditmskCuitLeft"
OnKeyPress  �TPatternEditedEN_CODBANCOLeft� Width<    	TGroupBox	GroupBox1LeftTopFWidth�HeightDAnchorsakLeftakTopakRight CaptionVendedorTabOrder
DesignSize�D  TLabelLabel12LeftTopWidthHeightCaptionDesde  TLabelLabel18LeftTop,WidthHeightCaptionHasta  �TfraVendedoresCUITfraVendedorDesdeLeft7TopWidthIHeightAnchorsakLeftakTopakRight TabOrder OnEnterfraVendedorHastaEnter
DesignSizeI  �TLabel	lbRSocialWidthCaptionCUIT  �TLabelLabel1Left{  �TLabelLabel2Left� Width%CaptionNombre  �TArtComboBoxcmbDescripcionLeftWidth+  �TPatternEditedCodigoLeft�   �	TMaskEditmskCuitLeft"   �TfraVendedoresCUITfraVendedorHastaLeft7Top'WidthIHeightAnchorsakLeftakTopakRight TabOrderOnEnterfraVendedorHastaEnter
DesignSizeI  �TLabel	lbRSocialWidthCaptionCUIT  �TLabelLabel1Left{  �TLabelLabel2Left� Width%CaptionNombre  �TArtComboBoxcmbDescripcionLeftWidth+  �TPatternEditedCodigoLeft�   �	TMaskEditmskCuitLeft"    	TCheckBoxchkRelActivasLeft� TopWidth� HeightCaptionSolo Relaciones ActivasChecked	State	cbCheckedTabOrder	  	TCheckBoxchkSoloActivosLeftTopWidth� HeightCaptionSolo Vendedores ActivosChecked	State	cbCheckedTabOrder  	TCheckBoxchkEntActivasLeftTopWidth� HeightCaptionSolo Entidades ActivasChecked	State	cbCheckedTabOrder
  TRadioGrouprgVendedoresLeft�Top Width� HeightFAnchorsakTopakRight Caption Vendedores 	ItemIndex Items.StringsTodosCon entidad asociadaSin entidad asociada TabOrder  	TGroupBoxgbCanalLeftTop� Width�Height(CaptionCanalTabOrder
DesignSize�(  �	TfraCanalfraCanalBusqLeftTopWidth�HeightAnchorsakLeftakTopakRight TabOrder 
DesignSize�  �
TComboGridcmbDescripcionWidthFCells   Código   DescripciónIdFecha de Baja 	ColWidths(,��     	TGroupBox	GroupBox2Left�Top� WidthHeight(AnchorsakLeftakTopakRight CaptionConceptoTabOrder
DesignSize(  �TfraCodigoDescripcionfraConceptoBusqLeftTopWidthsHeightAnchorsakLeftakTopakRight TabOrder 
DesignSizes  �TArtComboBoxcmbDescripcionWidth2    	TCheckBoxchkEntidadVIPLeft�TopWidthoHeightCaptionSolo Entidades VIPTabOrder  	TGroupBoxgbGranOrganizadorLeftTop� WidthHeight(AnchorsakLeftakTopakRight CaptionGran OrganizadorTabOrder
DesignSize(  �TfraEntidadCUITfraGranOrganizadorLeftTopWidth
HeightAnchorsakLeftakTopakRight TabOrder 
DesignSize
  �TLabelLabel1Left{  �TLabel	lbRSocialWidthCaptionCUIT	Font.NameTahoma  �TLabelLabel3Width;  �TLabelLabel2Left�   �TArtComboBoxcmbDescripcionLeftWidth�  �	TMaskEditmskCuitLeft"
OnKeyPress  �TPatternEditedEN_CODBANCOLeft� Width<    	TCheckBoxchkGranOrganizadorLeftTopWidth� HeightCaptionSolo Gran OrganizadorTabOrder  	TGroupBoxgbEjecutivoLeftTop� Width�Height(Caption	EjecutivoTabOrder
DesignSize�(  TDBCheckCombocmbEjecutivoLeftTopWidth�HeightAnchorsakLeftakTopakRight TabOrder ItemsSeparator;
DataSourcedsEjecutivoKeyFieldEC_ID	ListField	EC_NOMBRE   	TGroupBoxgbDelegacionLeft�Top� WidthHeight(AnchorsakLeftakTopakRight Caption   DelegaciónTabOrder
DesignSize(  TDBCheckCombocmbDelegacionLeftTopWidthsHeightAnchorsakLeftakTopakRight TabOrder ItemsSeparator;
DataSourcedsDelegacionKeyFieldEL_ID	ListField	EL_NOMBRE   	TGroupBox	gbPeriodoLeft�TopFWidth� Height)AnchorsakTopakRight CaptionPeriodoTabOrder TPeriodoPicker	edPeriodoLeftTopWidthFHeightTabOrder TabStop	ColorclWindowPeriodo.AllowNull	Periodo.OrdenpoAnoMesPeriodo.Separador Periodo.Mes Periodo.Ano Periodo.MaxPeriodo205303Periodo.MinPeriodo195304WidthMes
Separation 
ShowButton	ShowOrderpoAnoMesReadOnlyEnabled	Fuente.CharsetDEFAULT_CHARSETFuente.ColorclWindowTextFuente.Height�Fuente.NameTahomaFuente.Style Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style NullDropDownSetMax   	TCheckBoxchkEntidadTramiteLeft�TopWidthwHeightCaption   Solo Ent. En TrámiteTabOrder   �TCoolBarCoolBarTopWidthBandsControlToolBar
ImageIndex�	MinHeightWidth   �TToolBarToolBarWidth �TToolButtontbModificarVisible  �TToolButton
tbEliminarHintBaja (Ctrl+Del)  �TToolButtontbPropiedadesHint    
ImageIndex  �TToolButton	tbLimpiarVisible	  �TToolButtontbMostrarOcultarColumnasVisible	  �TToolButton
tbImprimirDropdownMenupmnuImprimirStyletbsDropDown  �TToolButton
tbExportarLeft�   �TToolButtontbEnviarMailLeft  �TToolButtonToolButton8Left*  �TToolButtontbMostrarFiltrosLeft2Visible	  �TToolButtontbMaxRegistrosLeftI  �TToolButtonToolButton11Left`  �TToolButtontbSalirLefthVisible  TToolButton
tbExencionLeftTop Hint   Exención Ing. BrutosCaption
tbExencion
ImageIndexParentShowHintShowHint	OnClicktbExencionClick  TToolButtontbConceptosLeft�Top Hint	Conceptos
ImageIndex	OnClicktbConceptosClick  TToolButtonToolButton1Left�Top WidthCaptionToolButton1
ImageIndexStyletbsSeparator  TToolButtontbDocumentacionLeft�Top Hint   DocumentaciónDropdownMenupmnuDocumentacion
ImageIndexStyletbsDropDownOnClicktbDocumentacionClick  TToolButtonToolButton7Left�Top WidthCaptionToolButton7
ImageIndexStyletbsSeparator  TToolButtontbSalir2Left�Top HintSalir (Ctrl+S)CaptiontbSalir2
ImageIndexOnClicktbSalirClick    �
TArtDBGridGridTop3WidthHeight� OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExitdgMultiSelect TitleFont.NameTahomaMultiSelect	OnContextPopupGridContextPopupAutoTitleHeight	ColumnsExpanded	FieldNameEN_CODBANCOTitle.Caption   CódigoWidth>Visible	 	AlignmenttaCenterExpanded	FieldNameEN_CUITTitle.AlignmenttaCenterTitle.Caption	Cuit Ent.WidthKVisible	 Expanded	FieldName	EN_NOMBRETitle.CaptionNombre EntidadWidth� Visible	 Expanded	FieldNameVE_VENDEDORTitle.Caption   Código VendedorWidthZVisible	 	AlignmenttaCenterExpanded	FieldNameVE_CUITTitle.AlignmenttaCenterTitle.Caption
Cuit Vend.WidthYVisible	 Expanded	FieldName	VE_NOMBRETitle.CaptionNombre VendedorWidth� Visible	 Expanded	FieldName
DESCRCANALTitle.CaptionCanalWidth� Visible	 Expanded	FieldName	EC_NOMBRETitle.Caption	EjecutivoWidth� Visible	 Expanded	FieldName
DELEGACIONTitle.Caption   DelegaciónWidth� Visible	 	AlignmenttaCenterExpanded	FieldNameEN_VIPTitle.AlignmenttaCenterTitle.CaptionEntidad VIPWidthDVisible	 Expanded	FieldNameGRANORGANIZADORTitle.CaptionGran OrganizadorWidth� Visible	 Expanded	FieldName	CONTRATOSTitle.AlignmenttaCenterTitle.Caption	ContratosWidth;Visible	 Expanded	FieldNameCAPITASTitle.AlignmenttaCenterTitle.Caption   CápitasWidth:Visible	 Expanded	FieldNamePRIMATitle.AlignmenttaCenterTitle.CaptionPrima MensualWidthPVisible	 	AlignmenttaCenterExpanded	FieldNameEN_ENTRAMITETitle.AlignmenttaCenterTitle.Caption   Entidad en TrámiteWidtheVisible	    �
TFormPanelfpAbmLeft� TopeWidthZHeightnBorderStylebsSingle
DesignSizeZn  �TBevelBevelAbmTopJWidthR  �TLabelLabel1LeftTop/Width.HeightAutoSizeCaptionVendedor  �TLabelLabel3LeftTopWidth.HeightAutoSizeCaptionEntidad  �TButton
btnAceptarLeft�TopP	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  �TButtonbtnCancelarLeft
TopPTabOrder  �TfraVendedoresCUITfraEV_IDVENDEDORLeft?Top*WidthHeightAnchorsakLeftakTopakRight TabOrder
DesignSize  �TLabel	lbRSocialWidthCaptionCUIT  �TLabelLabel1Left{  �TLabelLabel2Left� Width%CaptionNombre  �TArtComboBoxcmbDescripcionLeftWidth�   �TPatternEditedCodigoLeft�   �	TMaskEditmskCuitLeft"   �TfraEntidadCUITfraEV_IDENTIDADLeft>Top
WidthHeightAnchorsakLeftakTopakRight TabOrder 
DesignSize  �TLabelLabel1Left{  �TLabel	lbRSocialWidthCaptionCUIT	Font.NameTahoma  �TLabelLabel3Width;  �TLabelLabel2Left�   �TArtComboBoxcmbDescripcionLeftWidth�   �	TMaskEditmskCuitLeft"
OnKeyPress  �TPatternEditedEN_CODBANCOLeft� Width<    �TSDQuerysdqConsultaLeftTop`  �TDataSource
dsConsultaLeft*Top`  �TSortDialog
SortDialogLeftTop|  �TExportDialogExportDialogLeft*Top|  �TQueryPrint
QueryPrintLastColTypelcFillPageOrientationpxLandscapePageSizepsLegalLeft*Top�  �
TSeguridad	SeguridadAutoEjecutar	ClavesNamePermisoAgregarVariasEntidades NamePermisoModificarEntidades  DBLoginfrmPrincipal.DBLoginLeftTopD  �TFormStorageFormStorageLeft*TopD  �TPrintDialogPrintDialogLeftTop�  �TShortCutControlShortCutControl	ShortCutsKeytLinkControltbRefrescar KeyN@LinkControltbNuevo KeyM@LinkControltbModificar Key.@LinkControl
tbEliminar KeyL@LinkControl	tbLimpiar KeyO@LinkControl	tbOrdenar KeyI@LinkControl
tbImprimir KeyE@LinkControl
tbExportar KeyS@LinkControltbSalir2 KeyU@ KeyJ@  LeftFTopD  �TFieldHider
FieldHiderLeftFTop`  
TPopupMenupmnuImprimirLeftFTop| 	TMenuItemmnuImpResultadosCaption
ResultadosOnClickmnuImpResultadosClick  	TMenuItemmnuImpEtiquetasCaption	EtiquetasOnClickmnuImpEtiquetasClick   TSDQuerysdqEjecutivoDatabaseNamedbprincipalOptions SQL.StringsSELECT EC_ID, EC_NOMBRE  FROM AEC_EJECUTIVOCUENTA WHERE EC_FECHABAJA IS NULL ORDER BY EC_NOMBRE  Left;Top�   TDataSourcedsEjecutivoDataSetsdqEjecutivoLeftWTop�   TSDQuerysdqDelegacionDatabaseNamedbprincipalOptions SQL.StringsSELECT EL_ID, EL_NOMBRE  FROM DEL_DELEGACION WHERE EL_FECHABAJA IS NULL ORDER BY EL_NOMBRE    Left�Top�   TDataSourcedsDelegacionDataSetsdqDelegacionLeftTop�   
TPopupMenupmnuDocumentacionLeftbTop| 	TMenuItemmnuCargarDocumentacionCaption   Cargar DocumentaciónOnClickmnuCargarDocumentacionClick  	TMenuItemmnuVerDocumentacionCaption   Ver DocumentaciónOnClickmnuVerDocumentacionClick    