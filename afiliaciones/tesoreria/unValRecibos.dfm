�
 TFRMVALRECIBOS 0Q&  TPF0�TfrmValRecibosfrmValRecibosLeft� Top� Caption   Administración de RecibosClientHeightrClientWidthxConstraints.MinHeight�Constraints.MinWidth�	Font.NameTahomaOldCreateOrder	ExplicitLeft� ExplicitTop� ExplicitWidth�ExplicitHeight�PixelsPerInch`
TextHeight �TPanel
pnlFiltrosWidthxHeight� ExplicitWidthxExplicitHeight� 
DesignSizex�   	TGroupBox	gbEmpresaLeftTopaWidthsHeight-AnchorsakLeftakTopakRight Caption
 &Empresa TabOrder
DesignSizes-  TBevelBevel1Left� Top	WidthHeightAnchorsakLeftakTopakBottom Shape
bsLeftLine  TRadioButtonrbEmpNormalLeftTopWidth<HeightCaption	Afilia&daChecked	TabOrder TabStop	OnClickopTipoEmpresaClick  TRadioButtonrbEmpDeudoraLeftHTopWidth<HeightCaptionOtr&asTabOrderOnClickopTipoEmpresaClick  �TfraEmpresaDeudora
fraEmpresaLeft� TopWidth�HeightAnchorsakLeftakTopakRight Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontParentShowHintShowHint	TabOrderExplicitLeft� ExplicitTopExplicitWidth�
DesignSize�  �TLabel
lbContratoLeftwExplicitLeftw  �TIntEdit
edContratoLeft�ExplicitLeft�  �TArtComboBox
cmbRSocialWidth� ExplicitWidth�     	TGroupBoxgbFechaReciboLeft� Top Width� Height-Caption &Fecha del Recibo TabOrder TLabelLabel5LefteTopWidthHeightCaption>>Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TDateComboBoxedFechaReciboDesdeLeftTopWidthXHeightMaxDateComboedFechaReciboHastaTabOrder   TDateComboBoxedFechaReciboHastaLefttTopWidthXHeightMinDateComboedFechaReciboDesdeTabOrder   	TGroupBoxgbNroReciboLeftTop Width� Height-Caption    Número de &Recibo TabOrder  TLabelLabel3LeftQTopWidthHeightCaption>>Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TIntEditedNroReciboDesdeLeftTopWidthFHeightTabOrder   TIntEditedNroReciboHastaLeft`TopWidthFHeightTabOrder   	TGroupBoxgbFechaImpresionLeft�Top Width� Height-Caption    Fecha de &Impresión TabOrder TLabelLabel1LefteTopWidthHeightCaption>>Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TDateComboBoxedFechaImpresionDesdeLeftTopWidthXHeightMaxDateComboedFechaImpresionHastaTabOrder   TDateComboBoxedFechaImpresionHastaLefttTopWidthXHeightMinDateComboedFechaImpresionDesdeTabOrder   TRadioGroup	rgAnuladoLeftTop-Width� Height4Caption
 &Anulado Columns	ItemIndexItems.Strings&SiN&o&Todos TabOrder  	TGroupBoxgbMotivoAnulacionLeft�Top-Width� Height4AnchorsakLeftakTopakRight Caption    &Motivo de Anulación TabOrder
DesignSize� 4  TDBCheckCombodbcMotivosAnulacionLeftTopWidth� HeightAnchorsakLeftakTopakRight TabOrder 
DataSourcedsMotivosAnulacionKeyField	TB_CODIGO	ListFieldTB_DESCRIPCION   	TGroupBoxgbImporteValorLeft� Top-Width� Height4Caption$ Importe de los &Valores del Recibo TabOrder TLabelLabel2LefteTopWidthHeightCaption>>Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TCurrencyEditedImporteValorDesdeLeftTopWidthXHeightMargins.LeftMargins.TopAutoSize	MaxLengthTabOrder   TCurrencyEditedImporteValorHastaLefttTopWidthXHeightMargins.LeftMargins.TopAutoSize	MaxLengthTabOrder    �TCoolBarCoolBarTop� WidthxBandsControlToolBar
ImageIndex�	MinHeightWidthr  ExplicitTop� ExplicitWidthx �TToolBarToolBarWidthiHeightAutoSize	ExplicitWidthiExplicitHeight �TToolButton
tbEliminarEnabled	  �TToolButton	tbOrdenarEnabled  �TToolButtontbMostrarOcultarColumnasVisible	  �TToolButton
tbImprimirDropdownMenupmnuImprimirEnabled	StyletbsDropDownExplicitWidth&  �TToolButton
tbExportarLeft� Enabled	ExplicitLeft�   �TToolButtontbEnviarMailLeftEnabled	ExplicitLeft  �TToolButtonToolButton8Left,ExplicitLeft,  �TToolButtontbMostrarFiltrosLeft4EnabledExplicitLeft4  �TToolButtontbMaxRegistrosLeftKExplicitLeftK  �TToolButtonToolButton11LeftbExplicitLeftb  �TToolButtontbSalirLeftjVisibleExplicitLeftj  TToolButtontbAnularLeft�Top HintAnular Recibo (Ctrl+A)CaptiontbAnular
ImageIndexOnClicktbAnularClick  TToolButtonToolButton1Left�Top WidthCaptionToolButton1
ImageIndexStyletbsSeparator  TToolButtontbSalir2Left�Top HintSalir (Ctrl+S)CaptiontbSalir2
ImageIndexOnClicktbSalirClick    �
TArtDBGridGridTop� WidthxHeight� OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgConfirmDeletedgCancelOnExit TitleFont.NameTahomaOnGetCellParamsGridGetCellParamsColumns	AlignmenttaCenterExpanded	FieldNameCUITTitle.AlignmenttaCenterWidthRVisible	 Expanded	FieldNameRAZON_SOCIALTitle.Caption   Razón SocialWidth� Visible	 Expanded	FieldNameCONTRATOTitle.AlignmenttaCenterTitle.CaptionContratoWidth>Visible	 	AlignmenttaRightJustifyExpanded	FieldNameNRO_DE_RECIBOTitle.AlignmenttaCenterTitle.CaptionNro. de ReciboWidthUVisible	 	AlignmenttaCenterExpanded	FieldNameFECHATitle.AlignmenttaCenterTitle.CaptionFechaWidthGVisible	 	AlignmenttaCenterExpanded	FieldNameFECHA_IMPRESIONTitle.AlignmenttaCenterTitle.Caption   F. ImpresiónWidthEVisible	 	AlignmenttaCenterExpanded	FieldNameFECHA_REIMPRESIONTitle.AlignmenttaCenterTitle.Caption   F. ReimpresiónWidthOVisible	 	AlignmenttaRightJustifyExpanded	FieldNameCANTIDAD_DE_IMPRESIONESTitle.AlignmenttaCenterTitle.CaptionCant. ImpresionesWidth]Visible	 	AlignmenttaRightJustifyExpanded	FieldNameIMPORTETitle.AlignmenttaCenterTitle.CaptionImporteWidthWVisible	 	AlignmenttaRightJustifyExpanded	FieldNameIMPORTE_VALORTitle.AlignmenttaCenterTitle.CaptionImp. ValoresWidthWVisible	 	AlignmenttaCenterExpanded	FieldNameFECHA_ANULACIONTitle.AlignmenttaCenterTitle.Caption   F. AnulaciónWidthDVisible	 Expanded	FieldNameMOTIVO_DE_BAJATitle.CaptionMotivo de BajaWidth� Visible	 Expanded	FieldNameDESCRIPCIONTitle.Caption   DescripciónWidth�Visible	    �
TFormPanelfpAnulacionLeftXTop� Width�Height� Caption
   Anulación	FormWidth 
FormHeigth FormLeft FormTop BorderIconsbiSystemMenu
biMaximize PositionpoOwnerFormCenterConstraints.MaxHeight� OnEnterfpAnulacionEnter
DesignSize��   TBevelBevelAbmLeftTopmWidth�HeightAnchorsakLeftakRightakBottom Shape	bsTopLine  TLabellbMotivoLeftTop	Width Height	AlignmenttaRightJustifyCaptionMotivo  TLabellbFechaLeftoTop	WidthHeight	AlignmenttaRightJustifyAnchorsakTopakRight AutoSizeCaptionFecha  TLabellbDescripcionLeftTop$Width6Height	AlignmenttaRightJustifyCaption   Descripción  TButtonbtnRechazoAceptarLeftVTopsWidthKHeightAnchorsakRightakBottom Caption&AceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickbtnRechazoAceptarClick  TButtonbtnRechazoCancelarLeft�TopsWidthKHeightAnchorsakRightakBottom Cancel	Caption	&CancelarModalResultTabOrder  �TfraCtbTablasfraCtbTablasAnulacionLeft?TopWidth)HeightAnchorsakLeftakTopakRight TabOrder ExplicitLeft?ExplicitTopExplicitWidth)
DesignSize)  �TArtComboBoxcmbDescripcionWidth� ExplicitWidth�   �TPatternEditedCodigoLeft ExplicitLeft    TDateComboBoxedFechaAnulacionLeft�TopWidthXHeightAnchorsakTopakRight TabOrder  TMemoedDescripcionAnulacionLeft?Top!Width�HeightHAnchorsakLeftakTopakRight Lines.StringsedDescripcionAnulacion 	MaxLengthdTabOrder   �TSDQuerysdqConsultaLeft Top�   �TDataSource
dsConsultaLeft<Top�   �TSortDialog
SortDialogLeft Top  �TExportDialogExportDialogLeft<Top  �TQueryPrint
QueryPrintPageOrientationpxLandscapePageSizepsLegalOnGetCellParamsQueryPrintGetCellParamsZoomKOptionsqoZoomPrintqoZoomCalcFontSize Left<Top(  �
TSeguridad	SeguridadLeftTop�   �TFormStorageFormStorageLeft<Top�   �TPrintDialogPrintDialogLeft Top(  �TShortCutControlShortCutControl	ShortCutsKeytLinkControltbRefrescar KeyN@LinkControltbNuevo KeyM@LinkControltbModificar Key.@LinkControl
tbEliminar KeyL@LinkControl	tbLimpiar KeyO@LinkControl	tbOrdenar KeyI@LinkControl
tbImprimir KeyE@LinkControl
tbExportar KeyS@LinkControltbSalir2 KeyA@LinkControltbAnular  LeftXTop�   �TFieldHider
FieldHiderLeftXTop�   TDataSourcedsMotivosAnulacionDataSetsdqMotivosAnulacionLeft�TopB  TSDQuerysdqMotivosAnulacionDatabaseNamedbprincipalOptions SQL.Strings SELECT TB_CODIGO, TB_DESCRIPCIONFROM CTB_TABLASWHERE TB_CLAVE='RBAJA'AND TB_CODIGO<>'0'AND TB_FECHABAJA IS NULLORDER BY TB_DESCRIPCION Left�TopB  
TPopupMenupmnuImprimirLeftXTop( 	TMenuItemmnuImprimirResultadosCaptionImprimir ResultadosOnClickmnuImprimirResultadosClick  	TMenuItem	mnuReciboCaptionRecibo 	TMenuItemmnuReciboImprimirCaptionImprimirOnClickmnuReciboImprimirClick  	TMenuItemmnuReciboVisualizarCaption
VisualizarOnClickmnuReciboImprimirClick     