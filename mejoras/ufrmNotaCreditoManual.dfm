�
 TFRMNOTACREDITOMANUAL 0�s  TPF0�TfrmNotaCreditoManualfrmNotaCreditoManualCaption    ClientHeight0ClientWidth2OnCreate
FormCreateExplicitWidthBExplicitHeightVPixelsPerInch`
TextHeight �	TDxHeaderheaderCabeceraWidth2TituloNota de credito	SubtituloGenerar nota manualmenteExplicitWidth2  	TGroupBoxgrp1AlignWithMargins	LeftTop-Width,Height� AlignalTopTabOrder
DesignSize,�   TLabellbl1LeftTop)Width!HeightCaptionFECHA  TLabellbl2Left� Top)WidthHeightCaptionRUCFocusControldbedtRUC  TLabellbl3Left� Top)WidthNHeightCaptionRAZON SOCIAL FocusControldbedtRAZON_SOCIAL  TLabellbl8Left� TopWWidthHHeightCaptionOBSERVACIONFocusControldbedtOBSERVACION  TLabellbl4Left!Top)Width(HeightCaptionESTADOFocusControldbedtESTADO  TBevelbvl1LeftTop'WidthHeight^Shape
bsLeftLine  TLabellbl5Left!TopnWidth� HeightCaption2   Ingrese los datos para generar la nota de créditoFont.CharsetDEFAULT_CHARSET
Font.ColorclGrayFont.Height�	Font.NameTahoma
Font.Style 
ParentFont  TLabelLabel1LeftTopWWidthEHeightCaptionPRECIO LISTA  TLabellbl6Left_Top)Width)HeightCaptionCODIGOFocusControldbedtCODIGO  TJvDBDateEditedtFECHALeftTop<WidthwHeight	DataFieldFECHA
DataSource
dsCabeceraShowNullDateTabOrder  TDBEditdbedtRUCLeft� Top<WidthfHeightCharCaseecUpperCaseColor��� 	DataFieldRUC
DataSource
dsCabeceraTabOrder  TDBEditdbedtRAZON_SOCIALLeft� Top<WidthHeightCharCaseecUpperCaseColor��� 	DataFieldRAZON_SOCIAL
DataSource
dsCabeceraTabOrder  TDBEditdbedtOBSERVACIONLeft� TopjWidth�HeightCharCaseecUpperCaseColor��� 	DataFieldOBSERVACION
DataSource
dsCabeceraTabOrder  TDBEditdbedtESTADOLeft!Top<Width8Height	DataFieldESTADO
DataSource
dsCabeceraReadOnly	TabOrder  	TGroupBoxgrp4AlignWithMargins	LeftTopWidth"HeightAnchorsakLeftakTopakRight TabOrder  TDBNavigatordbnvgr1LeftTopWidth� Height
DataSource
dsCabeceraFlat	TabOrder  TButtonbtnDescartarNotaLeftPTopWidthLHeightActionactDescartarNotaTabOrder  TButtonbtnImprimirLeft�TopWidthLHeightActionactImprimirNotaTabOrder  TButtonbtnNuevaNotaLeft� TopWidthLHeightActionactNuevaNotaCreditoTabOrder    TDBComboBoxdbcbbPRECIO_MAYORISTALeftTopjWidthwHeight	DataFieldPRECIO_MAYORISTA
DataSource
dsCabeceraItems.Strings	MINORISTA	MAYORISTADISTRIBUIDORAOTROS TabOrder  TDBEditdbedtCODIGOLeft_Top<Width;Height	DataFieldCODIGO
DataSource
dsCabeceraTabOrder   TJvStatusBarstatus1Left TopWidth2HeightPanelsTextF2: ClientesWidth2    	TGroupBoxgrp2AlignWithMargins	LeftTop� Width,HeightZAlignalClientTabOrder
DesignSize,Z  	TDBGridEhgrid1AlignWithMargins	LeftTop(Width"Height-Margins.TopAlignalClientAutoFitColWidths	
DataSource	dsDetalleDynProps Flat	FooterRowCountFooterParams.ColorclWindowEmptyDataInfo.Active	EmptyDataInfo.Text&No hay registros asignados a esta notaSumList.Active	TabOrderTitleParams.MultiTitle	OnKeyUp
grid1KeyUpColumnsDisplayFormat0,.000DynProps EditButtons 	FieldNameCANTIDADFooters  DropDownBox.ListFieldNamesid; codigo; descripcionDropDownBox.ListSourceds1DropDownFormParams.AligndaLeftDropDownFormParams.FormWidth,DropDownSizing	DropDownWidth,DynProps EditButtons 	FieldNamePRODUCTOS_IDFooters Title.CaptionPRODUCTOS|IDWidth2OnCloseDropDownFormgrid1Columns1CloseDropDownFormOnOpenDropDownFormgrid1Columns1OpenDropDownForm DynProps EditButtons 	FieldNamePRODUCTOS_DESCRIPCIONFooters Title.CaptionPRODUCTOS|DESCRIPCION DynProps EditButtons 	FieldNameLOTEFooters WidthT DisplayFormat0,.DynProps EditButtons 	FieldNamePRECIO_UNITARIOFooters Title.CaptionPRECIO UNITARIO DisplayFormat0,.DynProps EditButtons 	FieldNameEXENTASFooter.DisplayFormat0,.Footer.ValueTypefvtSumFooters  DisplayFormat0,.DynProps EditButtons 	FieldName	GRABADAS5Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters Title.CaptionGRABADAS 5% DisplayFormat0,.DynProps EditButtons 	FieldName
GRABADAS10Footer.DisplayFormat0,.Footer.ValueTypefvtSumFooters Title.CaptionGRABADAS 10% DynProps EditButtons 	FieldNameOBSERVACIONFooters Width�    TRowDetailPanelControlEhRowDetailData   	TGroupBoxgrp3AlignWithMargins	LeftTopWidth"Height!AnchorsakLeftakTopakRight TabOrder  TDBNavigatordbnvgr2LeftTopWidth� Height
DataSource	dsDetalleFlat	TabOrder OnClickdbnvgr2Click    TIBTabletblCabeceraDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameEMPRESAS_CODIGODataType
ftLargeint NameVENTAS_CODIGODataType
ftLargeint NameFECHADataType
ftDateTime NameRUCDataTypeftWideStringSize( NameRAZON_SOCIALDataTypeftWideStringSize( Name	CONDICIONDataTypeftWideStringSize Name	DIRECCIONDataTypeftWideStringSize( NameTELEFONODataTypeftWideStringSize( NameNOTA_REMISIONDataTypeftWideStringSize( NameOBSERVACIONDataTypeftWideStringSize( NamePRECIO_MAYORISTADataType
ftSmallint NameESTADODataTypeftWideStringSize NameNUMERODataTypeftWideStringSize( NameTIMBRADO_NUMERODataTypeftWideStringSize( NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsNamePK_NOTAS_CREDITOSFieldsCODIGOOptionsixUnique  NameFK_NOTAS_CREDITOS_1FieldsEMPRESAS_CODIGO  	StoreDefs		TableNameNOTAS_CREDITOSUniDirectionalLeftkTop TLargeintFieldtblCabeceraCODIGO	FieldNameCODIGO  TDateTimeFieldtblCabeceraFECHA	FieldNameFECHA  TIBStringFieldtblCabeceraRUC	FieldNameRUCSize(  TIBStringFieldtblCabeceraRAZON_SOCIAL	FieldNameRAZON_SOCIALSize(  TIBStringFieldtblCabeceraESTADO	FieldNameESTADOSize  TIBStringFieldtblCabeceraOBSERVACION	FieldNameOBSERVACIONSize(  TSmallintFieldtblCabeceraPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTA	OnGetText"tblCabeceraPRECIO_MAYORISTAGetText	OnSetText"tblCabeceraPRECIO_MAYORISTASetText   TDataSource	dsDetalleDataSettblDetallesLeft�Top�   TIBTabletblDetallesDatabasedm1.db1Transactiondm1.tra1AfterRefreshtblDetallesAfterRefreshOnNewRecordtblDetallesNewRecordBufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameNOTAS_CREDITOS_CODIGO
Attributes
faRequired DataType
ftLargeint NameCANTIDADDataTypeftFloat NamePRODUCTOS_IDDataType
ftLargeint NamePRODUCTOS_CODIGODataTypeftWideStringSize( NamePRODUCTOS_DESCRIPCIONDataTypeftWideStringSize( NamePRECIO_UNITARIODataTypeftFloat NameEXENTASDataTypeftFloat Name	GRABADAS5DataTypeftFloat Name
GRABADAS10DataTypeftFloat NameOBSERVACIONDataTypeftWideStringSize( NameLOTEDataTypeftWideStringSize(  	IndexDefsNamePK_NOTAS_CREDITOS_DETALLESFieldsCODIGOOptionsixUnique  NameFK_NOTAS_CREDITOS_DETALLES_1FieldsNOTAS_CREDITOS_CODIGO NameFK_NOTAS_CREDITOS_DETALLES_2FieldsPRODUCTOS_ID  IndexFieldNamesNOTAS_CREDITOS_CODIGOMasterFieldsCODIGOMasterSource
dsCabecera	StoreDefs		TableNameNOTAS_CREDITOS_DETALLESUniDirectionalLeft�Top TFloatFieldtblDetallesCANTIDAD	FieldNameCANTIDAD  TLargeintFieldtblDetallesPRODUCTOS_ID	FieldNamePRODUCTOS_ID  TIBStringFieldtblDetallesPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOSize(  TIBStringField tblDetallesPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONSize(  TFloatFieldtblDetallesPRECIO_UNITARIO	FieldNamePRECIO_UNITARIO  TFloatFieldtblDetallesEXENTAS	FieldNameEXENTAS  TFloatFieldtblDetallesGRABADAS5	FieldName	GRABADAS5  TFloatFieldtblDetallesGRABADAS10	FieldName
GRABADAS10  TIBStringFieldtblDetallesOBSERVACION	FieldNameOBSERVACIONSize(  TIBStringFieldtblDetallesLOTE	FieldNameLOTESize(  TLargeintFieldtblDetallesCODIGO	FieldNameCODIGO  TLargeintField tblDetallesNOTAS_CREDITOS_CODIGO	FieldNameNOTAS_CREDITOS_CODIGORequired	   TDataSource
dsCabeceraDataSettblCabeceraLeft�Top�   TDataSourceds1DataSetqryProductosLeftJToph  TIBQueryqryProductosDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Stringsselect * from productos LeftTope TLargeintFieldqryProductosID	FieldNameIDOrigin"PRODUCTOS"."ID"ProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIBStringFieldqryProductosCODIGO	FieldNameCODIGOOrigin"PRODUCTOS"."CODIGO"Size(  TIBStringFieldqryProductosORIGEN	FieldNameORIGENOrigin"PRODUCTOS"."ORIGEN"Size(  TIBStringFieldqryProductosDESCRIPCION	FieldNameDESCRIPCIONOrigin"PRODUCTOS"."DESCRIPCION"Required	Size(  TSmallintFieldqryProductosACTIVO	FieldNameACTIVOOrigin"PRODUCTOS"."ACTIVO"  TIBStringFieldqryProductosIMPUESTO	FieldNameIMPUESTOOrigin"PRODUCTOS"."IMPUESTO"Size  TDateTimeFieldqryProductosFECHA_CREADO	FieldNameFECHA_CREADOOrigin"PRODUCTOS"."FECHA_CREADO"  TDateTimeFieldqryProductosFECHA_MODIF	FieldNameFECHA_MODIFOrigin"PRODUCTOS"."FECHA_MODIF"  TIBStringFieldqryProductosUNIDAD	FieldNameUNIDADOrigin"PRODUCTOS"."UNIDAD"Size
   TApplicationEvents
appevents1OnIdleappevents1IdleLeftkTop�   TActionManageractmgr1LeftKTop� 	StyleNamePlatform Default TActionactNuevaNotaCreditoCaption
Nueva nota	OnExecuteactNuevaNotaCreditoExecute  TActionactImprimirNotaCaptionImprimir	OnExecuteactImprimirNotaExecute  TActionactDescartarNotaCaption	Descartar	OnExecuteactDescartarNotaExecute  TActionactBuscarClienteCaptionBuscar clienteShortCutq	OnExecuteactBuscarClienteExecute   	TppReportreport1AutoStopDataPipelineppVentasPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameFactura VentaPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottomdPrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight'PrinterSetup.mmMarginTopdPrinterSetup.mmPaperHeight� PrinterSetup.mmPaperWidth�, PrinterSetup.PaperSize~Template.FileName3C:\sge\sources\SGE-Desktop\reports\nota_credito.rtmUnitsutMillimetersArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft� Top�Version18.0mmColumnWidth�, DataPipelineNameppVentas TppHeaderBandppHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeightvB mmPrintPosition  	TppDBText	ppDBText1DesignLayerppDesignLayer1UserNameDBText1	DataFieldFECHADataPipelineppVentasDisplayFormat
dd/mm/yyyyFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeft�  mmTop��  mmWidth/bBandType 	LayerName
Foreground  	TppDBText	ppDBText2DesignLayerppDesignLayer1UserNameDBText2	DataFieldRAZON_SOCIALDataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeft��  mmTop��  mmWidth�L BandType 	LayerName
Foreground  	TppDBText	ppDBText3DesignLayerppDesignLayer1UserNameDBText3	DataFieldRUCDataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeftIq mmTop��  mmWidth�ZBandType 	LayerName
Foreground  	TppDBTextppDireccionDesignLayerppDesignLayer1UserName	Direccion	DataField	DIRECCIONDataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeft�kmmTop�
 mmWidthe@ BandType 	LayerName
Foreground  	TppDBText
ppTelefonoDesignLayerppDesignLayer1UserNameTelefono	DataFieldTELEFONODataPipelineppVentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size

Font.Style Transparent	DataPipelineNameppVentasmmHeight�mmLeft9� mmTop�
 mmWidth�lBandType 	LayerName
Foreground  TppLabelplbl1DesignLayerppDesignLayer1UserNameplbl1CaptionNC#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style Transparent	mmHeight�mmLeft�mmTop�mmWidth�BandType 	LayerName
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
ppDetallesmmHeightxmmLeft_mmTop mmWidthz�  BandType	LayerNameForeground1  	TppDBText	ppDBText6DesignLayerppDesignLayer2UserNameDBText6	DataFieldPRECIO_UNITARIODataPipeline
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
ppDetallesmmHeightxmmLeft� mmTop mmWidth�UBandType	LayerNameForeground1  	TppDBTextlblLoteDesignLayerppDesignLayer2UserNamelblLoteBlankWhenZero		DataFieldLOTEDataPipeline
ppDetallesDisplayFormat0,.000Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size	
Font.Style ParentDataPipelineTransparent	VisibleVerticalAlignmentavCenterDataPipelineName
ppDetallesmmHeightxmmLeftU mmTop mmWidth�OBandType	LayerNameForeground1   TppSummaryBandppSummaryBand1VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  	TppDBCalc	ppDBCalc1DesignLayerppDesignLayer2UserNameDBCalc1	DataField
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
ppDetallesmmHeight�mmLeft)� mmTopmmWidth�UBandType	LayerNameForeground1   TraCodeModuleraCodeModule2 TraProgramInforaProgramInfo1raClassNameTraEventHandlerraProgram.ProgramNameDBCalc1OnCalcraProgram.ProgramTypettProcedureraProgram.Sourceqprocedure DBCalc1OnCalc;
begin
    sumaIva10 := dbcalc1.value / 11; 
    totaliva10 := dbcalc1.value; 
end;
raProgram.ComponentNameDBCalc1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos!   TraProgramInforaProgramInfo2raClassNameTraEventHandlerraProgram.ProgramNameDBCalc2OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcepprocedure DBCalc2OnCalc;
begin
     sumaIva5 := dbcalc2.value / 21;
     totaliva5  := dbcalc2.value;
end;
raProgram.ComponentNameDBCalc2raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos"   TraProgramInforaProgramInfo5raClassNameTraEventHandlerraProgram.ProgramNameDBCalc3OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcenprocedure DBCalc3OnCalc;
begin
    sumaExentas := dbcalc3.value;
    totalexentas := dbcalc3.value;
end;
raProgram.ComponentNameDBCalc3raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos#    TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBandedIndex       TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight��  mmPrintPosition  TppLabel
plblletrasDesignLayerppDesignLayer1UserName
plblletrasAutoSizeCaption-LETRAS-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Transparent	WordWrap	mmHeightq,mmLeft�  mmTop!mmWidth�� BandType	LayerName
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
Foreground   TraCodeModuleraCodeModule1 TraProgramInforaProgramInfo11raClassNameTraEventHandlerraProgram.ProgramNameplblTotalOnPrintraProgram.ProgramTypettProcedureraProgram.Sourceyprocedure plblTotalOnPrint;
begin
  plbltotal.text := formatfloat('0,.',totaliva10 + totaliva5 + totalexentas);
end;
raProgram.ComponentName	plblTotalraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos=   TraProgramInforaProgramInfo13raClassNameTraVarProgramraProgram.ChildTyperaProgram.ProgramName	VariablesraProgram.ProgramTypettProcedureraProgram.Source�procedure Variables;
var
  sumaIva10: integer;
  sumaIva5 : integer;
  sumaExentas: integer; 
  totalIva10: integer;
  totalIva5 : integer;
  totalExentas : integer;   

begin

end;
raProgram.CaretPos   TraProgramInforaProgramInfo14raClassNameTraEventHandlerraProgram.ProgramNameplblIva5OnPrintraProgram.ProgramTypettProcedureraProgram.Source\procedure plblIva5OnPrint;
begin
    plblIva5.text := formatfloat('0,.',sumaiva5);
end;
raProgram.ComponentNameplblIva5raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos(   TraProgramInforaProgramInfo15raClassNameTraEventHandlerraProgram.ProgramNameplblIva10OnPrintraProgram.ProgramTypettProcedureraProgram.Sourcebprocedure plblIva10OnPrint;
begin
     plblIva10.text := formatfloat('0,.',sumaiva10);  
end;
raProgram.ComponentName	plblIva10raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos*   TraProgramInforaProgramInfo16raClassNameTraEventHandlerraProgram.ProgramNameplbltotalivaOnPrintraProgram.ProgramTypettProcedureraProgram.Source~procedure plbltotalivaOnPrint;
begin
    plbltotaliva.text := formatfloat('0,.',sumaIva10 + sumaIva5 + sumaExentas);
end;
raProgram.ComponentNameplbltotalivaraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos,   TraProgramInforaProgramInfo17raClassNameTraEventHandlerraProgram.ProgramNameplblletrasOnPrintraProgram.ProgramTypettProcedureraProgram.Source`procedure plblletrasOnPrint;
begin
  plblletras.text := Report.Parameters['prletras'];
end;
raProgram.ComponentName
plblletrasraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos4   TraProgramInforaProgramInfo18raClassNameTraEventHandlerraProgram.ProgramNameplblSumaGrabadas10OnPrintraProgram.ProgramTypettProcedureraProgram.Sourcesprocedure plblSumaGrabadas10OnPrint;
begin
     plblsumagrabadas10.text := formatfloat('0,.',totaliva10);
end;
raProgram.ComponentNameplblSumaGrabadas10raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos=   TraProgramInforaProgramInfo19raClassNameTraEventHandlerraProgram.ProgramNameplblSumaGrabadas05OnPrintraProgram.ProgramTypettProcedureraProgram.Sourceqprocedure plblSumaGrabadas05OnPrint;
begin
    plblSumaGrabadas05.text := formatfloat('0,.',totaliva5);
end;
raProgram.ComponentNameplblSumaGrabadas05raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos   TraProgramInforaProgramInfo20raClassNameTraEventHandlerraProgram.ProgramNameplblSumaExentasOnPrintraProgram.ProgramTypettProcedureraProgram.Sourcemprocedure plblSumaExentasOnPrint;
begin
   plblSumaExentas.text := formatfloat('0,.',totalexentas);
end;
raProgram.ComponentNameplblSumaExentasraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos:    TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1 TppParameterprletra AutoSearchSettings.LogicalPrefix AutoSearchSettings.Mandatory	DataTypedtStringLookupSettings.DisplayType
dtNameOnlyLookupSettings.SortOrdersoNameValue    UserNameprletras    TppDBPipelineppVentas
DataSource
dsCabeceraRangeEndreCurrentRecord
RangeBeginrbCurrentRecordUserNameVentasLeft	Top� TppFieldppVentasppField1
FieldAliasCODIGO	FieldNameCODIGOFieldLength DataType
dtLargeIntDisplayWidth Position   TppFieldppVentasppField2
FieldAliasFECHA	FieldNameFECHAFieldLength DataType
dtDateTimeDisplayWidthPosition  TppFieldppVentasppField3
FieldAliasRUC	FieldNameRUCFieldLength(DisplayWidth(Position  TppFieldppVentasppField4
FieldAliasRAZON_SOCIAL	FieldNameRAZON_SOCIALFieldLength(DisplayWidth(Position  TppFieldppVentasppField5
FieldAliasESTADO	FieldNameESTADOFieldLengthDisplayWidthPosition  TppFieldppVentasppField6
FieldAliasOBSERVACION	FieldNameOBSERVACIONFieldLength(DisplayWidth(Position  TppFieldppVentasppField7	AlignmenttaRightJustify
FieldAliasPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTAFieldLength DataType	dtIntegerDisplayWidth
Position   TppDBPipeline
ppDetalles
DataSource	dsDetalleUserNameDetallesLeftETop�MasterDataPipelineNameppVentas TppFieldppDetallesppField1	AlignmenttaRightJustify
FieldAliasCANTIDAD	FieldNameCANTIDADFieldLength DataTypedtDoubleDisplayWidth
Position   TppFieldppDetallesppField2
FieldAliasPRODUCTOS_ID	FieldNamePRODUCTOS_IDFieldLength DataType
dtLargeIntDisplayWidthPosition  TppFieldppDetallesppField3
FieldAliasPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOFieldLength(DisplayWidth(Position  TppFieldppDetallesppField4
FieldAliasPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONFieldLength(DisplayWidth(Position  TppFieldppDetallesppField5	AlignmenttaRightJustify
FieldAliasPRECIO_UNITARIO	FieldNamePRECIO_UNITARIOFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField6	AlignmenttaRightJustify
FieldAliasEXENTAS	FieldNameEXENTASFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField7	AlignmenttaRightJustify
FieldAlias	GRABADAS5	FieldName	GRABADAS5FieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField8	AlignmenttaRightJustify
FieldAlias
GRABADAS10	FieldName
GRABADAS10FieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField9
FieldAliasOBSERVACION	FieldNameOBSERVACIONFieldLength(DisplayWidth(Position  TppFieldppDetallesppField10
FieldAliasLOTE	FieldNameLOTEFieldLength(DisplayWidth(Position	  TppFieldppDetallesppField11
FieldAliasCODIGO	FieldNameCODIGOFieldLength DataType
dtLargeIntDisplayWidthPosition
  TppFieldppDetallesppField12
FieldAliasNOTAS_CREDITOS_CODIGO	FieldNameNOTAS_CREDITOS_CODIGOFieldLength DataType
dtLargeIntDisplayWidthPosition    