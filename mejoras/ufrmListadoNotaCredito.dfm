�
 TFRMLISTADONOTACREDITO 0p<  TPF0�TfrmListadoNotaCreditofrmListadoNotaCreditoCaptionListado de nota de creditoClientWidth@OnCreate
FormCreateExplicitWidthFExplicitHeight�PixelsPerInch`
TextHeight �	TDxHeaderheaderCabeceraWidth@ExplicitWidth@ TButtonbtnConsultarAlignWithMargins	LeftTopWidthbHeight$ActionactConsultarAlignalLeftTabOrder   TButtonbtnImprimirReporteAlignWithMargins	LeftkTopWidthhHeight$ActionactImprimirReporteAlignalLeftTabOrder   �	TDBGridEhgrid1AlignWithMargins	LeftTopWidth:HeightAlignalClientAutoFitColWidths	
DataSourceds1DynProps FooterRowCountSumList.Active	TabOrderTitleParams.MultiTitle	Columns	AlignmenttaCenterDynProps EditButtons 	FieldNameFECHAFooters MaxWidthPMinWidthPWidthP 	AlignmenttaCenterDynProps EditButtons 	FieldName	CONDICIONFooters MaxWidthPMinWidthPWidthP 	AlignmenttaCenterDynProps EditButtons 	FieldNameLISTA_PRECIOFooters MaxWidthPMinWidthPTitle.CaptionLISTA PRECIOWidthP DisplayFormat0,.DynProps EditButtons 	FieldNameEXENTASFooter.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthPMinWidthPWidthP DisplayFormat0,.DynProps EditButtons 	FieldName	GRABADAS5Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthPMinWidthPTitle.CaptionGRABADAS 5%WidthP DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS10Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthPMinWidthPTitle.CaptionGRABADAS 10%WidthP DynProps EditButtons 	FieldNameOBSERVACIONFooters Width�    TRowDetailPanelControlEhRowDetailData   �TJvStatusBarstatus1Left Top�Width@HeightPanelsTextF2: Buscar clienteWidth2  ExplicitTop�  �	TGroupBoxgrp1AlignWithMargins	LeftTop-Width:HeightLAlignalTopCaption"Ingrese los parametros de consultaTabOrder TLabelLabel1Left�TopWidthAHeightCaptionFecha desde:  TLabelLabel2Left�Top3Width?HeightCaptionFecha hasta:  TLabellbl2LeftTopWidthHeightCaptionRUC:  TLabellbl3LeftTop/Width@HeightCaption   Razón Social:  TDateTimePickerdtpfecha_finLeft�Top0Width{HeightDate hz��_�@Time hz��_�@
ParseInput	TabOrder  TDateTimePickerdtpfecha_inicioLeft�TopWidth{HeightDate hz��_�@Time hz��_�@DoubleBuffered	
ParseInput	ParentDoubleBufferedTabOrder  TEditedtRucLeft^TopWidthHeightTabOrder   TEditedtRazonSocialLeft^Top,WidthHeightTabOrder   �TPanel	pnlBottomWidth@ �TBevelbvl1Width@  �TButtonbtnAceptar1Left�  �TButtonbtnCancelar1Left�   �
TImageList	ilButtonsLeft�Top   TIBQueryqry1Databasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.StringsMSELECT * FROM VISTA_NOTAS_CREDITOS_CLIENTES(:RUC, :FECHA_INICIO, :FECHA_FIN); Left�Top� 	ParamDataDataTypeftWideStringNameRUC	ParamType	ptUnknownValue
80019257-5 DataTypeftWideStringNameFECHA_INICIO	ParamType	ptUnknownValue
01/01/2019 DataTypeftWideStringName	FECHA_FIN	ParamType	ptUnknownValue
31/12/2019   TLargeintField
qry1CODIGO	FieldNameCODIGOOrigin("VISTA_NOTAS_CREDITOS_CLIENTES"."CODIGO"  TDateTimeField	qry1FECHA	FieldNameFECHAOrigin'"VISTA_NOTAS_CREDITOS_CLIENTES"."FECHA"  TIBStringFieldqry1CONDICION	FieldName	CONDICIONOrigin+"VISTA_NOTAS_CREDITOS_CLIENTES"."CONDICION"Size  TIBStringFieldqry1OBSERVACION	FieldNameOBSERVACIONOrigin-"VISTA_NOTAS_CREDITOS_CLIENTES"."OBSERVACION"Size(  TIBStringFieldqry1RUC	FieldNameRUCOrigin%"VISTA_NOTAS_CREDITOS_CLIENTES"."RUC"Size(  TIBStringFieldqry1RAZON_SOCIAL	FieldNameRAZON_SOCIALOrigin."VISTA_NOTAS_CREDITOS_CLIENTES"."RAZON_SOCIAL"Size(  TIBStringFieldqry1LISTA_PRECIO	FieldNameLISTA_PRECIOOrigin."VISTA_NOTAS_CREDITOS_CLIENTES"."LISTA_PRECIO"	FixedChar	Size	  TFloatFieldqry1EXENTAS	FieldNameEXENTASOrigin)"VISTA_NOTAS_CREDITOS_CLIENTES"."EXENTAS"  TFloatFieldqry1GRABADAS5	FieldName	GRABADAS5Origin+"VISTA_NOTAS_CREDITOS_CLIENTES"."GRABADAS5"  TFloatFieldqry1GRABADAS10	FieldName
GRABADAS10Origin,"VISTA_NOTAS_CREDITOS_CLIENTES"."GRABADAS10"   TDataSourceds1DataSetqry1LeftcTop�   TActionManageractmgr1LeftDTop	StyleNamePlatform Default TActionactBuscarClienteCaptionBuscar clienteHint,Buscar cliente y asignar la busqueda por rucShortCutq	OnExecuteactBuscarClienteExecute  TActionactImprimirReporteCaptionImprimir reporteShortCutP@	OnExecuteactImprimirReporteExecute  TActionactConsultarCaption	ConsultarShortCutt	OnExecuteactConsultarExecute   	TppReportreport1AutoStopDataPipelineppDBPipeline1PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCartaPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeighthC PrinterSetup.mmPaperWidth\K PrinterSetup.PaperSizeTemplate.FileNameRC:\sge\sources\SGE-Desktop\reports\listado_notas_creditos_emitidas_por_cliente.rtmArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft� TopVersion18.0mmColumnWidth DataPipelineNameppDBPipeline1 TppTitleBandppTitleBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�0mmPrintPosition  TppLabelplbl1DesignLayer	pdsgnlyr1UserNameplbl1AutoSizeCaption%   Notas de crédito emitidas al clienteColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameARIAL	Font.Size
Font.StylefsBold Transparent	mmHeight>&mmLeft+mmTop+mmWidthp BandType	LayerName
Foreground   TppHeaderBandphdrbnd1Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�:mmPrintPosition  TppLinepln1DesignLayer	pdsgnlyr1UserNamepln1	Pen.ColorclGray	Pen.WidthWeight       � @mmHeight�mmLeft+mmTopi+mmWidthk BandType 	LayerName
Foreground  TppLabelplbl2DesignLayer	pdsgnlyr1UserNameplbl2AutoSizeCaptionFECHAFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft+mmTop�mmWidth>BandType 	LayerName
Foreground  TppLabelplbl4DesignLayer	pdsgnlyr1UserNameplbl4AutoSizeCaptionCONDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeftYHmmTop�mmWidth�.BandType 	LayerName
Foreground  TppLabelplbl8DesignLayer	pdsgnlyr1UserNameplbl8AutoSizeCaptionEXENTASFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft�� mmTop�mmWidthliBandType 	LayerName
Foreground  TppLabelplbl9DesignLayer	pdsgnlyr1UserNameplbl9AutoSizeCaptionGRAB 05%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft>2 mmTop�mmWidth�mBandType 	LayerName
Foreground  TppLabelplbl10DesignLayer	pdsgnlyr1UserNameplbl10AutoSizeCaptionGRAB 10%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft�� mmTop�mmWidth�oBandType 	LayerName
Foreground   TppDetailBandppDetailBand1Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  	TppDBText	ppDBText1DesignLayer	pdsgnlyr1UserNameDBText1	DataFieldFECHADataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style TextAlignment
taCenteredTransparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeft+mmTopmmWidth.CBandType	LayerName
Foreground  	TppDBText	ppDBText3DesignLayer	pdsgnlyr1UserNameDBText3	DataField	CONDICIONDataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeft�MmmTopmmWidthW)BandType	LayerName
Foreground  	TppDBText	ppDBText7DesignLayer	pdsgnlyr1UserNameDBText7	DataFieldEXENTASDataPipelineppDBPipeline1DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�� mmTopmmWidth/bBandType	LayerName
Foreground  	TppDBText	ppDBText8DesignLayer	pdsgnlyr1UserNameDBText8	DataField	GRABADAS5DataPipelineppDBPipeline1DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft>2 mmTopmmWidth�mBandType	LayerName
Foreground  	TppDBText	ppDBText9DesignLayer	pdsgnlyr1UserNameDBText9	DataField
GRABADAS10DataPipelineppDBPipeline1DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft�� mmTopmmWidth�lBandType	LayerName
Foreground   TppPageSummaryBandppPageSummaryBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�3mmPrintPosition  	TppDBCalc	ppDBCalc1DesignLayer	pdsgnlyr1UserNameDBCalc1	DataField
GRABADAS10DataPipelineppDBPipeline1DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeftL� mmTop+mmWidth�lBandType	LayerName
Foreground  	TppDBCalc	ppDBCalc2DesignLayer	pdsgnlyr1UserNameDBCalc2	DataField	GRABADAS5DataPipelineppDBPipeline1DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeft�< mmTop+mmWidth�lBandType	LayerName
Foreground  	TppDBCalc	ppDBCalc3DesignLayer	pdsgnlyr1UserNameDBCalc3	DataFieldEXENTASDataPipelineppDBPipeline1DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeft�� mmTop+mmWidth�lBandType	LayerName
Foreground   TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLinepln2DesignLayer	pdsgnlyr1UserNamepln2	Pen.ColorclGray	Pen.WidthWeight       � @mmHeight�mmLeft+mmTop�mmWidthk BandType	LayerName
Foreground  TppSystemVariablepsystmvrbl1DesignLayer	pdsgnlyr1UserNamepsystmvrbl1VarTypevtPrintDateTimeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameARIAL	Font.Size	
Font.StylefsBold Transparent	mmHeight�mmLeft+mmTop+mmWidth��  BandType	LayerName
Foreground  TppSystemVariablepsystmvrbl2DesignLayer	pdsgnlyr1UserNamepsystmvrbl2VarTypevtPageNoDescFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameARIAL	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�� mmTop+mmWidth�2BandType	LayerName
Foreground   TppGroupppGroup1	BreakNameRUC1GroupFileSettings.NewFileGroupFileSettings.EmailFileKeepTogether	OutlineSettings.CreateNode	StartOnOddPageUserNameGroup1mmNewColumnThreshold mmNewPageThreshold DataPipelineName    NewFile TppGroupHeaderBandppGroupHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabelplbl5DesignLayer	pdsgnlyr1UserNameplbl5AutoSizeCaptionRUC:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft+mmTop mmWidth.CBandTypeGroupNo 	LayerName
Foreground  	TppDBText	ppDBText5DesignLayer	pdsgnlyr1UserNameDBText5AutoSize		DataFieldRAZON_SOCIALDataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipeline1mmHeight�mmLeftt mmTop mmWidth��  BandTypeGroupNo 	LayerName
Foreground  	TppDBText	ppDBText4DesignLayer	pdsgnlyr1UserNameDBText4	DataFieldRUCDataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeft�MmmTop mmWidth��  BandTypeGroupNo 	LayerName
Foreground  TppLabelplbl6DesignLayer	pdsgnlyr1UserNameplbl6AutoSizeCaptionRAZON SOCIALFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft`�  mmTop mmWidth��  BandTypeGroupNo 	LayerName
Foreground   TppGroupFooterBandppGroupFooterBand1Background.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeightz-mmPrintPosition    TppDesignLayersppDesignLayers1 TppDesignLayer	pdsgnlyr1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1   TppDBPipelineppDBPipeline1
DataSourceds1UserNameDBPipeline1Left� Top  TApplicationEvents
appevents1OnIdleappevents1IdleLeft�Top�    