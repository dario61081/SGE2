�
 TFRMNOTACREDITOMANUAL 0�  TPF0�TfrmNotaCreditoManualfrmNotaCreditoManualCaption    ClientHeight�ClientWidth2OnCreate
FormCreateExplicitWidthBExplicitHeightPixelsPerInch`
TextHeight �	TDxHeaderheaderCabeceraWidth2TituloNota de credito	SubtituloGenerar nota manualmenteExplicitWidth2 TButtonbtnImprimirLeft�TopWidth`HeightActionactImprimirNotaTabOrder  TButtonbtnNuevaNotaLeft� TopWidthmHeightActionactNuevaNotaCreditoTabOrder   TButtonbtnDescartarNotaLeft!TopWidthQHeightActionactDescartarNotaTabOrder   	TGroupBoxgrp1AlignWithMargins	LeftTop-Width,HeightoAlignalTopTabOrder TLabellbl1LeftTopWidth!HeightCaptionFECHA  TLabellbl2Left� TopWidthHeightCaptionRUCFocusControldbedtRUC  TLabellbl3Left� TopWidthNHeightCaptionRAZON SOCIAL FocusControldbedtRAZON_SOCIAL  TLabellbl8LeftTop9WidthHHeightCaptionOBSERVACIONFocusControldbedtOBSERVACION  TLabellbl4Left+TopWidth(HeightCaptionESTADOFocusControldbedtESTADO  TBevelbvl1LeftTopWidthHeight^Shape
bsLeftLine  TJvDBDateEditedtFECHALeftTopWidthwHeight	DataFieldFECHA
DataSource
dsCabeceraShowNullDateTabOrder   TDBEditdbedtRUCLeft� TopWidthfHeightCharCaseecUpperCaseColor��� 	DataFieldRUC
DataSource
dsCabeceraTabOrder  TDBEditdbedtRAZON_SOCIALLeft� TopWidthHeightCharCaseecUpperCaseColor��� 	DataFieldRAZON_SOCIAL
DataSource
dsCabeceraTabOrder  TDBEditdbedtOBSERVACIONLeftTopLWidth� HeightCharCaseecUpperCaseColor��� 	DataFieldOBSERVACION
DataSource
dsCabeceraTabOrder  TDBNavigatordbnvgr1Left;TopJWidth� Height
DataSource
dsCabeceraFlat	TabOrder  TDBEditdbedtESTADOLeft+TopWidth8Height	DataFieldESTADO
DataSource
dsCabeceraReadOnly	TabOrder   TJvStatusBarstatus1Left Top�Width2HeightPanelsTextF2: ClientesWidth2    	TGroupBoxgrp2AlignWithMargins	LeftTop� Width,Height#AlignalClientCaptionDetalleTabOrder 	TDBGridEhgrid1AlignWithMargins	Left%TopWidthHeightAlignalClientAutoFitColWidths	
DataSource	dsDetalleDynProps Flat	FooterRowCountFooterParams.ColorclWindowEmptyDataInfo.Active	EmptyDataInfo.Text&No hay registros asignados a esta notaTabOrderTitleParams.MultiTitle	OnKeyUp
grid1KeyUpColumnsDisplayFormat0,.000DynProps EditButtons 	FieldNameCANTIDADFooters  DynProps EditButtons 	FieldNamePRODUCTOS_IDFooters Title.CaptionPRODUCTOS|IDWidth2 DynProps EditButtons 	FieldNamePRODUCTOS_DESCRIPCIONFooters Title.CaptionPRODUCTOS|DESCRIPCION DynProps EditButtons 	FieldNameLOTEFooters WidthT DynProps EditButtons 	FieldNameOBSERVACIONFooters Width,   TRowDetailPanelControlEhRowDetailData   TDBNavigatordbnvgr2AlignWithMargins	LeftTopWidthHeight
DataSource	dsDetalleAlignalLeftFlat	KinddbnVerticalTabOrder    TIBTabletblCabeceraDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameEMPRESAS_CODIGODataType
ftLargeint NameVENTAS_CODIGODataType
ftLargeint NameFECHADataType
ftDateTime NameRUCDataTypeftWideStringSize( NameRAZON_SOCIALDataTypeftWideStringSize( Name	CONDICIONDataTypeftWideStringSize Name	DIRECCIONDataTypeftWideStringSize( NameTELEFONODataTypeftWideStringSize( NameNOTA_REMISIONDataTypeftWideStringSize( NameOBSERVACIONDataTypeftWideStringSize( NamePRECIO_MAYORISTADataType
ftSmallint NameESTADODataTypeftWideStringSize NameNUMERODataTypeftWideStringSize( NameTIMBRADO_NUMERODataTypeftWideStringSize( NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime  	IndexDefsNamePK_NOTAS_CREDITOSFieldsCODIGOOptionsixUnique  NameFK_NOTAS_CREDITOS_1FieldsEMPRESAS_CODIGO  	StoreDefs		TableNameNOTAS_CREDITOSUniDirectionalLeft�Top7 TLargeintFieldtblCabeceraCODIGO	FieldNameCODIGO  TDateTimeFieldtblCabeceraFECHA	FieldNameFECHA  TIBStringFieldtblCabeceraRUC	FieldNameRUCSize(  TIBStringFieldtblCabeceraRAZON_SOCIAL	FieldNameRAZON_SOCIALSize(  TIBStringFieldtblCabeceraESTADO	FieldNameESTADOSize  TIBStringFieldtblCabeceraOBSERVACION	FieldNameOBSERVACIONSize(   TDataSource	dsDetalleDataSettblDetallesLefthTop	  TIBTabletblDetallesDatabasedm1.db1Transactiondm1.tra1OnNewRecordtblDetallesNewRecordBufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameNOTAS_CREDITOS_CODIGO
Attributes
faRequired DataType
ftLargeint NameCANTIDADDataTypeftFloat NamePRODUCTOS_IDDataType
ftLargeint NamePRODUCTOS_CODIGODataTypeftWideStringSize( NamePRODUCTOS_DESCRIPCIONDataTypeftWideStringSize( NamePRECIO_UNITARIODataTypeftFloat NameEXENTASDataTypeftFloat Name	GRABADAS5DataTypeftFloat Name
GRABADAS10DataTypeftFloat NameOBSERVACIONDataTypeftWideStringSize( NameLOTEDataTypeftWideStringSize(  	IndexDefsNamePK_NOTAS_CREDITOS_DETALLESFieldsCODIGOOptionsixUnique  NameFK_NOTAS_CREDITOS_DETALLES_1FieldsNOTAS_CREDITOS_CODIGO NameFK_NOTAS_CREDITOS_DETALLES_2FieldsPRODUCTOS_ID  IndexFieldNamesNOTAS_CREDITOS_CODIGOMasterFieldsCODIGOMasterSource
dsCabecera	StoreDefs		TableNameNOTAS_CREDITOS_DETALLESUniDirectionalLeft6Top	 TFloatFieldtblDetallesCANTIDAD	FieldNameCANTIDAD  TLargeintFieldtblDetallesPRODUCTOS_ID	FieldNamePRODUCTOS_ID  TIBStringFieldtblDetallesPRODUCTOS_CODIGO	FieldNamePRODUCTOS_CODIGOSize(  TIBStringField tblDetallesPRODUCTOS_DESCRIPCION	FieldNamePRODUCTOS_DESCRIPCIONSize(  TFloatFieldtblDetallesPRECIO_UNITARIO	FieldNamePRECIO_UNITARIO  TFloatFieldtblDetallesEXENTAS	FieldNameEXENTAS  TFloatFieldtblDetallesGRABADAS5	FieldName	GRABADAS5  TFloatFieldtblDetallesGRABADAS10	FieldName
GRABADAS10  TIBStringFieldtblDetallesOBSERVACION	FieldNameOBSERVACIONSize(  TIBStringFieldtblDetallesLOTE	FieldNameLOTESize(  TLargeintFieldtblDetallesCODIGO	FieldNameCODIGO  TLargeintField tblDetallesNOTAS_CREDITOS_CODIGO	FieldNameNOTAS_CREDITOS_CODIGORequired	   TDataSource
dsCabeceraDataSettblCabeceraLeft�Topi  TDataSourceds1DataSettblCabeceraLeft�Top	  TIBQueryqryProductosBufferChunks�CachedUpdates
ParamCheck	Left�Top7  TApplicationEvents
appevents1Left[TopP  TActionManageractmgr1Left$Topn	StyleNamePlatform Default TActionactNuevaNotaCreditoCaption
Nueva nota	OnExecuteactNuevaNotaCreditoExecute  TActionactImprimirNotaCaptionImprimir  TActionactDescartarNotaCaption	Descartar	OnExecuteactDescartarNotaExecute  TActionactBuscarClienteCaptionBuscar clienteShortCutq	OnExecuteactBuscarClienteExecute    