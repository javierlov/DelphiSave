�
 TRPTLIQUIDACIONAPROBADASOTROSCONCEPTOS 0XW  TPF0&TRptLiquidacionAprobadasOtrosConceptos%RptLiquidacionAprobadasOtrosConceptosLeft Top Width Height0Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetsdqLiquidacionFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' IDReport OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.OrientationpoLandscapePage.PaperSizeLetterPage.Valuesffffff�@      ��
@ffffff�@      ��
@ffffff�@ffffff�@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.ExtendedDuplex "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrintIfEmpty	
SnapToGrid	UnitsPixelsZoomdPrevFormStylefsNormalPreviewInitialStatewsMaximized TQRBand	qrbTituloLeft&Top&Width�Height5Frame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �����:�@ ������
@ BandTyperbPageHeader TQRLabel	qrlTituloLeftTopWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values       �@ �������@       �@ �����"�	@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretch	Caption5Otros Conceptos - Liquidaciones por Conceptos LegalesColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  TQRLabelqrlFechaAprobacionLeft�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk�������@ �����D�	@      ��@ZUUUU��@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretch	Caption   con fecha de aprobaciónColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize   TQRBand
qrbDetalleLeft&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@ ������
@ BandTyperbDetail 	TQRDBText	QRDBText5LeftTopWidth,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ `UUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetsdqLiquidacion	DataFieldcarpetaTransparentWordWrap	FontSize
  	TQRDBText	QRDBText6LeftcTopWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk�����J�@      ��@       �@𞪪��
�	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetsdqLiquidacion	DataFieldconceptoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText7LeftXTopWidth]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      p�	@       �@      �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetsdqLiquidacion	DataFieldfechaliquidacionTransparentWordWrap	FontSize
  	TQRDBText
QRDBText10LeftuTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      Y�
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetsdqLiquidacion	DataFieldimportefacturaMask,0.00;-,0.00TransparentWordWrap	FontSize
  TQRExprQRExpr7Left�TopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      .�	@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression1IF(importesinretencion= 0,'',importesinretencion)Mask,0.00;-,0.00FontSize
  TQRExprQRExpr8LeftTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression1IF(importeconretencion= 0,'',importeconretencion)Mask,0.00;-,0.00FontSize
   TQRBandfbLiquidacionesLeft&TopBWidth�Height(Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �������@ ������
@ BandTyperbPageFooter TQRLabelqrlLiquidadoPorLeft	TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      ��@       �@ �����ڻ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionEmitido por:ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData1Left	TopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@      @�@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTextFecha: TransparentFontSize  TQRLabel
qrlUsuarioLeftTTopWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@      @�@       �@ ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption
qrlUsuarioColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameVerdana
Font.Style 
ParentFontTransparentWordWrap	FontSize   TQRGroupgrpAcreedorLeft&Top[Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values�\UUUU��@ ������
@ 
Expression	proveedor
FooterBandgftAcreedorMasterOwnerReprintOnNewPage TQRLabelQRLabel1LeftTopWidth?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@       �@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Acreedor:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText1LeftETopWidth8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ �����*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetsdqLiquidacion	DataField	proveedorTransparentWordWrap	FontSize
   TQRGroup
grpFacturaLeft&TopqWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �����j�@ ������
@ 
Expression
nrofactura
FooterBand
gftFacturaMasterOwnerReprintOnNewPage TQRLabelQRLabel2Left	TopWidth5HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ �����:�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFactura:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText2LeftBTopWidthBHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetsdqLiquidacion	DataField
nrofacturaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel6Left;TopWidthlHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      \�@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFactura Sistema:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText4Left�TopWidthDHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      �	@       �@ ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetsdqLiquidacion	DataFieldfactura_fnlFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
   TQRBand
gftFacturaLeft&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values XUUUU��@ ������
@ BandTyperbGroupFooter TQRExprQRExpr1Left�TopWidthZHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      .�	@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression;IF(SUM(importesinretencion)= 0,'',SUM(importesinretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr2LeftTopWidthZHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression;IF(SUM(importeconretencion)= 0,'',SUM(importeconretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr3LeftuTopWidthZHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      Y�
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression1IF(SUM(importefactura)= 0,'',SUM(importefactura))Mask,0.00;-,0.00FontSize
  TQRLabelQRLabel3LeftTopWidthgHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��	@       �@ �����B�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotales Factura:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
   TQRBandgftAcreedorLeft&TopWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclMoneyGreenForceNewColumnForceNewPageSize.Values      ��@ ������
@ BandTyperbGroupFooter TQRLabelQRLabel4Left(TopWidthqHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��	@       �@ZUUUU}�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotales Acreedor:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRExprQRExpr4Left�TopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      .�	@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	Transparent	WordWrap	
Expression;IF(SUM(importesinretencion)= 0,'',SUM(importesinretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr5LeftTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	Transparent	WordWrap	
Expression;IF(SUM(importeconretencion)= 0,'',SUM(importeconretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr6LeftuTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      Y�
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	Transparent	WordWrap	
Expression1IF(SUM(importefactura)= 0,'',SUM(importefactura))Mask,0.00;-,0.00FontSize
   TQRGroupgrpBeneficiarioLeft&Top� Width�Height-Frame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ������
@ 
Expressionbeneficiario
FooterBandgftBeneficiarioMasterOwnerReprintOnNewPage TQRLabel	QRLabel13LeftTopWidthRHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ `UUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionBeneficiario:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText3LeftcTopWidthBHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretch	ColorclWhiteDataSetsdqLiquidacion	DataFieldbeneficiarioTransparentWordWrap	FontSize
  TQRLabelqrlTitCarpetaLeftTopWidth.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ �����j�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionCarpetaColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel8LeftcTopWidth8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ �����*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionConceptoColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel9LeftXTopWidthNHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      p�	@       �@      `�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   F.LiquidaciónColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel10Left�TopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      "�	@       �@ �����ڻ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaptionImp.sin Ret.ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel11Left'TopWidthKHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      s�
@       �@      p�@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaptionImp.con Ret.ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel12Left�TopWidth?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      Ж
@       �@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchCaptionTotal Fact.ColorclWhiteTransparentWordWrap	FontSize
   TQRBandgftBeneficiarioLeft&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values XUUUU��@ ������
@ BandTyperbGroupFooter TQRExprQRExpr9Left�TopWidthZHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      .�	@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression;IF(SUM(importesinretencion)= 0,'',SUM(importesinretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr10LeftTopWidthZHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression;IF(SUM(importeconretencion)= 0,'',SUM(importeconretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr11LeftuTopWidthZHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      Y�
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrint	TransparentWordWrap	
Expression1IF(SUM(importefactura)= 0,'',SUM(importefactura))Mask,0.00;-,0.00FontSize
  TQRLabel	QRLabel14LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��	@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotales Beneficiario:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
   TQRBandQRBand1Left&Top%Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values XUUUUu�@ ������
@ BandType	rbSummary TQRExprQRExpr12Left�TopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      .�	@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	Transparent	WordWrap	
Expression;IF(SUM(importesinretencion)= 0,'',SUM(importesinretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr13LeftTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	Transparent	WordWrap	
Expression;IF(SUM(importeconretencion)= 0,'',SUM(importeconretencion))Mask,0.00;-,0.00FontSize
  TQRExprQRExpr14LeftuTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      Y�
@       �@       �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteResetAfterPrint	Transparent	WordWrap	
Expression1IF(SUM(importefactura)= 0,'',SUM(importefactura))Mask,0.00;-,0.00FontSize
  TQRLabelQRLabel5Left(TopWidthxHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��	@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotales Generales:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel15Left	TopWidth^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionLiquidaciones:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  
TQRSysData
QRSysData2LeftlTopWidthNHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@      ��@       �@      `�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDetailCountTransparentFontSize
   TSDQuerysdqLiquidacionDatabaseNamedbPrincipalSQL.Strings  Left;Top/   