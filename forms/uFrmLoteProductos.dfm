�
 TFRMLOTEPRODUCTOS 0z!  TPF0�TfrmLoteProductosfrmLoteProductosCaptionLote de productosClientHeight�ClientWidthB
OnActivateFormActivateOnResize
FormResizeExplicitWidthRExplicitHeight�PixelsPerInch`
TextHeight � TLabellbl1LeftTop0WidthHeightCaptionLote  �TLabellblFechaElaboracionLeft� Top0WidthTHeightCaption   Fecha fabricación  �TLabelLabel1Left�Top0WidthYHeightCaptionFecha vencimiento  �TLabellblHintAlignWithMargins	Left$Top0WidthHeighthAnchorsakTopakRight Caption*  Generar codigo: Crea una etiqueta de lote basado en la fecha actual.
Grabar lote: Cambia de estado a todos los items de estado GENE a PROC.
Descartar lote: Borra el lote de estado GENE.

Lotes con el estado PROC significa que ya han sido utilizados por el sistema y no podran ser dados de baja.WordWrap	  �TLabellbl2LeftkTop0Width$HeightCaptionPeriodo  �	TDxHeaderheaderCabeceraWidthBTituloLotes y vencimientos	Subtitulo    Gestión de lotes y vencimientosExplicitWidthB  	TDBGridEhgrid1AlignWithMargins	LeftTop� Width<Height� AlignalBottomAnchorsakLeftakTopakRightakBottom AutoFitColWidths	
DataSourcedsLoteProductosDynProps Flat	TabOrder
TitleParams.MultiTitle	ColumnsAutoDropDown	DynProps EditButtons 	FieldNamePRODUCTO_IDFooters LookupParams.KeyFieldNamesPRODUCTO_CODIGOLookupParams.LookupDataSettblProductos#LookupParams.LookupDisplayFieldNameDESCRIPCION LookupParams.LookupKeyFieldNamesCODIGOTitle.CaptionPRODUCTOWidth�  DynProps EditButtons 	FieldNameLOTEFooters Widthx DisplayFormatdd/mm/yyyy hh:mmDynProps EditButtons 	FieldNameFECHA_FABRICACIONFooters MaxWidthdMinWidthdTitle.CaptionFECHA FABRICACIONWidthd DisplayFormatdd/mm/yyyy hh:mmDynProps EditButtons 	FieldNameFECHA_VENCIMIENTOFooters MaxWidthdMinWidthdTitle.CaptionFECHA VENCIMIENTOWidthd DisplayFormat0,.000DynProps EditButtons 	FieldNameCANTIDADFooters MaxWidthPMinWidthPTitle.CaptionCANTIDAD PRODUCTOWidthP DisplayFormat0,.000DynProps EditButtons 	FieldNameSALDOFooters MaxWidthPMinWidthPTitle.CaptionSALDO DEL LOTEWidthP DynProps EditButtons 	FieldNameESTADOFooters MaxWidthPMinWidthPTitle.CaptionESTADO DEL LOTEWidthPOnAdvDrawDataCellgrid1Columns6AdvDrawDataCell DynProps EditButtons 	FieldNameOBSERVACIONFooters    TRowDetailPanelControlEhRowDetailData   TEditedtLoteLeftTopCWidth� HeightHint   Código del loteTabOrder  TButtonbtnGenerarCodigoLoteLeft� TopCWidth8HeightCaptionGenerarTabOrderOnClickbtnGenerarCodigoLoteClick  TJvDatePickerEditedtFechaElaboracionLeft� TopCWidth� HeightAllowNoDate	Checked	TabOrder  TJvDatePickerEditedtFechaVencimientoLeft�TopCWidth� HeightAllowNoDate	Checked	TabOrder  TButton	btnGrabarLeftsTopWidthcHeightAnchorsakTopakRight CaptionGrabar loteTabOrderVisible  TDBNavigatordbnvgr1LeftJTop� Width� Height
DataSourcedsLoteProductosAnchorsakTopakRight Flat	TabOrder	  TEditedtDiasLeftkTopCWidth(Height	AlignmenttaCenterColor��� TabOrderText30  TButtonbtnDescartarLoteLeft�TopWidth[HeightAnchorsakTopakRight CaptionDescartar loteTabOrderVisible  	TGroupBoxgrpRegistrarItemLeftTop^WidthHeightfCaptionRegistrar item al loteTabOrder
DesignSizef  TLabellblProductoLeftTopWidth/HeightCaption	Producto:  TLabellblCantidadLeftTop*Width/HeightCaption	Cantidad:  TLabelLabel2LeftTopGWidth@HeightCaption   Observación:  TEditedtCodigoProductoLeftiTopWidth^HeightParentShowHintShowHint	TabOrder   TEditedtProductoLeft� TopWidth� HeightParentShowHintShowHint	TabOrder  TButtonbtnAgregarItemLeft�TopWidthKHeightAnchorsakRightakBottom CaptionAgregar itemTabOrderOnClickbtnAgregarItemClick  TButtonbtnDescartarLeft�Top.WidthKHeightAnchorsakRightakBottom Caption	DescartarTabOrder  TEditedtObservacionLeftiTopEWidth0HeightHintBreve observacionParentShowHintShowHint	TabOrder  TDBNumberEditEhedtCantidad2LeftiTop*Width^HeightDecimalPlacesDynProps EditButtons TabOrderValue       ��?Visible	   TJvStatusBarstatus1Left Top�WidthBHeightPanels   TIBTabletblLotesDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameLOTE
Attributes
faRequired DataTypeftStringSize( NamePRODUCTO_ID
Attributes
faRequired DataType
ftLargeint NamePRODUCTO_CODIGO
Attributes
faRequired DataType
ftLargeint NamePRODUCTO_DESCRIPCION
Attributes
faRequired DataTypeftStringSize( NameFECHA_FABRICACIONDataType
ftDateTime NameFECHA_VENCIMIENTO
Attributes
faRequired DataType
ftDateTime NameCANTIDADDataTypeftFloat NameSALDODataTypeftFloat NameESTADODataTypeftStringSize NameOBSERVACIONDataTypeftStringSized NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsNamePK_PRODUCTOS_LOTESFieldsCODIGOOptionsixUnique  NamePRODUCTOS_LOTES_IDX1FieldsLOTE;PRODUCTO_IDOptionsixUnique  NameFK_PRODUCTOS_LOTES_1FieldsPRODUCTO_ID NameUNQ1_PRODUCTOS_LOTESFields"LOTE;PRODUCTO_ID;FECHA_FABRICACIONOptionsixUnique   	StoreDefs		TableNamePRODUCTOS_LOTESUniDirectionalLeft�Top�  TLargeintFieldtblLotesCODIGO	FieldNameCODIGORequired	  TIBStringFieldtblLotesLOTE	FieldNameLOTERequired	Size(  TLargeintFieldtblLotesPRODUCTO_ID	FieldNamePRODUCTO_IDRequired	  TLargeintFieldtblLotesPRODUCTO_CODIGO	FieldNamePRODUCTO_CODIGORequired	  TIBStringFieldtblLotesPRODUCTO_DESCRIPCION	FieldNamePRODUCTO_DESCRIPCIONRequired	Size(  TDateTimeFieldtblLotesFECHA_FABRICACION	FieldNameFECHA_FABRICACION  TDateTimeFieldtblLotesFECHA_VENCIMIENTO	FieldNameFECHA_VENCIMIENTO  TFloatFieldtblLotesCANTIDAD	FieldNameCANTIDAD  TFloatFieldtblLotesSALDO	FieldNameSALDO  TIBStringFieldtblLotesESTADO	FieldNameESTADOSize  TDateTimeFieldtblLotesFECHA_CREADO	FieldNameFECHA_CREADO  TDateTimeFieldtblLotesFECHA_MODIF	FieldNameFECHA_MODIF  TIBStringFieldtblLotesOBSERVACION	FieldNameOBSERVACIONSized   TDataSourcedsLoteProductosDataSettblLotesLeftTop�   TIBTabletblProductosDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint NameCODIGODataTypeftWideStringSize( NameORIGENDataTypeftWideStringSize( NameDESCRIPCION
Attributes
faRequired DataTypeftWideStringSize( NameACTIVODataType
ftSmallint NameIMPUESTODataTypeftWideStringSize NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime NameUNIDADDataTypeftWideStringSize
  	IndexDefsNamePK_PRODUCTOSFieldsIDOptionsixUnique  NameUNQ1_PRODUCTOSFieldsCODIGOOptionsixUnique  NamePRODUCTOS_IDX1FieldsDESCRIPCION  	StoreDefs		TableName	PRODUCTOSUniDirectionalLeft�Top6 TLargeintFieldtblProductosID	FieldNameIDRequired	  TIBStringFieldtblProductosCODIGO	FieldNameCODIGOSize(  TIBStringFieldtblProductosORIGEN	FieldNameORIGENSize(  TIBStringFieldtblProductosDESCRIPCION	FieldNameDESCRIPCIONRequired	Size(  TSmallintFieldtblProductosACTIVO	FieldNameACTIVO  TIBStringFieldtblProductosIMPUESTO	FieldNameIMPUESTOSize  TDateTimeFieldtblProductosFECHA_CREADO	FieldNameFECHA_CREADO  TDateTimeFieldtblProductosFECHA_MODIF	FieldNameFECHA_MODIF  TIBStringFieldtblProductosUNIDAD	FieldNameUNIDADSize
   TIBStoredProcspGeneraLoteDatabasedm1.db1Transactiondm1.tra1StoredProcNamePL_REGISTRAR_LOTE_PRODUCTOLeft�Top� 	ParamDataDataType
ftLargeintNamePRODUCTO_ID	ParamTypeptResult DataTypeftStringNameLOTE	ParamTypeptInput DataType
ftDateTimeNameFECHA_FABRICACION	ParamTypeptInput DataType
ftDateTimeNameFECHA_VENCIMIENTO	ParamTypeptInput DataTypeftFloatNameCANTIDAD	ParamTypeptInputValue     DataTypeftStringNameOBSERVACION	ParamTypeptInput    TDataSourcedsProductosDataSettblProductosLeft�Top	  TActionListactlst1Left� Top
 TActionactBuscarProductoCaptionactBuscarProductoShortCutq	OnExecuteactBuscarProductoExecute    