�
 TFRMFACTURASTIMBRADOS 0N  TPF0TfrmFacturasTimbradosfrmFacturasTimbradosLeft Top AutoSize	CaptionFacturas y TimbradosClientHeightClientWidthCColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPositionpoMainFormCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TDBGridEhgridTimbradosAlignWithMargins	LeftTop(Width=Height�Margins.Top(AlignalClientAutoFitColWidths	
DataSourcedsTimbradosDynProps 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines TabOrderTitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNamePREFIJOFooters WidthF 	AlignmenttaRightJustifyDynProps EditButtons 	FieldNameNUMEROFooters WidthS 	AlignmenttaCenterDynProps EditButtons 	FieldNameNUMERO_FACTURAFooters Title.CaptionNUMERO FACTURAWidths DynProps EditButtons 	FieldNameTIMBRADOFooters WidthH 	AlignmenttaCenterDisplayFormat
dd/mm/yyyyDynProps EditButtons 	FieldNameINICIOFooters Title.CaptionPERIODO|INICIO 	AlignmenttaCenterDisplayFormat
dd/mm/yyyyDynProps EditButtons 	FieldNameFINFooters Title.CaptionPERIODO|FIN 
Checkboxes	DynProps EditButtons 	FieldNameACTIVOFooters KeyList.Strings10 Width5 DynProps EditButtons 	FieldNameNUMERACION_INICIALFooters Title.CaptionNUMERACION|INICIAL DynProps EditButtons 	FieldNameNUMERACION_FINALFooters Title.CaptionNUMERACION|FINAL   TRowDetailPanelControlEhRowDetailData   TDBNavigatordbnvgr1LeftTopWidth)Height
DataSourcedsTimbradosVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbEditnbPostnbCancel	nbRefresh Flat	TabOrder OnClickdbnvgr1Click  TDataSourcedsTimbradosDataSettblTimbradosLeft� Top�   TIBTabletblTimbradosDatabasedm1.db1Transactiondm1.tra1Active	BufferChunks�CachedUpdates	FieldDefsNameID
Attributes
faRequired DataType
ftLargeint NamePREFIJO
Attributes
faRequired DataTypeftWideStringSize( NameNUMERO
Attributes
faRequired DataTypeftWideStringSize( NameNUMERO_FACTURA
Attributes
faReadonly DataTypeftWideStringSize( NameTIMBRADO
Attributes
faRequired DataTypeftWideStringSize( NameINICIODataType
ftDateTime NameFINDataType
ftDateTime NameACTIVODataType
ftSmallint NameNUMERACION_INICIALDataType
ftLargeint NameNUMERACION_FINALDataType
ftLargeint NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsNamePK_TIMBRADOSFieldsIDOptionsixUnique  NameTIMBRADOS_IDX1FieldsTIMBRADO;NUMERO;PREFIJOOptionsixUnique   	StoreDefs		TableName	TIMBRADOSUniDirectionalLeft� Top�  TLargeintFieldtblTimbradosID	FieldNameID  TIBStringFieldtblTimbradosPREFIJO	FieldNamePREFIJORequired	Size(  TIBStringFieldtblTimbradosNUMERO	FieldNameNUMERORequired	Size(  TIBStringFieldtblTimbradosNUMERO_FACTURA	FieldKindfkInternalCalc	FieldNameNUMERO_FACTURAReadOnly	Size(  TIBStringFieldtblTimbradosTIMBRADO	FieldNameTIMBRADORequired	Size(  TDateTimeFieldtblTimbradosINICIO	FieldNameINICIO  TDateTimeFieldtblTimbradosFIN	FieldNameFIN  TSmallintFieldtblTimbradosACTIVO	FieldNameACTIVO  TLargeintFieldtblTimbradosNUMERACION_INICIAL	FieldNameNUMERACION_INICIAL  TLargeintFieldtblTimbradosNUMERACION_FINAL	FieldNameNUMERACION_FINAL  TDateTimeFieldtblTimbradosFECHA_CREADO	FieldNameFECHA_CREADO  TDateTimeFieldtblTimbradosFECHA_MODIF	FieldNameFECHA_MODIF    