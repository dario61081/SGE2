�
 TFRMLOTEPRODUCTOS 0�  TPF0�TfrmLoteProductosfrmLoteProductosCaptionLote de productosClientHeight�ClientWidth%
OnActivateFormActivateExplicitWidth5ExplicitHeight�PixelsPerInch`
TextHeight � TLabellbl1LeftTop7WidthHeightCaptionLote:  �TLabellblFechaElaboracionLeftTopRWidthXHeightCaption   Fecha fabricación:  �TLabelLabel1LeftTopmWidth]HeightCaptionFecha vencimiento:  �TLabellblHintLeft�Top/WidthbHeightNAnchorsakTopakRight Caption*  Generar codigo: Crea una etiqueta de lote basado en la fecha actual.
Grabar lote: Cambia de estado a todos los items de estado GENE a PROC.
Descartar lote: Borra el lote de estado GENE.

Lotes con el estado PROC significa que ya han sido utilizados por el sistema y no podran ser dados de baja.WordWrap	  �	TDxHeaderheaderCabeceraWidth%  	TDxHeaderheader2Left Top*Width%Height)AlignalTopTituloLotes y vencimientosTituloColorclBlack	Subtitulo    Gestión de lotes y vencimientosSubtituloColorclBlackExplicitTop   	TDBGridEhgrid1AlignWithMargins	LeftTop� WidthHeight� AlignalBottomAnchorsakLeftakTopakRightakBottom AutoFitColWidths	BorderStylebsNone
DataSourcedsLoteProductosDynProps Flat	TabOrderTitleParams.MultiTitle	Columns.DropDownBox.ColumnDefValues.DropDownShowTitles	*DropDownBox.ColumnDefValues.DropDownSizing	DropDownBox.Columns	FieldNamecodigo 	FieldNamedescripcion  DropDownBox.ListFieldNamescodigo;descripcionDropDownBox.ListSourcedsLoteProductosDynProps EditButtons 	FieldNamePRODUCTO_IDFooters LookupParams.KeyFieldNamesPRODUCTO_CODIGOLookupParams.LookupDataSettblProductos#LookupParams.LookupDisplayFieldNameCODIGO, descripcion LookupParams.LookupKeyFieldNamesCODIGOTitle.CaptionPRODUCTO ID DynProps EditButtons 	FieldNamePRODUCTO_DESCRIPCIONFooters Title.CaptionPRODUCTO DESCRIPCION DisplayFormatdd/mm/yyyy hh:mmDynProps EditButtons 	FieldNameFECHA_FABRICACIONFooters MaxWidthdMinWidthdTitle.CaptionFECHA FABRICACIONWidthd DisplayFormatdd/mm/yyyy hh:mmDynProps EditButtons 	FieldNameFECHA_VENCIMIENTOFooters MaxWidthdMinWidthdTitle.CaptionFECHA VENCIMIENTOWidthd DisplayFormat0,.000DynProps EditButtons 	FieldNameCANTIDADFooters MaxWidthPMinWidthPTitle.CaptionCANTIDAD PRODUCTOWidthP DisplayFormat0,.000DynProps EditButtons 	FieldNameSALDOFooters MaxWidthPMinWidthPTitle.CaptionSALDO DEL LOTEWidthP DynProps EditButtons 	FieldNameESTADOFooters MaxWidthPMinWidthPTitle.CaptionESTADO DEL LOTEWidthPOnAdvDrawDataCellgrid1Columns6AdvDrawDataCell   TRowDetailPanelControlEhRowDetailData   TEditedtLoteLeftqTop4Width� HeightHint   Código del loteTabOrder  TButtonbtnGenerarCodigoLoteLeft� TopWidthcHeightCaption   Generar códigoTabOrderOnClickbtnGenerarCodigoLoteClick  TJvDatePickerEditedtFechaElaboracionLeftqTopOWidth� HeightAllowNoDate	Checked	TabOrder  TJvDatePickerEditedtFechaVencimientoLeftqTopjWidth� HeightAllowNoDate	Checked	TabOrder  TButton	btnGrabarLeftPTopWidthcHeightCaptionGrabar loteTabOrder  TDBNavigatordbnvgr1Left-Top� Width� Height
DataSourcedsLoteProductosAnchorsakTopakRight Flat	TabOrder
  TEditedtDiasLeft� TopOWidth(Height	AlignmenttaCenterColor��� TabOrderText30  TButtonbtnDescartarLoteLeft�TopWidth[HeightCaptionDescartar loteTabOrder  	TGroupBoxgrpRegistrarItemLeftTop� Width�HeightSCaptionRegistrar item al loteTabOrder	
DesignSize�S  TLabellblProductoLeftTopWidth/HeightCaption	Producto:  TLabellblCantidadLeftTop1Width/HeightCaption	Cantidad:  TEditedtCantidadLeftGTop.WidthcHeightTabOrder  TEditedtCodigoProductoLeftGTopWidth:HeightTabOrder   TEditedtProductoLeft� TopWidthHeightTabOrder  TButtonbtnAgregarItemLeft� Top+WidthKHeightAnchorsakRightakBottom CaptionAgregar itemTabOrder  TButtonbtnDescartarLeft;Top+WidthKHeightAnchorsakRightakBottom Caption	DescartarTabOrder   TIBTabletblLotesDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameLOTE
Attributes
faRequired DataTypeftWideStringSize( NamePRODUCTO_ID
Attributes
faRequired DataType
ftLargeint NamePRODUCTO_CODIGO
Attributes
faRequired DataType
ftLargeint NamePRODUCTO_DESCRIPCION
Attributes
faRequired DataTypeftWideStringSize( NameFECHA_FABRICACIONDataType
ftDateTime NameFECHA_VENCIMIENTODataType
ftDateTime NameCANTIDADDataTypeftFloat NameSALDODataTypeftFloat NameESTADODataTypeftWideStringSize NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsNamePK_PRODUCTOS_LOTESFieldsCODIGOOptionsixUnique  NamePRODUCTOS_LOTES_IDX1FieldsLOTE;PRODUCTO_IDOptionsixUnique  NameFK_PRODUCTOS_LOTES_1FieldsPRODUCTO_ID NameUNQ1_PRODUCTOS_LOTESFields"LOTE;PRODUCTO_ID;FECHA_FABRICACIONOptionsixUnique   	StoreDefs		TableNamePRODUCTOS_LOTESUniDirectionalLeftTTop2 TLargeintFieldtblLotesCODIGO	FieldNameCODIGORequired	  TIBStringFieldtblLotesLOTE	FieldNameLOTERequired	Size(  TLargeintFieldtblLotesPRODUCTO_ID	FieldNamePRODUCTO_IDRequired	  TLargeintFieldtblLotesPRODUCTO_CODIGO	FieldNamePRODUCTO_CODIGORequired	  TIBStringFieldtblLotesPRODUCTO_DESCRIPCION	FieldNamePRODUCTO_DESCRIPCIONRequired	Size(  TDateTimeFieldtblLotesFECHA_FABRICACION	FieldNameFECHA_FABRICACION  TDateTimeFieldtblLotesFECHA_VENCIMIENTO	FieldNameFECHA_VENCIMIENTO  TFloatFieldtblLotesCANTIDAD	FieldNameCANTIDAD  TFloatFieldtblLotesSALDO	FieldNameSALDO  TIBStringFieldtblLotesESTADO	FieldNameESTADOSize  TDateTimeFieldtblLotesFECHA_CREADO	FieldNameFECHA_CREADO  TDateTimeFieldtblLotesFECHA_MODIF	FieldNameFECHA_MODIF   TDataSourcedsLoteProductosDataSettblLotesLeft]Top,  TIBTabletblProductosDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	TableName	PRODUCTOSUniDirectionalLeftTop1   