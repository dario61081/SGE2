�
 TFRMVENTAS 0��  TPF0�
TfrmVentas	frmVentasCaptionVentasClientHeightClientWidth?Constraints.MinHeight@Constraints.MinWidthOPositionpoOwnerFormCenterOnCreate
FormCreateExplicitWidthOExplicitHeight@PixelsPerInch`
TextHeight TLabellbl1LeftTop*Width!HeightCaptionFECHA  TLabellbl2Left� Top*WidthHeightCaptionRUCFocusControldbedtRUC  TLabellbl3LeftTop*WidthNHeightCaptionRAZON SOCIAL FocusControldbedtRAZON_SOCIAL  TLabellbl4LeftTop*Width;HeightCaption	CONDICION  TLabellbl5LeftTopXWidth9HeightCaption	DIRECCIONFocusControldbedtDIRECCION  TLabellbl6Left6TopXWidth4HeightCaptionTELEFONOFocusControldbedtTELEFONO  TLabellbl7Left�TopXWidthQHeightCaptionNOTA REMISIONFocusControldbedtNOTA_REMISION  TLabellbl8LeftTop� WidthHHeightCaptionOBSERVACIONFocusControldbedtOBSERVACION  TLabellbl9LeftTopWidth}HeightCaptionFacturacion de ventasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabellbl10Left6Top� Width4HeightCaptionOPCIONES  TLabelLabel1Left�Top� Width(HeightCaptionESTADOFocusControldbedtEstado  TLabellbl11Left)Top� WidthHeightCaptionIDFocusControldbedtID  TBevelbvl1LeftTopWidth/HeightAnchorsakLeftakTopakRight ShapebsBottomLine  TBevelBevel1LeftTop� Width/HeightAnchorsakLeftakTopakRight ShapebsBottomLine  TnrSemaphore
ledBalanzaLeft'Top�WidthHeightStretchImageBlinkBlinkIntervaldChecked	ImageChecked ImageUnChecked PulsePulseDuration�Style3Dnrs3DSphereTransparent	Color3DCheckclBlueColor3DUnCheckclRedFrame3D  	TDBGridEhgrid1LeftTop� Width/Height(AnchorsakLeftakTopakRightakBottom AutoFitColWidths	
DataSource
dsDetallesDynProps FooterRowCountFooterParams.ColorclCreamEmptyDataInfo.Active	EmptyDataInfo.TextSin productos	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines SumList.Active	TabOrderTitleParams.MultiTitle	OnKeyUp
grid1KeyUpOnSumListAfterRecalcAllgrid1SumListAfterRecalcAllColumnsDynProps EditButtons 	FieldNameIDFooters Visible DynProps EditButtons 	FieldName	VENTAS_IDFooters Visible DisplayFormat0,.000DynProps EditButtons 	FieldNameCANTIDADFooters MaxWidth2MinWidth2Title.CaptionCANT.Width2 AutoDropDown	-DropDownBox.ColumnDefValues.Title.TitleButton	DropDownBox.ListFieldNames>id;codigo;origen;descripcion;precio_mayorista;precio_minoristaDropDownBox.ListSource	dsListado DropDownBox.ListSourceAutoFilter	DropDownBox.OptionsdlgColLinesEhdlgRowLinesEh DropDownBox.UseMultiTitle	DropDownShowTitles	DropDownSizing	DropDownWidth�DynProps EditButtons 	FieldNamePRODUCTOS_IDFooters HighlightRequired	MaxWidth MinWidth Title.CaptionPRODUCTO|IDWidth  DynProps EditButtons 	FieldNamePRODUCTOS_CODIGOFooters Title.CaptionPRODUCTO|CODIGOWidthW DynProps EditButtons 	FieldNamePRODUCTOS_DESCRIPCIONFooters Title.CaptionPRODUCTO|DESCRIPCION DisplayFormat0,.DynProps EditButtons 	FieldNamePRECIO_UNITARIOFooters MaxWidthZMinWidthZTitle.CaptionPRECIO UNITARIOWidthZ DisplayFormat0,.DynProps EditButtons 	FieldNameEXENTASFooter.DisplayFormat0,.Footer.FieldNameEXENTASFooter.ValueTypefvtSumFootersDisplayFormat0,.	FieldNameEXENTAS	ValueTypefvtSum   MaxWidthZMinWidthZTitle.CaptionVALOR DE VENTA|EXENTASWidthZ DisplayFormat0,.DynProps EditButtons 	FieldName	GRABADAS5Footer.DisplayFormat0,.Footer.FieldName	GRABADAS5Footer.ValueTypefvtSumFootersDisplayFormat0,.	FieldName	GRABADAS5	ValueTypefvtSum DisplayFormat0,.ValueTotal:	ValueTypefvtStaticText  MaxWidthZMinWidthZTitle.CaptionVALOR DE VENTA|GRABADAS 5%WidthZ DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS10Footer.DisplayFormat0,.Footer.FieldName
GRABADAS10FootersDisplayFormat0,.	FieldName
GRABADAS10	ValueTypefvtSum DisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold Value0	ValueTypefvtStaticText  MaxWidthZMinWidthZTitle.CaptionVALOR DE VENTA|GRABADAS 10%WidthZ   TRowDetailPanelControlEhRowDetailData   TDBEditdbedtRUCLeft� Top=Width� HeightCharCaseecUpperCase	DataFieldRUC
DataSourcedsVentasTabOrderOnKeyUpdbedtRUCKeyUp  TDBEditdbedtRAZON_SOCIALLeftTop=Width HeightCharCaseecUpperCase	DataFieldRAZON_SOCIAL
DataSourcedsVentasTabOrder  TDBEditdbedtDIRECCIONLeftTopkWidth(HeightCharCaseecUpperCase	DataField	DIRECCION
DataSourcedsVentasTabOrder  TDBEditdbedtTELEFONOLeft6TopkWidth� HeightCharCaseecUpperCase	DataFieldTELEFONO
DataSourcedsVentasTabOrder  TDBEditdbedtNOTA_REMISIONLeft�TopkWidthmHeightCharCaseecUpperCase	DataFieldNOTA_REMISION
DataSourcedsVentasTabOrder  TDBEditdbedtOBSERVACIONLeftTop� Width(HeightCharCaseecUpperCase	DataFieldOBSERVACION
DataSourcedsVentasTabOrder
  TJvDBNavigatornav1LeftGTopWidth� Height
DataSourcedsVentasTabOrder OnClick	nav1Click  TJvStatusBarstatus1Left TopWidth?HeightPanelsTextF2: Buscar Fact. DiaWidthx TextF3: Buscar RUCWidthd TextF4: ProductosWidthd    TJvDBDateEditedtFechaLeftTop=WidthwHeight	DataFieldFECHA
DataSourcedsVentasDefaultToday	ShowNullDateTabOrder  TDBCheckBoxdbchkMayoristaLeft6Top� WidthoHeightCaptionPrecio Mayorista	DataFieldPRECIO_MAYORISTA
DataSourcedsVentasTabOrderValueChecked1ValueUnchecked0  TDBComboBoxdbcbbCondicionLeftTop=Width;HeightStylecsDropDownList	DataField	CONDICION
DataSourcedsVentasItems.StringsCONTCRED TabOrder  	TGroupBoxgrp1Left~Top*Width� HeightVCaptionBalanzaTabOrder TEdit
edtBALANZALeft	TopWidth� HeightTabStop	AlignmenttaRightJustifyFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameConsolas
Font.Style 
ParentFontReadOnly	TabOrder TextHint...  TButtonbtnCapturarLeft	Top:Width� HeightCaption	&CapturarTabOrderOnClickbtnCapturarClick  	TCheckBoxchkTimerLeft� Top>WidthHeightChecked	State	cbCheckedTabOrder   TJvDBNavigatornav2LeftTop�Width� Height
DataSource
dsDetallesAnchorsakLeftakBottom TabOrderOnClick	nav2Click  TButtonbtnImprimirLeft~Top� Width� Height&Caption	&ImprimirTabOrder	OnClickbtnImprimirClick  TDBEditdbedtEstadoLeft�Top� Width=HeightCharCaseecUpperCaseColor	clBtnFace	DataFieldESTADO
DataSourcedsVentasReadOnly	TabOrder  TDBEditdbedtIDLeft)Top� Width$HeightColor	clBtnFace	DataFieldID
DataSourcedsVentasReadOnly	TabOrder  TBitBtnbtnNuevaFacturaLeft� TopWidthXHeightActionactNuevaFacturaCaption&Nueva FacturaTabOrder  TButtonbtnReimprimirFacturaLeft� TopWidthKHeightActionactReimprimirFacturaTabOrder  TButtonbtnAnularFacturaLeftOTopWidthKHeightActionactAnularFacturaTabOrder  TPanelpnl1LeftTopWidthHeight� CaptionClientesColorclSilverDoubleBuffered	ParentBackgroundParentDoubleBufferedTabOrderVisible 	TDBGridEhgridClientesAlignWithMargins	LeftTopWidth HeightjAlignalClientAutoFitColWidths	
DataSource
dsClientesDynProps 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines ReadOnly	TabOrder TitleParams.MultiTitle	Columns	AlignmenttaRightJustifyDynProps EditButtons 	FieldNameRUCFooters MaxWidthdMinWidthdWidthd DynProps EditButtons 	FieldNameRAZON_SOCIALFooters Title.CaptionRAZON SOCIALWidth�    TRowDetailPanelControlEhRowDetailData   TButton	btnCerrarLeftTopqWidthHeight%AlignalBottomCaption&CerrarTabOrderOnClickbtnCerrarClickExplicitTop� ExplicitWidth�   TButtonbtnGenerarReciboDineroLeft�TopWidthlHeightActionactGenerarReciboDineroCaptionGenerar Recibo...TabOrder  TIBTable	tblVentasDatabasedm1.db1Transactiondm1.tra1	AfterPosttblVentasAfterPostOnNewRecordtblVentasNewRecordActive	BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint NameFECHADataType
ftDateTime NameRUCDataTypeftWideStringSize( NameRAZON_SOCIALDataTypeftWideStringSize( Name	CONDICIONDataTypeftWideStringSize Name	DIRECCIONDataTypeftWideStringSize( NameTELEFONODataTypeftWideStringSize( NameNOTA_REMISIONDataTypeftWideStringSize( NameOBSERVACIONDataTypeftWideStringSize( NamePRECIO_MAYORISTADataType
ftSmallint NameESTADODataTypeftWideStringSize NameNUMERODataTypeftWideStringSize(  	IndexDefsName	PK_VENTASFieldsIDOptionsixUnique   IndexFieldNamesID	StoreDefs		TableNameVENTASUniDirectionalLeft	TopE TLargeintFieldtblVentasID	FieldNameID  TDateTimeFieldtblVentasFECHA	FieldNameFECHA  TSmallintFieldtblVentasPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTA  TIBStringFieldtblVentasRUC	FieldNameRUCSize(  TIBStringFieldtblVentasRAZON_SOCIAL	FieldNameRAZON_SOCIALSize(  TIBStringFieldtblVentasCONDICION	FieldName	CONDICIONSize  TIBStringFieldtblVentasDIRECCION	FieldName	DIRECCIONSize(  TIBStringFieldtblVentasTELEFONO	FieldNameTELEFONOSize(  TIBStringFieldtblVentasNOTA_REMISION	FieldNameNOTA_REMISIONSize(  TIBStringFieldtblVentasOBSERVACION	FieldNameOBSERVACIONSize(  TIBStringFieldtblVentasESTADO	FieldNameESTADOSize  TIBStringFieldtblVentasNUMERO	FieldNameNUMEROSize(   TIBTabletblDetallesDatabasedm1.db1Transactiondm1.tra1AfterRefreshtblDetallesAfterRefreshOnNewRecordtblDetallesNewRecordBufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint Name	VENTAS_ID
Attributes
faRequired DataType
ftLargeint NameCANTIDADDataTypeftFloat NamePRODUCTOS_IDDataType
ftLargeint NamePRODUCTOS_CODIGODataTypeftStringSize( NamePRODUCTOS_DESCRIPCIONDataTypeftStringSize( NamePRECIO_UNITARIODataTypeftFloat NameEXENTASDataTypeftFloat Name	GRABADAS5DataTypeftFloat Name
GRABADAS10DataTypeftFloat NameOBSERVACIONDataTypeftStringSize(  	IndexDefsNamePK_VENTAS_DETALLESFieldsIDOptionsixUnique  NameFK_VENTAS_DETALLES_1Fields	VENTAS_ID NameFK_VENTAS_DETALLES_2FieldsPRODUCTOS_ID  IndexFieldNames	VENTAS_IDMasterFieldsIDMasterSourcedsVentas	StoreDefs		TableNameVENTAS_DETALLESUniDirectionalLeftETopE TLargeintFieldtblDetallesID	FieldNameID  TLargeintFieldtblDetallesVENTAS_ID	FieldName	VENTAS_ID  TFloatFieldtblDetallesCANTIDAD	FieldNameCANTIDAD  TLargeintFieldtblDetallesPRODUCTOS_ID	FieldNamePRODUCTOS_ID  TFloatFieldtblDetallesPRECIO_UNITARIO	FieldNamePRECIO_UNITARIO  TFloatFieldtblDetallesEXENTAS	FieldNameEXENTAS  TFloatFieldtblDetallesGRABADAS5	FieldName	GRABADAS5  TFloatFieldtblDetallesGRABADAS10	FieldName
GRABADAS10  TIBStringFieldtblDetallesPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOSize(  TIBStringField tblDetallesPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONSize(  TIBStringFieldtblDetallesOBSERVACION	FieldNameOBSERVACIONSize(   TJvDataSourcedsVentasDataSet	tblVentasOnRecordChangeddsVentasRecordChangedOnEditingChangeddsVentasEditingChangedLeft	Topw  TJvDataSource
dsDetallesDataSettblDetallesOnStateChangedsDetallesStateChangeOnRecordChangeddsDetallesRecordChangedLeftETopw  TActionListactlst1Left	Top TActionactBuscarRucCaption
Buscar rucShortCutr	OnExecuteactBuscarRucExecute  TActionactBuscarProductoCaptionBuscar productosShortCuts	OnExecuteactBuscarProductoExecute  TActionactNuevaFacturaCaption&Nueva Factura	OnExecuteactNuevaFacturaExecute  TActionactReimprimirFacturaCaptionReimp. Fact	OnExecuteactReimprimirFacturaExecute  TActionactAnularFacturaCaptionAnul. Factura	OnExecuteactAnularFacturaExecute  TActionactVistaFacturaDiaCaptionactVistaFacturaDiaShortCutq	OnExecuteactVistaFacturaDiaExecute  TActionactGenerarReciboDineroCaptionGenerar recibo de dinero...	OnExecuteactGenerarReciboDineroExecute   	TppReportreport1AutoStopDataPipelineppVentasPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameFactura VentaPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottomdPrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight'PrinterSetup.mmMarginTopdPrinterSetup.mmPaperHeight� PrinterSetup.mmPaperWidth�, PrinterSetup.PaperSize~Template.FileName7C:\sge\sources\SGE-Desktop\reports\factura_venta_v2.rtmUnitsutMillimetersArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft� ToprVersion18.0mmColumnWidth�, DataPipelineNameppVentas TppHeaderBandppHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeightvB mmPrintPosition  TmyCheckBox
chkContadoDesignLayerppDesignLayer1UserName
chkContado	FormFieldStylecsXMarkBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft � mmTop��  mmWidth�BandType 	LayerName
Foreground  TmyCheckBox
chkCreditoDesignLayerppDesignLayer1UserName
chkCredito	FormFieldStylecsXMarkBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft#� mmTop��  mmWidth�BandType 	LayerName
Foreground  	TppDBText	ppDBText1DesignLayerppDesignLayer1UserNameDBText1	DataFieldFECHADataPipelineppVentasDisplayFormat
dd/mm/yyyyFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeft�  mmTop��  mmWidth/bBandType 	LayerName
Foreground  	TppDBText	ppDBText2DesignLayerppDesignLayer1UserNameDBText2	DataFieldRAZON_SOCIALDataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeft4�  mmTop�  mmWidth�L BandType 	LayerName
Foreground  	TppDBText	ppDBText3DesignLayerppDesignLayer1UserNameDBText3	DataFieldRUCDataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeftIq mmTop�  mmWidth�ZBandType 	LayerName
Foreground   TppDetailBandppDetailBand1Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  TppSubReportpsbrprt1DesignLayerppDesignLayer1UserNamepsbrprt1	ExpandAllNewPrintJobOutlineSettings.CreateNode	TraverseAllDataDataPipelineName
ppDetallesmmHeight�mmLeft mmTop mmWidth| BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReport
pchldrprt1AutoStopDataPipeline
ppDetallesPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameFactura VentaPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottomdPrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight'PrinterSetup.mmMarginTopdPrinterSetup.mmPaperHeight� PrinterSetup.mmPaperWidth�, PrinterSetup.PaperSize~UnitsutMillimetersVersion18.0mmColumnWidth DataPipelineName
ppDetalles TppTitleBandppTitleBand1Background.Brush.StylebsClearmmBottomOffset mmHeight^mmPrintPosition   TppDetailBandppDetailBand2Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeightxmmPrintPosition  	TppDBText	ppDBText4DesignLayerppDesignLayer2UserNameDBText4	DataFieldCANTIDADDataPipeline
ppDetallesDisplayFormat0,.000Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeightxmmLeft�mmTop mmWidth�5BandType	LayerNameForeground1  	TppDBText	ppDBText5DesignLayerppDesignLayer2UserNameDBText5	DataFieldPRODUCTOS_DESCRIPCIONDataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTransparent	DataPipelineName
ppDetallesmmHeightxmmLeft_mmTop mmWidth�' BandType	LayerNameForeground1  	TppDBText	ppDBText6DesignLayerppDesignLayer2UserNameDBText6	DataFieldPRECIO_UNITARIODataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeightxmmLeft� mmTop mmWidth?BandType	LayerNameForeground1  	TppDBText	ppDBText7DesignLayerppDesignLayer2UserNameDBText7	DataFieldEXENTASDataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeightxmmLeft)� mmTop mmWidth�UBandType	LayerNameForeground1  	TppDBText	ppDBText8DesignLayerppDesignLayer2UserNameDBText8	DataField	GRABADAS5DataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeightxmmLeftJ mmTop mmWidth�UBandType	LayerNameForeground1  	TppDBText	ppDBText9DesignLayerppDesignLayer2UserNameDBText9	DataField
GRABADAS10DataPipeline
ppDetallesDisplayFormat0,.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeightxmmLeft� mmTop mmWidth�UBandType	LayerNameForeground1   TppSummaryBandppSummaryBand1VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  	TppDBCalc	ppDBCalc1DesignLayerppDesignLayer2UserNameDBCalc1	DataField
GRABADAS10DataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeight�mmLeft� mmTopmmWidth�UBandType	LayerNameForeground1  	TppDBCalc	ppDBCalc2DesignLayerppDesignLayer2UserNameDBCalc2	DataField	GRABADAS5DataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeight�mmLeftJ mmTopmmWidth�UBandType	LayerNameForeground1  	TppDBCalc	ppDBCalc3DesignLayerppDesignLayer2UserNameDBCalc3	DataFieldEXENTASDataPipeline
ppDetallesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineName
ppDetallesmmHeight�mmLeft)� mmTopmmWidth�UBandType	LayerNameForeground1   TraCodeModuleraCodeModule2 TraProgramInforaProgramInfo2raClassNameTraEventHandlerraProgram.ProgramNameDBCalc1OnCalcraProgram.ProgramTypettProcedureraProgram.Sourceqprocedure DBCalc1OnCalc;
begin
    sumaIva10 := dbcalc1.value / 11; 
    totaliva10 := dbcalc1.value; 
end;
raProgram.ComponentNameDBCalc1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos!   TraProgramInforaProgramInfo5raClassNameTraEventHandlerraProgram.ProgramNameDBCalc2OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcepprocedure DBCalc2OnCalc;
begin
     sumaIva5 := dbcalc2.value / 21;
     totaliva5  := dbcalc2.value;
end;
raProgram.ComponentNameDBCalc2raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos"   TraProgramInforaProgramInfo6raClassNameTraEventHandlerraProgram.ProgramNameDBCalc3OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcenprocedure DBCalc3OnCalc;
begin
    sumaExentas := dbcalc3.value;
    totalexentas := dbcalc3.value;
end;
raProgram.ComponentNameDBCalc3raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos#    TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBandedIndex       TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight��  mmPrintPosition  TppLabel
plblletrasDesignLayerppDesignLayer1UserName
plblletrasCaption-LETRAS-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop!mmWidth�;BandType	LayerName
Foreground  TppLabelplblIva5DesignLayerppDesignLayer1UserNameplblIva5Caption-- 5%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�  mmTop�XmmWidth
 BandType	LayerName
Foreground  TppLabel	plblIva10DesignLayerppDesignLayer1UserName	plblIva10Caption-- 10%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft%� mmTop�XmmWidthF'BandType	LayerName
Foreground  TppLabelplbltotalivaDesignLayerppDesignLayer1UserNameplbltotalivaCaption-- totalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftJ mmTop�XmmWidth>&BandType	LayerName
Foreground  TppLabel	plblTotalDesignLayerppDesignLayer1UserName	plblTotalCaption	1.123.456Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�� mmTop!mmWidth�:BandType	LayerName
Foreground  TppLabelplblSumaGrabadas10DesignLayerppDesignLayer1UserNameplblSumaGrabadas10Caption--0--Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�� mmTop mmWidth�BandType	LayerName
Foreground  TppLabelplblSumaGrabadas05DesignLayerppDesignLayer1UserNameplblSumaGrabadas05Caption--0--Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft� mmTop mmWidth�BandType	LayerName
Foreground  TppLabelplblSumaExentasDesignLayerppDesignLayer1UserNameplblSumaExentasCaption--0--Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�) mmTop mmWidth�BandType	LayerName
Foreground   TraCodeModuleraCodeModule1 TraProgramInforaProgramInfo9raClassNameTraEventHandlerraProgram.ProgramNamechkContadoOnPrintraProgram.ProgramTypettProcedureraProgram.Sourcegprocedure chkContadoOnPrint;
begin
    chkContado.visible := ( Ventas['CONDICION'] = 'CONT');
end;
raProgram.ComponentName
chkContadoraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos   TraProgramInforaProgramInfo10raClassNameTraEventHandlerraProgram.ProgramNamechkCreditoOnPrintraProgram.ProgramTypettProcedureraProgram.Sourcefprocedure chkCreditoOnPrint;
begin
   chkCredito.visible := ( Ventas['CONDICION'] = 'CRED');
end;
raProgram.ComponentName
chkCreditoraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos   TraProgramInforaProgramInfo11raClassNameTraEventHandlerraProgram.ProgramNameplblTotalOnPrintraProgram.ProgramTypettProcedureraProgram.Sourceyprocedure plblTotalOnPrint;
begin
  plbltotal.text := formatfloat('0,.',totaliva10 + totaliva5 + totalexentas);
end;
raProgram.ComponentName	plblTotalraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos=   TraProgramInforaProgramInfo12raClassNameTraEventHandlerraProgram.ProgramNamepsbrprt1OnPrintraProgram.ProgramTypettProcedureraProgram.Source,procedure psbrprt1OnPrint;
begin
 
end;
raProgram.ComponentNamepsbrprt1raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos   TraProgramInforaProgramInfo7raClassNameTraVarProgramraProgram.ChildTyperaProgram.ProgramName	VariablesraProgram.ProgramTypettProcedureraProgram.Source�procedure Variables;
var
  sumaIva10: integer;
  sumaIva5 : integer;
  sumaExentas: integer; 
  totalIva10: integer;
  totalIva5 : integer;
  totalExentas : integer;   

begin

end;
raProgram.CaretPos   TraProgramInforaProgramInfo8raClassNameTraEventHandlerraProgram.ProgramNameplblIva5OnPrintraProgram.ProgramTypettProcedureraProgram.Source\procedure plblIva5OnPrint;
begin
    plblIva5.text := formatfloat('0,.',sumaiva5);
end;
raProgram.ComponentNameplblIva5raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos(   TraProgramInforaProgramInfo13raClassNameTraEventHandlerraProgram.ProgramNameplblIva10OnPrintraProgram.ProgramTypettProcedureraProgram.Sourcebprocedure plblIva10OnPrint;
begin
     plblIva10.text := formatfloat('0,.',sumaiva10);  
end;
raProgram.ComponentName	plblIva10raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos*   TraProgramInforaProgramInfo14raClassNameTraEventHandlerraProgram.ProgramNameplbltotalivaOnPrintraProgram.ProgramTypettProcedureraProgram.Source~procedure plbltotalivaOnPrint;
begin
    plbltotaliva.text := formatfloat('0,.',sumaIva10 + sumaIva5 + sumaExentas);
end;
raProgram.ComponentNameplbltotalivaraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos,   TraProgramInforaProgramInfo15raClassNameTraEventHandlerraProgram.ProgramNameplblletrasOnPrintraProgram.ProgramTypettProcedureraProgram.Source`procedure plblletrasOnPrint;
begin
  plblletras.text := Report.Parameters['prletras'];
end;
raProgram.ComponentName
plblletrasraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos4   TraProgramInforaProgramInfo16raClassNameTraEventHandlerraProgram.ProgramNameplblSumaGrabadas10OnPrintraProgram.ProgramTypettProcedureraProgram.Sourcesprocedure plblSumaGrabadas10OnPrint;
begin
     plblsumagrabadas10.text := formatfloat('0,.',totaliva10);
end;
raProgram.ComponentNameplblSumaGrabadas10raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos=   TraProgramInforaProgramInfo17raClassNameTraEventHandlerraProgram.ProgramNameplblSumaGrabadas05OnPrintraProgram.ProgramTypettProcedureraProgram.Sourceqprocedure plblSumaGrabadas05OnPrint;
begin
    plblSumaGrabadas05.text := formatfloat('0,.',totaliva5);
end;
raProgram.ComponentNameplblSumaGrabadas05raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos   TraProgramInforaProgramInfo18raClassNameTraEventHandlerraProgram.ProgramNameplblSumaExentasOnPrintraProgram.ProgramTypettProcedureraProgram.Sourcemprocedure plblSumaExentasOnPrint;
begin
   plblSumaExentas.text := formatfloat('0,.',totalexentas);
end;
raProgram.ComponentNameplblSumaExentasraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos:    TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1 TppParameterprletra AutoSearchSettings.LogicalPrefix AutoSearchSettings.Mandatory	DataTypedtStringLookupSettings.DisplayType
dtNameOnlyLookupSettings.SortOrdersoNameValue    UserNameprletras    TIBQuery
qryListadoDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Strings%select * from VISTA_PRODUCTOS_PRECIOS LeftUTopE TLargeintFieldqryListadoID	FieldNameIDOrigin"VISTA_PRODUCTOS_PRECIOS"."ID"  TSmallintFieldqryListadoACTIVO	FieldNameACTIVOOrigin""VISTA_PRODUCTOS_PRECIOS"."ACTIVO"  TFloatFieldqryListadoPRECIO_MAYORISTA	FieldKindfkInternalCalc	FieldNamePRECIO_MAYORISTAOrigin,"VISTA_PRODUCTOS_PRECIOS"."PRECIO_MAYORISTA"ProviderFlags ReadOnly	  TFloatFieldqryListadoPRECIO_MINORISTA	FieldKindfkInternalCalc	FieldNamePRECIO_MINORISTAOrigin,"VISTA_PRODUCTOS_PRECIOS"."PRECIO_MINORISTA"ProviderFlags ReadOnly	  TIBStringFieldqryListadoCODIGO	FieldNameCODIGOOrigin""VISTA_PRODUCTOS_PRECIOS"."CODIGO"Size(  TIBStringFieldqryListadoORIGEN	FieldNameORIGENOrigin""VISTA_PRODUCTOS_PRECIOS"."ORIGEN"Size(  TIBStringFieldqryListadoDESCRIPCION	FieldNameDESCRIPCIONOrigin'"VISTA_PRODUCTOS_PRECIOS"."DESCRIPCION"Size(  TIBStringFieldqryListadoIMPUESTO	FieldNameIMPUESTOOrigin$"VISTA_PRODUCTOS_PRECIOS"."IMPUESTO"Size   TJvDataSource	dsListadoDataSet
qryListadoLeftUTopw  TppDBPipelineppVentas
DataSourcedsVentasRangeEndreCurrentRecord
RangeBeginrbCurrentRecordUserNameVentasLeft	Top� TppFieldppVentasppField1
FieldAliasID	FieldNameIDFieldLength DataType
dtLargeIntDisplayWidth Position   TppFieldppVentasppField2
FieldAliasFECHA	FieldNameFECHAFieldLength DataType
dtDateTimeDisplayWidthPosition  TppFieldppVentasppField3	AlignmenttaRightJustify
FieldAliasPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTAFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldppVentasppField4
FieldAliasRUC	FieldNameRUCFieldLength(DisplayWidth(Position  TppFieldppVentasppField5
FieldAliasRAZON_SOCIAL	FieldNameRAZON_SOCIALFieldLength(DisplayWidth(Position  TppFieldppVentasppField6
FieldAlias	CONDICION	FieldName	CONDICIONFieldLengthDisplayWidthPosition  TppFieldppVentasppField7
FieldAlias	DIRECCION	FieldName	DIRECCIONFieldLength(DisplayWidth(Position  TppFieldppVentasppField8
FieldAliasTELEFONO	FieldNameTELEFONOFieldLength(DisplayWidth(Position  TppFieldppVentasppField9
FieldAliasNOTA_REMISION	FieldNameNOTA_REMISIONFieldLength(DisplayWidth(Position  TppFieldppVentasppField10
FieldAliasOBSERVACION	FieldNameOBSERVACIONFieldLength(DisplayWidth(Position	  TppFieldppVentasppField11
FieldAliasESTADO	FieldNameESTADOFieldLengthDisplayWidthPosition
  TppFieldppVentasppField12
FieldAliasNUMERO	FieldNameNUMEROFieldLength(DisplayWidth(Position   TppDBPipeline
ppDetalles
DataSource
dsDetallesUserNameDetallesLeftETop�MasterDataPipelineNameppVentas TppFieldppDetallesppField1
FieldAliasID	FieldNameIDFieldLength DataType
dtLargeIntDisplayWidthPosition   TppFieldppDetallesppField2
FieldAlias	VENTAS_ID	FieldName	VENTAS_IDFieldLength DataType
dtLargeIntDisplayWidthPosition  TppFieldppDetallesppField3	AlignmenttaRightJustify
FieldAliasCANTIDAD	FieldNameCANTIDADFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField4
FieldAliasPRODUCTOS_ID	FieldNamePRODUCTOS_IDFieldLength DataType
dtLargeIntDisplayWidthPosition  TppFieldppDetallesppField5
FieldAliasPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOFieldLength(DisplayWidth(Position  TppFieldppDetallesppField6
FieldAliasPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONFieldLength(DisplayWidth(Position  TppFieldppDetallesppField7	AlignmenttaRightJustify
FieldAliasPRECIO_UNITARIO	FieldNamePRECIO_UNITARIOFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField8	AlignmenttaRightJustify
FieldAliasEXENTAS	FieldNameEXENTASFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField9	AlignmenttaRightJustify
FieldAlias	GRABADAS5	FieldName	GRABADAS5FieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField10	AlignmenttaRightJustify
FieldAlias
GRABADAS10	FieldName
GRABADAS10FieldLength DataTypedtDoubleDisplayWidth
Position	  TppFieldppDetallesppField11
FieldAliasOBSERVACION	FieldNameOBSERVACIONFieldLength(DisplayWidth(Position
   TApplicationEvents
appevents1OnIdleappevents1IdleLeftrTop[�    TApplicationEvents
appevents2Left� Top6  TIBStoredProcspNuevaFacturaDatabasedm1.db1Transactiondm1.tra1StoredProcNameGENERAR_FACTURA_VENTALeftETop TLargeintFieldspNuevaFacturaVENTAS_ID	FieldName	VENTAS_IDOrigin#"GENERAR_FACTURA_VENTA"."VENTAS_ID"   TIBQueryqryClientesDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Strings*select * from buscar_equivalencias(:valor) Left�Top� 	ParamDataDataTypeftWideStringNamevalor	ParamType	ptUnknownValue14555   TIBStringFieldqryClientesRUC	FieldNameRUCOrigin"BUSCAR_EQUIVALENCIAS"."RUC"Size(  TIBStringFieldqryClientesRAZON_SOCIAL	FieldNameRAZON_SOCIALOrigin%"BUSCAR_EQUIVALENCIAS"."RAZON_SOCIAL"Size(   TDataSource
dsClientesDataSetqryClientesLeft�Top,  TnrCommcomm1ActiveBaudRate�%ParitypNoneStopBitssbOneByteSize	ComPortNoComPortcpCOM5TraceStates 	EventChar StreamProtocolspNoneBufferInSize  BufferOutSize  TimeoutRead TimeoutWrite 	RS485Mode	EnumPorts
epQuickAllUseMainThread	KeepConnectionTerminalUsagetuBothTerminalEchoOnAfterReceivecomm1AfterReceiveLeft�Top�   TTimertmr1OnTimer	tmr1TimerLeft`Top*  	TppReportreportReciboPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameRecibo DineroPrinterSetup.PaperNameA4PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Template.FileName3C:\sge\sources\SGE-Desktop\reports\ReciboDinero.rtmUnitsutMillimetersArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft�Top1Version18.0mmColumnWidth�  TppHeaderBandppHeaderBand2Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand3Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeightR+ mmPrintPosition  TppSystemVariableppSystemVariable1DesignLayerppDesignLayer3UserNameSystemVariable1DisplayFormat
dd/mm/yyyyFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft̟ mmTop�3mmWidth%BBandType	LayerNameForeground2  	TppDBText
ppDBText10DesignLayerppDesignLayer3UserNameDBText1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCentermmHeightmmLeft̟ mmTopV
mmWidth.CBandType	LayerNameForeground2  TppLabelplbl2DesignLayerppDesignLayer3UserNameplbl2CaptionRecibi(mos) de:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTop�RmmWidth^BandType	LayerNameForeground2  TppLabelppLabel1DesignLayerppDesignLayer3UserNameLabel1CaptionLa cantidad de guaranies:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTopZgmmWidth��  BandType	LayerNameForeground2  TppLabelplbl1DesignLayerppDesignLayer3UserNameplbl1Captionplbl1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft_�  mmTopZgmmWidth�BandType	LayerNameForeground2  TppLabelppLabel2DesignLayerppDesignLayer3UserNameLabel2CaptionEn concepto de:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTop|mmWidth/bBandType	LayerNameForeground2  	TppDBText
ppDBText11DesignLayerppDesignLayer3UserNameDBText2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft\�  mmTop�RmmWidth.CBandType	LayerNameForeground2  	TppDBTextpdbtxt1DesignLayerppDesignLayer3UserNamepdbtxt1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft\�  mmTop|mmWidth.CBandType	LayerNameForeground2  TppLabelppLabel3DesignLayerppDesignLayer3UserNameLabel3Caption   con RUC N°:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�RmmWidth{LBandType	LayerNameForeground2  TppLabelplbl3DesignLayerppDesignLayer3UserNameplbl3CaptionORIGINALFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�� mmTop�  mmWidth>BandType	LayerNameForeground2  TppLinepln1DesignLayerppDesignLayer3UserNamepln1	Pen.StylepsDotWeight       ��?mmHeightV
mmLeft�( mmTop��  mmWidth	�  BandType	LayerNameForeground2  	TppDBText
ppDBText12DesignLayerppDesignLayer3UserNameDBText3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeftp mmTop�RmmWidth.CBandType	LayerNameForeground2  TppLinepln2DesignLayerppDesignLayer3UserNamepln2	Pen.StylepsDashWeight       ��?mmHeightV
mmLeft mmTop�  mmWidth& BandType	LayerNameForeground2  TppLabelplbl4DesignLayerppDesignLayer3UserNameplbl4CaptionSELLOFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftmmTop�  mmWidthi+BandType	LayerNameForeground2  TppSystemVariableppSystemVariable2DesignLayerppDesignLayer3UserNameSystemVariable2DisplayFormat
dd/mm/yyyyFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft̟ mmTop�+ mmWidth%BBandType	LayerNameForeground2  	TppDBText
ppDBText13DesignLayerppDesignLayer3UserNameDBText4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCentermmHeightmmLeft̟ mmTopb mmWidth.CBandType	LayerNameForeground2  TppLabelppLabel4DesignLayerppDesignLayer3UserNameLabel4CaptionRecibi(mos) de:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTop�J mmWidth^BandType	LayerNameForeground2  TppLabelppLabel5DesignLayerppDesignLayer3UserNameLabel5CaptionLa cantidad de guaranies:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTopg_ mmWidth��  BandType	LayerNameForeground2  TppLabelppLabel6DesignLayerppDesignLayer3UserNameLabel6Captionplbl1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft_�  mmTopg_ mmWidth�BandType	LayerNameForeground2  TppLabelppLabel7DesignLayerppDesignLayer3UserNameLabel7CaptionEn concepto de:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTopt mmWidth/bBandType	LayerNameForeground2  	TppDBText
ppDBText14DesignLayerppDesignLayer3UserNameDBText5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft\�  mmTop�J mmWidth.CBandType	LayerNameForeground2  	TppDBText
ppDBText15DesignLayerppDesignLayer3UserNameDBText6Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft\�  mmTopt mmWidth.CBandType	LayerNameForeground2  TppLabelppLabel8DesignLayerppDesignLayer3UserNameLabel8Caption   con RUC N°:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�J mmWidth{LBandType	LayerNameForeground2  TppLabelppLabel9DesignLayerppDesignLayer3UserNameLabel9Caption	DUPLICADOFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft~� mmTop� mmWidth{LBandType	LayerNameForeground2  TppLineppLine1DesignLayerppDesignLayer3UserNameLine1	Pen.StylepsDotWeight       ��?mmHeightV
mmLeft�( mmTop�� mmWidth	�  BandType	LayerNameForeground2  	TppDBText
ppDBText16DesignLayerppDesignLayer3UserNameDBText7Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeftp mmTop�J mmWidth.CBandType	LayerNameForeground2  TppLineppLine2DesignLayerppDesignLayer3UserNameLine2	Pen.StylepsDashWeight       ��?mmHeightV
mmLeft mmTop� mmWidth& BandType	LayerNameForeground2  TppLabel	ppLabel10DesignLayerppDesignLayer3UserNameLabel10CaptionSELLOFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftmmTop� mmWidthi+BandType	LayerNameForeground2  TppSystemVariableppSystemVariable3DesignLayerppDesignLayer3UserNameSystemVariable3DisplayFormat
dd/mm/yyyyFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft̟ mmTop�# mmWidth%BBandType	LayerNameForeground2  	TppDBText
ppDBText17DesignLayerppDesignLayer3UserNameDBText8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	VerticalAlignmentavCentermmHeightmmLeft̟ mmTopn� mmWidth.CBandType	LayerNameForeground2  TppLabel	ppLabel11DesignLayerppDesignLayer3UserNameLabel11CaptionRecibi(mos) de:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTop�B mmWidth^BandType	LayerNameForeground2  TppLabel	ppLabel12DesignLayerppDesignLayer3UserNameLabel12CaptionLa cantidad de guaranies:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTopsW mmWidth��  BandType	LayerNameForeground2  TppLabel	ppLabel13DesignLayerppDesignLayer3UserNameLabel13Captionplbl1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft_�  mmTopsW mmWidth�BandType	LayerNameForeground2  TppLabel	ppLabel14DesignLayerppDesignLayer3UserNameLabel14CaptionEn concepto de:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTopl mmWidth/bBandType	LayerNameForeground2  	TppDBText
ppDBText18DesignLayerppDesignLayer3UserNameDBText9Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft\�  mmTop�B mmWidth.CBandType	LayerNameForeground2  	TppDBText
ppDBText19DesignLayerppDesignLayer3UserNameDBText10Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft\�  mmTopl mmWidth.CBandType	LayerNameForeground2  TppLabel	ppLabel15DesignLayerppDesignLayer3UserNameLabel15Caption   con RUC N°:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	mmHeight�mmLeft�� mmTop�B mmWidth{LBandType	LayerNameForeground2  TppLabel	ppLabel16DesignLayerppDesignLayer3UserNameLabel16Caption
TRIPLICADOFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftv� mmTop#� mmWidth�MBandType	LayerNameForeground2  TppLineppLine3DesignLayerppDesignLayer3UserNameLine3	Pen.StylepsDotWeight       ��?mmHeightV
mmLeft�( mmTop̟ mmWidth	�  BandType	LayerNameForeground2  	TppDBText
ppDBText20DesignLayerppDesignLayer3UserNameDBText11Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeftp mmTop�B mmWidth.CBandType	LayerNameForeground2  TppLineppLine4DesignLayerppDesignLayer3UserNameLine4	Pen.StylepsDashWeight       ��?mmHeightV
mmLeft mmTop$� mmWidth& BandType	LayerNameForeground2  TppLabel	ppLabel17DesignLayerppDesignLayer3UserNameLabel17CaptionSELLOFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftmmTop#� mmWidthi+BandType	LayerNameForeground2  TppLabelplbl5DesignLayerppDesignLayer3UserNameplbl5CaptionRECIBO DE DINEROFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight�mmLeftmmTop�mmWidth�  BandType	LayerNameForeground2  TppLabel	ppLabel18DesignLayerppDesignLayer3UserNameLabel18CaptionRECIBO DE DINEROFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight�mmLeftmmTop� mmWidth�  BandType	LayerNameForeground2  TppLabel	ppLabel19DesignLayerppDesignLayer3UserNameLabel19CaptionRECIBO DE DINEROFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight�mmLeftmmTop� mmWidth�  BandType	LayerNameForeground2   TppFooterBandppFooterBand2Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppDesignLayersppDesignLayers3 TppDesignLayerppDesignLayer3UserNameForeground2	LayerTypeltBandedIndex    TppParameterListppParameterList2    