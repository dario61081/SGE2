�
 TFRMMANTENERPRODUCTOS 0+  TPF0�TfrmMantenerProductosfrmMantenerProductosCaptionMantener productosClientHeight�ClientWidth�OnCreate
FormCreateExplicitWidthExplicitHeight PixelsPerInch`
TextHeight � 	TSplitterspl1Left TopWidth�HeightCursorcrVSplitAlignalBottomExplicitTop� ExplicitWidth/  �	TDxHeaderheaderCabeceraWidth�  	TDxHeaderheader1Left Top*Width�Height)AlignalTopTitulo$Mantenimiento de productos y preciosTituloColorclBlackSubtituloColorclBlackExplicitTop   TPageControlpgc1Left TopSWidth�Height� 
ActivePage	TabSheet1AlignalClientTabOrderExplicitTop)ExplicitHeight�  	TTabSheet	TabSheet1Caption	ProductosExplicitLeft ExplicitTop ExplicitWidth ExplicitHeight  	TDBGridEhgridProductosLeft TopWidth�Height� Margins.Top@AlignalClient
DataSourcedsProdDynProps Flat	SearchPanel.Enabled	SearchPanel.FilterOnTyping	TabOrder TitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameIDFooters WidthE DynProps EditButtons 	FieldNameCODIGOFooters WidthS DynProps EditButtons 	FieldNameORIGENFooters  DynProps EditButtons 	FieldNameDESCRIPCIONFooters  DynProps EditButtons 	FieldNameACTIVOFooters  DynProps EditButtons 	FieldNameIMPUESTOFooters MaxWidthHMinWidthHWidthH   TRowDetailPanelControlEhRowDetailData TPanelpnl1Left Top Width Height AlignalClient
BevelOuterbvNoneCaptionpnl1TabOrder     TToolBartlb1Left Top Width�HeightAutoSize	ButtonHeightCaptiontlb1TabOrder TDBNavigator
dbnvgrProdLeft Top Width� Height
DataSourcedsProdAlignalLeftFlat	TabOrder OnClickdbnvgrProdClick     TPageControlpgc2Left TopWidth�Height� 
ActivePage	tsPreciosAlignalBottomTabOrder 	TTabSheet	tsPreciosCaptionPrecios de productosExplicitLeft ExplicitTop ExplicitWidth ExplicitHeight  	TDBGridEhgridPreciosAlignWithMargins	LeftTop Width�Height� Margins.Top AlignalClient
DataSource	dsPreciosDynProps Flat	TabOrder TitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameIDFooters Visible DynProps EditButtons 	FieldNamePRODUCTOS_IDFooters Visible DisplayFormat0,.DynProps EditButtons 	FieldNamePRECIO_VENTAFooters Title.CaptionPRECIO VENTAWidtha AlwaysShowEditButton	AutoDropDown	DynProps EditButtons 	FieldName	MAYORISTAFooters KeyList.Strings0123 PickList.Strings	MINORISTA	MAYORISTADISTRIBUIDORAOTROS Title.CaptionLISTA DE PRECIOSWidthg   TRowDetailPanelControlEhRowDetailData   TDBNavigatordbnvgrPreciosLeftTopWidth� Height
DataSource	dsPreciosFlat	TabOrderOnClickdbnvgrPreciosClick    TIBTabletblProdDatabasedm1.db1Transactiondm1.tra1Active	BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint NameCODIGODataTypeftWideStringSize( NameORIGENDataTypeftWideStringSize( NameDESCRIPCION
Attributes
faRequired DataTypeftWideStringSize( NameACTIVODataType
ftSmallint NameIMPUESTODataTypeftWideStringSize NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime NameUNIDADDataTypeftWideStringSize
  	IndexDefsNamePK_PRODUCTOSFieldsIDOptionsixUnique  NameUNQ1_PRODUCTOSFieldsCODIGOOptionsixUnique  NamePRODUCTOS_IDX1FieldsDESCRIPCION  IndexFieldNamesID	StoreDefs		TableName	PRODUCTOSUniDirectionalLeftPTop TLargeintField	tblProdIDDisplayWidth	FieldNameID  TIBStringFieldtblProdCODIGODisplayWidth	FieldNameCODIGOSize(  TIBStringFieldtblProdORIGENDisplayWidth(	FieldNameORIGENSize(  TIBStringFieldtblProdDESCRIPCIONDisplayWidth(	FieldNameDESCRIPCIONRequired	Size(  TSmallintFieldtblProdACTIVODisplayWidth
	FieldNameACTIVO  TIBStringFieldtblProdIMPUESTODisplayWidth	FieldNameIMPUESTOSize   TIBTable
tblPreciosDatabasedm1.db1Transactiondm1.tra1OnNewRecordtblPreciosNewRecordActive	BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint NamePRODUCTOS_ID
Attributes
faRequired DataType
ftLargeint NameLISTA
Attributes
faRequired DataTypeftWideStringSize( NamePRECIO_VENTADataTypeftFloat Name	MAYORISTADataType
ftSmallint NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsNamePK_PRODUCTOS_PRECIOSFieldsIDOptionsixUnique  NameUNQ1_PRODUCTOS_PRECIOSFieldsPRODUCTOS_ID;MAYORISTAOptionsixUnique  NameFK_PRODUCTOS_PRECIOS_1FieldsPRODUCTOS_ID  IndexFieldNamesPRODUCTOS_IDMasterFieldsIDMasterSourcedsProd	StoreDefs		TableNamePRODUCTOS_PRECIOSUniDirectionalLeftpTop TLargeintFieldtblPreciosID	FieldNameID  TLargeintFieldtblPreciosPRODUCTOS_ID	FieldNamePRODUCTOS_IDRequired	  TFloatFieldtblPreciosPRECIO_VENTA	FieldNamePRECIO_VENTA  TSmallintFieldtblPreciosMAYORISTA	FieldName	MAYORISTA   TDataSourcedsProdDataSettblProdLeftTop  TDataSource	dsPreciosDataSet
tblPreciosLeft0Top   