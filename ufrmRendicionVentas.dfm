�
 TFRMRENDICIONVENTAS 0q  TPF0�TfrmRendicionVentasfrmRendicionVentasCaptionRendicion de VentasClientHeightClientWidth2ExplicitWidthBExplicitHeight>PixelsPerInch`
TextHeight � TLabellbl1LeftTopWidth� HeightCaptionResumen de Ventas ImpresasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  �TLabellbl2LeftTopWidth� HeightCaption&Seleccione la fecha y presione generar  �	TDxHeaderheaderCabeceraWidth2  	TDBGridEhgrid1AlignWithMargins	LeftTop� Width,HeightxAlignalTopAutoFitColWidths	BorderStylebsNone
DataSourcedsVentasDynProps FooterRowCountFooterParams.Color	clBtnFaceFooterParams.Font.CharsetDEFAULT_CHARSETFooterParams.Font.ColorclWindowTextFooterParams.Font.Height�FooterParams.Font.NameTahomaFooterParams.Font.StylefsBold FooterParams.ParentFont	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines SumList.Active	TabOrderTitleParams.MultiTitle	VertScrollBar.VisibleModesbAlwaysShowEhColumnsDynProps EditButtons 	FieldNameFECHAFooters WidthI DynProps EditButtons 	FieldName	CONDICIONFooter.AlignmenttaRightJustifyFooter.ValueSubTotales:Footer.ValueTypefvtStaticTextFooters WidthW DynProps EditButtons 	FieldNameFACTURASFooters VisibleWidthS DisplayFormat0,.DynProps EditButtons 	FieldNameEXENTASFooter.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthdMinWidthdWidthd DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS05Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthdMinWidthdWidthd DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS10Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthdMinWidthdWidthd   TRowDetailPanelControlEhRowDetailData   	TDBGridEh	DBGridEh1AlignWithMargins	LeftTopWidth,Height� AlignalClientAutoFitColWidths	BorderStylebsNone
DataSource	dsDetalleDynProps FooterRowCountFooterParams.Color	clBtnFaceFooterParams.Font.CharsetDEFAULT_CHARSETFooterParams.Font.ColorclWindowTextFooterParams.Font.Height�FooterParams.Font.NameTahomaFooterParams.Font.StylefsBold FooterParams.ParentFont	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines SumList.Active	TabOrderTitleParams.MultiTitle	VertScrollBar.VisibleModesbAlwaysShowEhColumnsDynProps EditButtons 	FieldNameFECHAFooters WidthI DynProps EditButtons 	FieldNameNUMEROFooters Widthc DynProps EditButtons 	FieldName	CONDICIONFooters WidthX DynProps EditButtons 	FieldNameRUCFooters Widthm DynProps EditButtons 	FieldNameRAZON_SOCIALFooter.AlignmenttaRightJustifyFooter.ValueSubTotales:Footer.ValueTypefvtStaticTextFooters Title.CaptionRAZON SOCIALWidth�  DisplayFormat0,.DynProps EditButtons 	FieldNameEXENTASFooter.DisplayFormat0,.Footer.ValueTypefvtSumFooters WidthP DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS05Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters WidthP DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS10Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters WidthP DisplayFormat0,.DynProps EditButtons 	FieldNameTOTALFooter.DisplayFormat0,.Footer.FieldNameTOTALFooter.ValueTypefvtSumFooters    TRowDetailPanelControlEhRowDetailData   	TGroupBox	GroupBox1AlignWithMargins	LeftTop\Width,Height8Margins.Top2AlignalTopCaption
ParametrosTabOrder  TLabellbl3LeftTopWidth"HeightCaptionDesde:  TLabelLabel1Left� TopWidth HeightCaptionHasta:  TButton
btnGenerarLeft�TopWidthKHeightCaption&GenerarTabOrder OnClickbtnGenerarClick  TButtonbtnImprimirLeft�TopWidthKHeightCaption	&ImprimirTabOrderOnClickbtnImprimirClick  TJvDatePickerEditedtFechaLeftXTopWidthoHeightAllowNoDate	Checked	TabOrder  TJvDatePickerEditedtfechafinLeft TopWidthoHeightAllowNoDate	Checked	TabOrder   TJvStatusBarJvStatusBar1Left TopWidth2HeightPanels   TIBQuery	qryVentasDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Strings=select * from VISTA_RESUMEN_VENTAS(:fecha_inicio, :fecha_fin) LeftTop	ParamDataDataTypeftWideStringNamefecha_inicio	ParamType	ptUnknownValue
23/03/2017 DataTypeftWideStringName	fecha_fin	ParamType	ptUnknownValue
31/03/2017    	TppReportreport1PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�	PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Template.FileName7C:\sge\sources\SGE-Desktop\reports\rendicion_ventas.rtmArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft�TopVersion18.0mmColumnWidth�  TppHeaderBandppHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�6mmPrintPosition  TppLabelplbl1DesignLayerppDesignLayer1UserNameplbl1CaptionResumen de ventasFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft mmTop4mmWidth��  BandType 	LayerName
Foreground  TppLabelplbl2DesignLayerppDesignLayer1UserNameplbl2CaptionVentas de la fechaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft mmTop�mmWidth�oBandType 	LayerName
Foreground  TppSystemVariableppSystemVariable1DesignLayerppDesignLayer1UserNameSystemVariable1VarTypevtPrintDateTimeDisplayFormatdd/mm/yyyy HH:nn:ssFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftv� mmTopEmmWidth�yBandType 	LayerName
Foreground  TppSystemVariableppSystemVariable2DesignLayerppDesignLayer1UserNameSystemVariable2VarTypevtPageNoDisplayFormat   Pág: 0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft$� mmTop�mmWidthF'BandType 	LayerName
Foreground   TppDetailBandppDetailBand1Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�4mmPrintPosition  TppSubReportpsbrprt1DesignLayerppDesignLayer1UserNamepsbrprt1	ExpandAllNewPrintJobOutlineSettings.CreateNode	TraverseAllDataDataPipelineNameppVentasmmHeight�mmLeft mmTopEmmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReport
pchldrprt1AutoStopDataPipelineppVentasPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�	PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version18.0mmColumnWidth DataPipelineNameppVentas TppTitleBandppTitleBand1Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�0mmPrintPosition  TppLabelppLabel1DesignLayerppDesignLayer2UserNameLabel1AutoSizeCaptionFECHAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft mmTop�mmWidthjJBandType	LayerNameForeground1  TppLabelppLabel2DesignLayerppDesignLayer2UserNameLabel2AutoSizeCaption	CONDICIONFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft]mmTop�mmWidth�RBandType	LayerNameForeground1  TppLabelppLabel4DesignLayerppDesignLayer2UserNameLabel4AutoSizeCaptionEXENTASFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCentermmHeight�mmLeft+�  mmTop�mmWidth�sBandType	LayerNameForeground1  TppLabelppLabel5DesignLayerppDesignLayer2UserNameLabel5AutoSizeCaptionGRABADAS 5%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCentermmHeight�mmLeft1: mmTop�mmWidth�sBandType	LayerNameForeground1  TppLabelppLabel6DesignLayerppDesignLayer2UserNameLabel6AutoSizeCaptionGRABADAS 10%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCentermmHeight�mmLeft8� mmTop�mmWidth�sBandType	LayerNameForeground1  TppLabelplbl3DesignLayerppDesignLayer2UserNameplbl3Border.BorderPositionsbpBottom Border.Visible	CaptionTOTALES POR CONDICION DE VENTAFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft mmTop+mmWidth��  BandType	LayerNameForeground1  TppLinepln1DesignLayerppDesignLayer2UserNamepln1Weight       ��?mmHeight0mmLeft mmTop`*mmWidthQ BandType	LayerNameForeground1   TppDetailBandppDetailBand2Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  	TppDBText	ppDBText1DesignLayerppDesignLayer2UserNameDBText1	DataFieldFECHADataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style Transparent	VerticalAlignmentavCenterDataPipelineNameppVentasmmHeight�mmLeft mmTop mmWidthjJBandType	LayerNameForeground1  	TppDBText	ppDBText2DesignLayerppDesignLayer2UserNameDBText2	DataField	CONDICIONDataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style Transparent	VerticalAlignmentavCenterDataPipelineNameppVentasmmHeight�mmLeft]mmTop mmWidth�RBandType	LayerNameForeground1  	TppDBText	ppDBText4DesignLayerppDesignLayer2UserNameDBText4	DataFieldEXENTASDataPipelineppVentasDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineNameppVentasmmHeight�mmLeft+�  mmTop mmWidth�sBandType	LayerNameForeground1  	TppDBText	ppDBText5DesignLayerppDesignLayer2UserNameDBText5	DataField
GRABADAS05DataPipelineppVentasDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineNameppVentasmmHeight�mmLeft1: mmTop mmWidth�sBandType	LayerNameForeground1  	TppDBText	ppDBText6DesignLayerppDesignLayer2UserNameDBText6	DataField
GRABADAS10DataPipelineppVentasDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineNameppVentasmmHeight�mmLeft8� mmTop mmWidth�sBandType	LayerNameForeground1   TppSummaryBandppSummaryBand1Background.Brush.StylebsClearmmBottomOffset mmHeightF'mmPrintPosition  	TppDBCalc	ppDBCalc1DesignLayerppDesignLayer2UserNameDBCalc1	DataField
GRABADAS10DataPipelineppVentasDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppVentasmmHeight�mmLeft8� mmTop+mmWidth�sBandType	LayerNameForeground1  	TppDBCalc	ppDBCalc2DesignLayerppDesignLayer2UserNameDBCalc2	DataField
GRABADAS05DataPipelineppVentasDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppVentasmmHeight�mmLeft1: mmTop+mmWidth�sBandType	LayerNameForeground1  	TppDBCalc	ppDBCalc3DesignLayerppDesignLayer2UserNameDBCalc3	DataFieldEXENTASDataPipelineppVentasDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameppVentasmmHeight�mmLeft+�  mmTop+mmWidth�sBandType	LayerNameForeground1  TppLabel	ppLabel13DesignLayerppDesignLayer2UserNameLabel13CaptionTotales:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft|mmTop+mmWidth�3BandType	LayerNameForeground1  TppLineppLine3DesignLayerppDesignLayer2UserNameLine3Weight       ��?mmHeight4mmLeft mmTop mmWidthQ BandType	LayerNameForeground1   TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBandedIndex      TppSubReportpsbrprt2DesignLayerppDesignLayer1UserNamepsbrprt2	ExpandAllNewPrintJobOutlineSettings.CreateNode	ShiftRelativeTopsbrprt1TraverseAllDataDataPipelineName
ppDetallesmmHeight�mmLeft mmTop!mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReport
pchldrprt2AutoStopDataPipeline
ppDetallesPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�	PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version18.0mmColumnWidth DataPipelineName
ppDetalles TppTitleBandppTitleBand2Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight%BmmPrintPosition  TppLabel	ppLabel12DesignLayerppDesignLayer3UserNameLabel12AutoSizeCaptionFECHAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft mmTopN'mmWidthjJBandType	LayerNameForeground2  TppLabelppLabel3DesignLayerppDesignLayer3UserNameLabel3AutoSizeCaptionGRABADAS10%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft�| mmTopN'mmWidth}kBandType	LayerNameForeground2  TppLabelppLabel7DesignLayerppDesignLayer3UserNameLabel7AutoSizeCaptionGRABADAS 5%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft� mmTopN'mmWidth}kBandType	LayerNameForeground2  TppLabelppLabel8DesignLayerppDesignLayer3UserNameLabel8AutoSizeCaptionEXENTASFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft%� mmTopN'mmWidth}kBandType	LayerNameForeground2  TppLabelppLabel9DesignLayerppDesignLayer3UserNameLabel9AutoSizeCaptionRAZON SOCIALFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft1�  mmTopN'mmWidth]�  BandType	LayerNameForeground2  TppLabel	ppLabel10DesignLayerppDesignLayer3UserNameLabel10AutoSizeCaptionRUCFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft�0 mmTopN'mmWidth�ZBandType	LayerNameForeground2  TppLabel	ppLabel11DesignLayerppDesignLayer3UserNameLabel11AutoSizeCaptionCONDFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft�MmmTopN'mmWidthW)BandType	LayerNameForeground2  TppLineppLine2DesignLayerppDesignLayer3UserNameLine2	Pen.Color	clMedGrayWeight       ��?mmHeight	mmLeft mmTop�;mmWidth| BandType	LayerNameForeground2  TppLabel	ppLabel14DesignLayerppDesignLayer3UserNameLabel14Border.BorderPositionsbpBottom Border.Visible	CaptionDETALLE DE FACTURACIONFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft mmTop mmWidth!�  BandType	LayerNameForeground2  TppLabel	ppLabel16DesignLayerppDesignLayer3UserNameLabel16AutoSizeCaption   FACTURA N°Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft mmTop�mmWidthjJBandType	LayerNameForeground2   TppDetailBandppDetailBand3Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight$#mmPrintPosition  	TppDBText	ppDBText3DesignLayerppDesignLayer3UserNameDBText3	DataField
GRABADAS10DataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft�| mmTop�mmWidth}kBandType	LayerNameForeground2  	TppDBText	ppDBText7DesignLayerppDesignLayer3UserNameDBText7	DataField
GRABADAS05DataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft� mmTop�mmWidth}kBandType	LayerNameForeground2  	TppDBText	ppDBText8DesignLayerppDesignLayer3UserNameDBText8	DataFieldEXENTASDataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft%� mmTop�mmWidth}kBandType	LayerNameForeground2  	TppDBText	ppDBText9DesignLayerppDesignLayer3UserNameDBText9	DataFieldRAZON_SOCIALDataPipeline
ppDetallesEllipsis	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft1�  mmTop�mmWidth]�  BandType	LayerNameForeground2  	TppDBText
ppDBText10DesignLayerppDesignLayer3UserNameDBText10	DataFieldRUCDataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft�0 mmTop�mmWidth�ZBandType	LayerNameForeground2  	TppDBText
ppDBText11DesignLayerppDesignLayer3UserNameDBText11	DataField	CONDICIONDataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTransparent	DataPipelineName
ppDetallesmmHeight�mmLeft�MmmTop�mmWidthW)BandType	LayerNameForeground2  	TppDBText
ppDBText12DesignLayerppDesignLayer3UserNameDBText12	DataFieldFECHADataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft mmTop�mmWidthjJBandType	LayerNameForeground2  	TppDBText
ppDBText13DesignLayerppDesignLayer3UserNameDBText13	DataFieldNUMERODataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style Transparent	DataPipelineName
ppDetallesmmHeight�mmLeft mmTop mmWidthݕ  BandType	LayerNameForeground2   TppSummaryBandppSummaryBand2Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  	TppDBCalc	ppDBCalc4DesignLayerppDesignLayer3UserNameDBCalc4	DataField
GRABADAS10DataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft�| mmTop+mmWidth}kBandType	LayerNameForeground2  	TppDBCalc	ppDBCalc5DesignLayerppDesignLayer3UserNameDBCalc5	DataField
GRABADAS05DataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft�	 mmTop+mmWidth}kBandType	LayerNameForeground2  	TppDBCalc	ppDBCalc6DesignLayerppDesignLayer3UserNameDBCalc6	DataFieldEXENTASDataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeight�mmLeft� mmTop+mmWidth}kBandType	LayerNameForeground2  TppLabel	ppLabel15DesignLayerppDesignLayer3UserNameLabel15CaptionTotales:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft*X mmTop+mmWidth�3BandType	LayerNameForeground2  TppLineppLine1DesignLayerppDesignLayer3UserNameLine1Weight       ��?mmHeight4mmLeft mmTop mmWidthQ BandType	LayerNameForeground2   TppDesignLayersppDesignLayers3 TppDesignLayerppDesignLayer3UserNameForeground2	LayerTypeltBandedIndex       TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�3mmPrintPosition   TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1   TDataSourcedsVentasDataSet	qryVentasLeftTopF  TIBQuery
qryDetalleDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Strings#select * from VISTA_RESUMEN_DETALLEZwhere cast(fecha as date) between cast(:fecha_inicio as date) and cast(:fecha_fin as date) Left�Top	ParamDataDataTypeftWideStringNamefecha_inicio	ParamType	ptUnknownValue
24/03/2017 DataTypeftWideStringName	fecha_fin	ParamType	ptUnknownValue
31/03/2017   
TDateFieldqryDetalleFECHA	FieldKindfkInternalCalc	FieldNameFECHAOrigin"VISTA_RESUMEN_DETALLE"."FECHA"ProviderFlags ReadOnly	  TIBStringFieldqryDetalleCONDICION	FieldKindfkInternalCalc	FieldName	CONDICIONOrigin#"VISTA_RESUMEN_DETALLE"."CONDICION"ProviderFlags ReadOnly	Size  TIBStringFieldqryDetalleRUC	FieldKindfkInternalCalc	FieldNameRUCOrigin"VISTA_RESUMEN_DETALLE"."RUC"ProviderFlags ReadOnly	Size(  TIBStringFieldqryDetalleRAZON_SOCIAL	FieldKindfkInternalCalc	FieldNameRAZON_SOCIALOrigin&"VISTA_RESUMEN_DETALLE"."RAZON_SOCIAL"ProviderFlags ReadOnly	Size(  TFloatFieldqryDetalleEXENTAS	FieldKindfkInternalCalc	FieldNameEXENTASOrigin!"VISTA_RESUMEN_DETALLE"."EXENTAS"ProviderFlags ReadOnly	  TFloatFieldqryDetalleGRABADAS05	FieldKindfkInternalCalc	FieldName
GRABADAS05Origin$"VISTA_RESUMEN_DETALLE"."GRABADAS05"ProviderFlags ReadOnly	  TFloatFieldqryDetalleGRABADAS10	FieldKindfkInternalCalc	FieldName
GRABADAS10Origin$"VISTA_RESUMEN_DETALLE"."GRABADAS10"ProviderFlags ReadOnly	  TIBStringFieldqryDetalleNUMERO	FieldKindfkInternalCalc	FieldNameNUMEROOrigin "VISTA_RESUMEN_DETALLE"."NUMERO"ProviderFlags ReadOnly	Size(  TFloatFieldqryDetalleTOTAL	FieldKindfkInternalCalc	FieldNameTOTALOrigin"VISTA_RESUMEN_DETALLE"."TOTAL"ProviderFlags ReadOnly	   TDataSource	dsDetalleDataSet
qryDetalleLeft�TopA  TppDBPipelineppVentas
DataSourcedsVentasUserNameVentasLeftTops TppFieldppVentasppField1
FieldAliasFECHA	FieldNameFECHAFieldLength DataTypedtDateDisplayWidth Position   TppFieldppVentasppField2
FieldAlias	CONDICION	FieldName	CONDICIONFieldLengthDisplayWidthPosition  TppFieldppVentasppField3	AlignmenttaRightJustify
FieldAliasFACTURAS	FieldNameFACTURASFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldppVentasppField4	AlignmenttaRightJustify
FieldAliasEXENTAS	FieldNameEXENTASFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppVentasppField5	AlignmenttaRightJustify
FieldAlias
GRABADAS05	FieldName
GRABADAS05FieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppVentasppField6	AlignmenttaRightJustify
FieldAlias
GRABADAS10	FieldName
GRABADAS10FieldLength DataTypedtDoubleDisplayWidth
Position   TppDBPipeline
ppDetalles
DataSource	dsDetalleUserNameDetallesLeft�Tops TppFieldppDetallesppField1
FieldAliasFECHA	FieldNameFECHAFieldLength DataTypedtDateDisplayWidth Position   TppFieldppDetallesppField2
FieldAlias	CONDICION	FieldName	CONDICIONFieldLengthDisplayWidthPosition  TppFieldppDetallesppField3
FieldAliasRUC	FieldNameRUCFieldLength(DisplayWidth(Position  TppFieldppDetallesppField4
FieldAliasRAZON_SOCIAL	FieldNameRAZON_SOCIALFieldLength(DisplayWidth(Position  TppFieldppDetallesppField5	AlignmenttaRightJustify
FieldAliasEXENTAS	FieldNameEXENTASFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField6	AlignmenttaRightJustify
FieldAlias
GRABADAS05	FieldName
GRABADAS05FieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField7	AlignmenttaRightJustify
FieldAlias
GRABADAS10	FieldName
GRABADAS10FieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField8
FieldAliasNUMERO	FieldNameNUMEROFieldLength(DisplayWidth(Position  TppFieldppDetallesppField9	AlignmenttaRightJustify
FieldAliasTOTAL	FieldNameTOTALFieldLength DataTypedtDoubleDisplayWidth
Position    