�
 TFRMRESUMENFACTURASPROVEEDORES 0}=  TPF0�TfrmResumenFacturasProveedoresfrmResumenFacturasProveedoresCaptionResumen facturacion clientesClientHeightBClientWidth�ExplicitWidth�ExplicitHeighthPixelsPerInch`
TextHeight � TLabellbl1LeftTopWidthEHeightCaptionRuc del cliente  �	TDxHeaderheaderCabeceraWidth�  TEditedtCodigoRucLeftSTopWidth� HeightTabOrderTextHintRUC del cliente  TButton	btnBuscarLeft3TopWidthKHeightCaption&FiltrarTabOrder OnClickbtnBuscarClick  	TDBGridEhgrid1LeftTop*Width�HeightAnchorsakLeftakTopakRightakBottom 
DataSource
dsFacturasDynProps FooterRowCount	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines SumList.Active	TabOrderTitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameFECHAFooters WidthO DynProps EditButtons 	FieldNameRUC1Footers MaxWidth� MinWidth� Title.CaptionRUCWidth�  DynProps EditButtons 	FieldNameRAZON_SOCIALFooters MaxWidth,MinWidth,Width, DynProps EditButtons 	FieldName	CONDICIONFooters MaxWidth2MinWidth2Title.CaptionCONDWidth2 DynProps EditButtons 	FieldNameFACTURA_NUMEROFooters Title.CaptionFACTURA NUMEROWidth�  DynProps EditButtons 	FieldNameTIMBRADOFooters Width�  DisplayFormat0,.DynProps EditButtons 	FieldNameEXENTASFooter.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthdMinWidthdWidthd DisplayFormat0,.DynProps EditButtons 	FieldName	GRABADAS5Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthdMinWidthdTitle.CaptionGRABADAS 5%Widthd DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS10Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters MaxWidthdMinWidthdTitle.CaptionGRABADAS 10%Widthd   TRowDetailPanelControlEhRowDetailData   TButtonbtnImprimirLeft�TopWidthKHeightCaption	&ImprimirTabOrderOnClickbtnImprimirClick  TIBQueryqryFacturasDatabasedm1.db1Transactiondm1.tra1Active	BufferChunks�CachedUpdates
ParamCheck	SQL.Strings1select * from VISTA_FACTURACION_PROVEEDORES(:ruc) LeftNTop
	ParamDataDataTypeftWideStringNameruc	ParamType	ptUnknownValue	1325055-8    TDataSource
dsFacturasDataSetqryFacturasLeftmTop'  	TppReportreport1AutoStopDataPipelineppDBPipeline1PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCartaPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeighthC PrinterSetup.mmPaperWidth\K PrinterSetup.PaperSizeTemplate.FileName>C:\sge\sources\SGE-Desktop\reports\listadoFacturasClientes.rtmArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft�Top� Version18.0mmColumnWidth DataPipelineNameppDBPipeline1 TppTitleBandppTitleBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�0mmPrintPosition  TppLabelplbl1DesignLayer	pdsgnlyr1UserNameplbl1AutoSizeCaptionFacturacion por clienteColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameARIAL	Font.Size
Font.StylefsBold Transparent	mmHeight>&mmLeft+mmTop+mmWidth=y BandType	LayerName
Foreground   TppHeaderBandphdrbnd1Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�:mmPrintPosition  TppLinepln1DesignLayer	pdsgnlyr1UserNamepln1	Pen.ColorclGray	Pen.WidthWeight       � @mmHeight�mmLeft+mmTopi+mmWidthk BandType 	LayerName
Foreground  TppLabelplbl2DesignLayer	pdsgnlyr1UserNameplbl2AutoSizeCaptionFECHAFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft+mmTop�mmWidth>BandType 	LayerName
Foreground  TppLabelplbl3DesignLayer	pdsgnlyr1UserNameplbl3AutoSizeCaptionFACTURA NUMEROFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft|mmTop�mmWidth��  BandType 	LayerName
Foreground  TppLabelplbl4DesignLayer	pdsgnlyr1UserNameplbl4AutoSizeCaptionCONDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeftYHmmTop�mmWidth�.BandType 	LayerName
Foreground  TppLabelplbl7DesignLayer	pdsgnlyr1UserNameplbl7AutoSizeCaptionTIMBRADOFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	VerticalAlignmentavCentermmHeight�mmLeft:; mmTop�mmWidth��  BandType 	LayerName
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
Foreground  	TppDBText	ppDBText6DesignLayer	pdsgnlyr1UserNameDBText6	DataFieldTIMBRADODataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft:; mmTopmmWidth��  BandType	LayerName
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
Foreground  	TppDBText	ppDBText2DesignLayer	pdsgnlyr1UserNameDBText2	DataFieldFACTURA_NUMERODataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipeline1mmHeight�mmLeft|mmTopmmWidth	�  BandType	LayerName
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
Foreground   TppGroupppGroup1	BreakNameRUC1DataPipelineppDBPipeline1GroupFileSettings.NewFileGroupFileSettings.EmailFileKeepTogether	OutlineSettings.CreateNode	StartOnOddPageUserNameGroup1mmNewColumnThreshold mmNewPageThreshold DataPipelineNameppDBPipeline1NewFile TppGroupHeaderBandppGroupHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabelplbl5DesignLayer	pdsgnlyr1UserNameplbl5AutoSizeCaptionRUC:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft+mmTop mmWidth.CBandTypeGroupNo 	LayerName
Foreground  	TppDBText	ppDBText5DesignLayer	pdsgnlyr1UserNameDBText5	DataFieldRAZON_SOCIALDataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeftt mmTop mmWidth�+ BandTypeGroupNo 	LayerName
Foreground  	TppDBText	ppDBText4DesignLayer	pdsgnlyr1UserNameDBText4	DataFieldRUC1DataPipelineppDBPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.Style Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipeline1mmHeight�mmLeft�MmmTop mmWidth��  BandTypeGroupNo 	LayerName
Foreground  TppLabelplbl6DesignLayer	pdsgnlyr1UserNameplbl6AutoSizeCaptionRAZON SOCIALFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTahoma	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCentermmHeight�mmLeft`�  mmTop mmWidth��  BandTypeGroupNo 	LayerName
Foreground   TppGroupFooterBandppGroupFooterBand1Background.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeightz-mmPrintPosition    TppDesignLayersppDesignLayers1 TppDesignLayer	pdsgnlyr1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1   TppDBPipelineppDBPipeline1
DataSource
dsFacturasUserNameDBPipeline1Left�Top�  TppFieldppDBPipeline1ppField1
FieldAliasFECHA	FieldNameFECHAFieldLength DataTypedtDateDisplayWidth
Position SelectOrder   TppFieldppDBPipeline1ppField2
FieldAliasRUC1	FieldNameRUC1FieldLength(DisplayWidth(PositionSelectOrder  TppFieldppDBPipeline1ppField3
FieldAliasRAZON_SOCIAL	FieldNameRAZON_SOCIALFieldLength(DisplayWidth(PositionSelectOrder  TppFieldppDBPipeline1ppField4
FieldAlias	CONDICION	FieldName	CONDICIONFieldLengthDisplayWidthPositionSelectOrder  TppFieldppDBPipeline1ppField5
FieldAliasFACTURA_NUMERO	FieldNameFACTURA_NUMEROFieldLength(DisplayWidth(PositionSelectOrder  TppFieldppDBPipeline1ppField6
FieldAliasTIMBRADO	FieldNameTIMBRADOFieldLength(DisplayWidth(PositionSelectOrder  TppFieldppDBPipeline1ppField7	AlignmenttaRightJustify
FieldAliasEXENTAS	FieldNameEXENTASFieldLength DataTypedtDoubleDisplayWidth
PositionSelectOrder  TppFieldppDBPipeline1ppField8	AlignmenttaRightJustify
FieldAlias	GRABADAS5	FieldName	GRABADAS5FieldLength DataTypedtDoubleDisplayWidth
PositionSelectOrder  TppFieldppDBPipeline1ppField9	AlignmenttaRightJustify
FieldAlias
GRABADAS10	FieldName
GRABADAS10FieldLength DataTypedtDoubleDisplayWidth
PositionSelectOrder    