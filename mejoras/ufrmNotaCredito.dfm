�
 TFRMNOTACREDITO 0�|  TPF0�TfrmNotaCreditofrmNotaCreditoCaption    ClientHeightClientWidth:VisibleOnCreate
FormCreateExplicitWidthJExplicitHeight:PixelsPerInch`
TextHeight �	TDxHeaderheaderCabeceraWidth:Titulo   Nota de Crédito	Subtitulo   Generar nota de créditoExplicitWidth:  TJvStatusBarstatus1Left Top�Width:HeightPanelsTextF2: Buscar facturaWidth�  Width�     	TDBGridEh
gridMasterLeft Top� Width:HeightlAlignalClient
DataSourcedsVentasDynProps Flat	FooterRowCountEmptyDataInfo.Active	EmptyDataInfo.TextNo hay resultados	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines SearchPanel.Enabled	SearchPanel.FilterOnTyping	SumList.Active	TabOrderTitleParams.MultiTitle	ColumnsDisplayFormatdd/mm/yyyy hh:nnDynProps EditButtons 	FieldNameFECHAFooter.DisplayFormatEncontrados: 0Footer.FieldNameFECHAFooter.ValueTypefvtCountFooters Widthn AlwaysShowEditButton	DynProps EditButtons 	FieldNameNUMEROFooters Width�  DynProps EditButtons 	FieldNameRUCFooters WidthW DynProps EditButtons 	FieldNameRAZON_SOCIALFooters Title.CaptionRAZON SOCIAL 	AlignmenttaCenterDynProps EditButtons 	FieldName	CONDICIONFooters Title.CaptionCONDWidth/OnAdvDrawDataCell!gridMasterColumns3AdvDrawDataCell DynProps EditButtons 	FieldNameOBSERVACIONFooters Width�  DynProps EditButtons 	FieldNameTIMBRADO_NUMEROFooters Title.CaptionTIMBRADO NUMEROWidth>   TRowDetailPanelControlEhRowDetailData   	TJvTabBartab1Left Top*Width:Hint    CloseButtonAutoFreeClosedPainterjvtbrxpntr1TabsCaptionVentas facturadasSelected	    	TGroupBoxgrp1AlignWithMargins	LeftTopDWidth4HeightIAlignalTopCaption
ParametrosTabOrder
DesignSize4I  TLabellblFechaInicioLeft
TopWidth7HeightCaptionFecha inicio  TLabellblFechaFinLeft� TopWidth,HeightCaption	Fecha fin  TLabellbl1Left�Top/Width HeightCaptionMotivo  TBevelbvl1Left�Top
Width	Height8Shape
bsLeftLine  TLabellbl2Left�TopWidthlHeightCaptionFactura seleccionada:   TLabellblFacturaSeleccionadaLeft7TopWidthtHeightCaption(seleccione una factura)  TDateTimePickerdtpFechaInicioLeftGTopWidthiHeightDate t(M�B�@Time t(M�B�@TabOrder  TDateTimePickerdtpFechaFInLeft� TopWidthiHeightDate t(M�B�@Time t(M�B�@TabOrder  TButtonbtnConsultarLeft_TopWidthKHeightCaption
&ConsultarTabOrder OnClickbtnConsultarClick  TButtonbtnGenerarNotaCreditoLeft�Top)WidthtHeightAnchorsakTopakRight CaptionGenerar nota creditoTabOrderOnClickbtnGenerarNotaCreditoClick  TEdit	edtMotivoLeft�Top+Width� HeightAnchorsakLeftakTopakRight Color��� TabOrderTextHint'Ingrese el motivo de la nota de credito   TIBQuery	qryVentasDatabasedm1.db1Transactiondm1.tra1AfterScrollqryVentasAfterScrollBufferChunks�CachedUpdates
ParamCheck	SQL.StringsDselect * from VISTA_VENTAS_IMPRESAS_RANGO(:fecha_inicio, :fecha_fin)where 1=1 and 1=1 LeftATop� 	ParamDataDataTypeftDateNamefecha_inicio	ParamTypeptInputValue
01/04/2019 DataTypeftDateName	fecha_fin	ParamTypeptInputValue
01/05/2019   TLargeintFieldqryVentasID	FieldNameIDOrigin""VISTA_VENTAS_IMPRESAS_RANGO"."ID"  TDateTimeFieldqryVentasFECHA	FieldNameFECHAOrigin%"VISTA_VENTAS_IMPRESAS_RANGO"."FECHA"  TIBStringFieldqryVentasRUC	FieldNameRUCOrigin#"VISTA_VENTAS_IMPRESAS_RANGO"."RUC"Size(  TIBStringFieldqryVentasRAZON_SOCIAL	FieldNameRAZON_SOCIALOrigin,"VISTA_VENTAS_IMPRESAS_RANGO"."RAZON_SOCIAL"Size(  TIBStringFieldqryVentasCONDICION	FieldName	CONDICIONOrigin)"VISTA_VENTAS_IMPRESAS_RANGO"."CONDICION"Required	Size  TIBStringFieldqryVentasDIRECCION	FieldName	DIRECCIONOrigin)"VISTA_VENTAS_IMPRESAS_RANGO"."DIRECCION"Size(  TIBStringFieldqryVentasTELEFONO	FieldNameTELEFONOOrigin("VISTA_VENTAS_IMPRESAS_RANGO"."TELEFONO"Size(  TIBStringFieldqryVentasNOTA_REMISION	FieldNameNOTA_REMISIONOrigin-"VISTA_VENTAS_IMPRESAS_RANGO"."NOTA_REMISION"Size(  TIBStringFieldqryVentasOBSERVACION	FieldNameOBSERVACIONOrigin+"VISTA_VENTAS_IMPRESAS_RANGO"."OBSERVACION"Size(  TSmallintFieldqryVentasPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTAOrigin0"VISTA_VENTAS_IMPRESAS_RANGO"."PRECIO_MAYORISTA"  TIBStringFieldqryVentasESTADO	FieldNameESTADOOrigin&"VISTA_VENTAS_IMPRESAS_RANGO"."ESTADO"Size  TIBStringFieldqryVentasNUMERO	FieldNameNUMEROOrigin&"VISTA_VENTAS_IMPRESAS_RANGO"."NUMERO"Size(  TIBStringFieldqryVentasTIMBRADO_NUMERO	FieldNameTIMBRADO_NUMEROOrigin/"VISTA_VENTAS_IMPRESAS_RANGO"."TIMBRADO_NUMERO"Size(  TDateTimeFieldqryVentasFECHA_CREADO	FieldNameFECHA_CREADOOrigin,"VISTA_VENTAS_IMPRESAS_RANGO"."FECHA_CREADO"  TDateTimeFieldqryVentasFECHA_MODIF	FieldNameFECHA_MODIFOrigin+"VISTA_VENTAS_IMPRESAS_RANGO"."FECHA_MODIF"   TDataSourcedsVentasDataSet	qryVentasLeftATop,  TJvTabBarXPPainterjvtbrxpntr1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style DisabledFont.CharsetDEFAULT_CHARSETDisabledFont.Color
clGrayTextDisabledFont.Height�DisabledFont.NameTahomaDisabledFont.Style SelectedFont.CharsetDEFAULT_CHARSETSelectedFont.ColorclWindowTextSelectedFont.Height�SelectedFont.NameTahomaSelectedFont.Style FixedTabSize Left�   TApplicationEvents
appevents1OnIdleappevents1IdleLeftTopl  TIBStoredProcspGenerarNotaCreditoDatabasedm1.db1Transactiondm1.tra1StoredProcNameGENERAR_NOTA_CREDITOLeft'Top� 	ParamDataDataType
ftLargeintNameCODIGO	ParamTypeptInput DataTypeftStringNameOBSERVACION	ParamTypeptInput    TIBTable	tblVentasDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint NameFECHADataType
ftDateTime NameRUCDataTypeftWideStringSize( NameRAZON_SOCIALDataTypeftWideStringSize( Name	CONDICIONDataTypeftWideStringSize Name	DIRECCIONDataTypeftWideStringSize( NameTELEFONODataTypeftWideStringSize( NameNOTA_REMISIONDataTypeftWideStringSize( NameOBSERVACIONDataTypeftWideStringSize( NamePRECIO_MAYORISTADataType
ftSmallint NameESTADODataTypeftWideStringSize NameNUMERODataTypeftWideStringSize( NameTIMBRADO_NUMERODataTypeftWideStringSize( NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsName	PK_VENTASFieldsIDOptionsixUnique  NameVENTAS_IDX4FieldsNUMERO NameVENTAS_IDX3FieldsESTADO NameVENTAS_IDX2FieldsRUC NameVENTAS_IDX1FieldsFECHA NameVENTAS_IDX5FieldsTIMBRADO_NUMERO;NUMEROOptionsixUnique   IndexFieldNamesID	StoreDefs		TableNameVENTASUniDirectionalLeft	TopG TLargeintFieldtblVentasID	FieldNameID  TDateTimeFieldtblVentasFECHA	FieldNameFECHA  TSmallintFieldtblVentasPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTA  TIBStringFieldtblVentasRUC	FieldNameRUCSize(  TIBStringFieldtblVentasRAZON_SOCIAL	FieldNameRAZON_SOCIALSize(  TIBStringFieldtblVentasCONDICION	FieldName	CONDICIONSize  TIBStringFieldtblVentasDIRECCION	FieldName	DIRECCIONSize(  TIBStringFieldtblVentasTELEFONO	FieldNameTELEFONOSize(  TIBStringFieldtblVentasNOTA_REMISION	FieldNameNOTA_REMISIONSize(  TIBStringFieldtblVentasOBSERVACION	FieldNameOBSERVACIONSize(  TIBStringFieldtblVentasESTADO	FieldNameESTADOSize  TIBStringFieldtblVentasNUMERO	FieldNameNUMEROReadOnly	Size(  TIBStringFieldtblVentasTIMBRADO_NUMERO	FieldNameTIMBRADO_NUMEROReadOnly	Size(   TJvDataSourceJvDataSource1DataSet	tblVentasLeft	Topy  TJvDataSource
dsDetallesDataSettblDetallesLeftETopy  TIBTabletblDetallesDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint Name	VENTAS_ID
Attributes
faRequired DataType
ftLargeint NameCANTIDADDataTypeftFloat NamePRODUCTOS_IDDataType
ftLargeint NamePRODUCTOS_CODIGODataTypeftWideStringSize( NamePRODUCTOS_DESCRIPCIONDataTypeftWideStringSize( NamePRECIO_UNITARIODataTypeftFloat NameEXENTASDataTypeftFloat Name	GRABADAS5DataTypeftFloat Name
GRABADAS10DataTypeftFloat NameOBSERVACIONDataTypeftWideStringSize( NameLOTEDataTypeftWideStringSize(  	IndexDefsNamePK_VENTAS_DETALLESFieldsIDOptionsixUnique  NameFK_VENTAS_DETALLES_1Fields	VENTAS_ID NameFK_VENTAS_DETALLES_2FieldsPRODUCTOS_ID  IndexFieldNames	VENTAS_IDMasterFieldsIDMasterSourceJvDataSource1	StoreDefs		TableNameVENTAS_DETALLESUniDirectionalLeftETopG TLargeintFieldtblDetallesID	FieldNameID  TLargeintFieldtblDetallesVENTAS_ID	FieldName	VENTAS_ID  TFloatFieldtblDetallesCANTIDAD	FieldNameCANTIDAD  TLargeintFieldtblDetallesPRODUCTOS_ID	FieldNamePRODUCTOS_ID  TFloatFieldtblDetallesPRECIO_UNITARIO	FieldNamePRECIO_UNITARIO  TFloatFieldtblDetallesEXENTAS	FieldNameEXENTAS  TFloatFieldtblDetallesGRABADAS5	FieldName	GRABADAS5  TFloatFieldtblDetallesGRABADAS10	FieldName
GRABADAS10  TIBStringFieldtblDetallesPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOSize(  TIBStringField tblDetallesPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONSize(  TIBStringFieldtblDetallesOBSERVACION	FieldNameOBSERVACIONSize(  TIBStringFieldtblDetallesLOTE	FieldNameLOTESize(   TppDBPipelineppVentas
DataSourceJvDataSource1RangeEndreCurrentRecord
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
FieldAliasNUMERO	FieldNameNUMEROFieldLength(DisplayWidth(Position  TppFieldppVentasppField13
FieldAliasTIMBRADO_NUMERO	FieldNameTIMBRADO_NUMEROFieldLength(DisplayWidth(Position   TppDBPipeline
ppDetalles
DataSource
dsDetallesUserNameDetallesLeftETop�MasterDataPipelineNameppVentas TppFieldppDetallesppField1
FieldAliasID	FieldNameIDFieldLength DataType
dtLargeIntDisplayWidth Position   TppFieldppDetallesppField2
FieldAlias	VENTAS_ID	FieldName	VENTAS_IDFieldLength DataType
dtLargeIntDisplayWidthPosition  TppFieldppDetallesppField3	AlignmenttaRightJustify
FieldAliasCANTIDAD	FieldNameCANTIDADFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldppDetallesppField4
FieldAliasPRODUCTOS_ID	FieldNamePRODUCTOS_IDFieldLength DataType
dtLargeIntDisplayWidthPosition  TppFieldppDetallesppField5	AlignmenttaRightJustify
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
FieldAliasPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOFieldLength(DisplayWidth(Position  TppFieldppDetallesppField10
FieldAliasPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONFieldLength(DisplayWidth(Position	  TppFieldppDetallesppField11
FieldAliasOBSERVACION	FieldNameOBSERVACIONFieldLength(DisplayWidth(Position
  TppFieldppDetallesppField12
FieldAliasLOTE	FieldNameLOTEFieldLength(DisplayWidth(Position   	TppReportreport1AutoStopDataPipelineppVentasPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameFactura VentaPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottomdPrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight'PrinterSetup.mmMarginTopdPrinterSetup.mmPaperHeight� PrinterSetup.mmPaperWidth�, PrinterSetup.PaperSize~Template.FileName<C:\sge\sources\SGE-Desktop\reports\factura_venta_v5_lote.rtmUnitsutMillimetersArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.Enabled	OutlineSettings.Visible	ThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString<EncontrarTexto>TextSearchSettings.Enabled	XLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeft� TopyVersion18.0mmColumnWidth�, DataPipelineNameppVentas TppHeaderBandppHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeightvB mmPrintPosition  TmyCheckBox
chkContadoDesignLayerppDesignLayer1UserName
chkContado	FormFieldStylecsXMarkBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft � mmTop��  mmWidth�BandType 	LayerName
Foreground  TmyCheckBox
chkCreditoDesignLayerppDesignLayer1UserName
chkCredito	FormFieldStylecsXMarkBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftb� mmTop��  mmWidth�BandType 	LayerName
Foreground  	TppDBText	ppDBText1DesignLayerppDesignLayer1UserNameDBText1	DataFieldFECHADataPipelineppVentasDisplayFormat
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
raProgram.ComponentNameDBCalc3raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos#   TraProgramInforaProgramInfo6raClassNameTraEventHandlerraProgram.ProgramNamelblLoteOnPrintraProgram.ProgramTypettProcedureraProgram.Source,procedure lblLoteOnPrint;
begin
  
end;
raProgram.ComponentNamelblLoteraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos    TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBandedIndex       TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight��  mmPrintPosition  TppLabel
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
raProgram.ComponentNamepsbrprt1raProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos   TraProgramInforaProgramInfo13raClassNameTraVarProgramraProgram.ChildTyperaProgram.ProgramName	VariablesraProgram.ProgramTypettProcedureraProgram.Source�procedure Variables;
var
  sumaIva10: integer;
  sumaIva5 : integer;
  sumaExentas: integer; 
  totalIva10: integer;
  totalIva5 : integer;
  totalExentas : integer;   

begin

end;
raProgram.CaretPos   TraProgramInforaProgramInfo14raClassNameTraEventHandlerraProgram.ProgramNameplblIva5OnPrintraProgram.ProgramTypettProcedureraProgram.Source\procedure plblIva5OnPrint;
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
raProgram.ComponentNameplblSumaExentasraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos:   TraProgramInforaProgramInfo21raClassNameTraEventHandlerraProgram.ProgramNameDireccionOnPrintraProgram.ProgramTypettProcedureraProgram.Source,procedure DireccionOnPrint;
begin

end;
raProgram.ComponentName	DireccionraProgram.EventNameOnPrintraProgram.EventID raProgram.CaretPos    TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1 TppParameterprletra AutoSearchSettings.LogicalPrefix AutoSearchSettings.Mandatory	DataTypedtStringLookupSettings.DisplayType
dtNameOnlyLookupSettings.SortOrdersoNameValue    UserNameprletras     