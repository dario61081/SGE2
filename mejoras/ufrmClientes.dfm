�
 TFRMCLIENTES 0�  TPF0TfrmClientesfrmClientesLeft Top BorderStylebsDialogCaptionClientesClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPositionpoOwnerFormCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelpnl1Left Top WidthHeight3AlignalTop
BevelOuterbvNoneCaptionpnl1ShowCaptionTabOrder ExplicitWidth� 	TDxHeaderheader1Left Top WidthHeight.AlignalTopTituloClientesTituloColorclBlack	SubtituloRegistro de clientesSubtituloColorclBlackExplicitWidth� TButtonbtnSeleccionarAlignWithMargins	LefttTopWidth� Height(AlignalRightCaptionSeleccionar clienteTabOrder OnClickbtnSeleccionarClickExplicitLeft�    TJvPageControlpage1AlignWithMargins	LeftTop6WidthHeight�
ActivePage	tsClienteAlignalClientTabOrderExplicitWidth� 	TTabSheet	tsClienteCaptionListadoExplicitWidth� TJvSplitterjvspltr1Left Top� WidthHeightCursorcrVSplitAlignalBottomExplicitTopExplicitWidth�   	TDBGridEhgridClientesAlignWithMargins	LeftTop!WidthHeight� AlignalClient
DataSource
dsClientesDynProps EditActionsgeaCutEh	geaCopyEh
geaPasteEhgeaDeleteEhgeaSelectAllEh 
FixedColorclWindowFlat	FooterRowCountFooterParams.ColorclSilver
FrozenColsIndicatorOptionsgioShowRowIndicatorEhgioShowRecNoEh EmptyDataInfo.Active	EmptyDataInfo.Text(No hay datos)Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghShowRecNodghColumnResizedghColumnMovedghExtendVertLines RowDetailPanel.Color	clBtnFaceSearchPanel.Enabled	SearchPanel.FilterOnTyping	SumList.Active	TabOrderTitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameRUCFooters MaxWidthdMinWidthdWidthd DynProps EditButtons 	FieldNameRAZON_SOCIALFooters Title.CaptionRAZON SOCIALWidth�    TRowDetailPanelControlEhRowDetailData   TJvPageControlpage2Left Top� WidthHeight� 
ActivePagetsDireccionesAlignalBottomTabOrderExplicitWidth� 	TTabSheettsDireccionesCaptionDirecciones o ubicacionesExplicitWidth� TPanelpnl3Left Top Width	HeightAlignalTopTabOrder ExplicitWidth� TDBNavigatordbnvgr2AlignWithMargins	LeftTopWidth� Height
DataSourcedsDireccionesAlignalLeftFlat	TabOrder    	TDBGridEhgridDireccionesLeft TopWidth	HeightsAlignalClientAutoFitColWidths	
DataSourcedsDireccionesDynProps Options	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrderTitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameSUCURSALFooters Width DynProps EditButtons 	FieldName	DIRECCIONFooters Width�  DynProps EditButtons 	FieldNameCIUDADFooters Width~ DynProps EditButtons 	FieldNameBARRIOFooters WidthO DynProps EditButtons 	FieldNameTELEFONOFooters Width~   TRowDetailPanelControlEhRowDetailData     TPanelpnl2Left Top WidthHeightAlignalTopTabOrder ExplicitWidth� TDBNavigatordbnvgr1AlignWithMargins	LeftTopWidth� Height
DataSource
dsClientesAlignalLeftFlat	TabOrder      TDataSource
dsClientesDataSettblClientesLeft�Top�   TIBTabletblClientesDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates	FieldDefsNameCODIGODataType
ftLargeint NameRUC
Attributes
faRequired DataTypeftWideStringSize( NameRAZON_SOCIAL
Attributes
faRequired DataTypeftWideStringSize( Name	DIRECCIONDataTypeftWideStringSize( NameFECHA_CREADODataType
ftDateTime NameFECHA_MODIFDataType
ftDateTime NameCONDICION_PREDEFINIDODataTypeftWideStringSize  	IndexDefsNamePK_CLIENTESFieldsRUCOptionsixUnique  NameCLIENTES_IDX2FieldsCONDICION_PREDEFINIDO NameUNQ1_CLIENTESFieldsCODIGOOptionsixUnique   	StoreDefs		TableNameCLIENTESUniDirectionalLeft�Top�  TLargeintFieldtblClientesCODIGO	FieldNameCODIGO  TIBStringFieldtblClientesRUC	FieldNameRUCRequired	Size(  TIBStringFieldtblClientesRAZON_SOCIAL	FieldNameRAZON_SOCIALRequired	Size(  TIBStringFieldtblClientesDIRECCION	FieldName	DIRECCIONSize(  TDateTimeFieldtblClientesFECHA_CREADO	FieldNameFECHA_CREADO  TDateTimeFieldtblClientesFECHA_MODIF	FieldNameFECHA_MODIF  TIBStringField tblClientesCONDICION_PREDEFINIDO	FieldNameCONDICION_PREDEFINIDOSize   TIBTabletblDireccionesDatabasedm1.db1Transactiondm1.tra1BeforeInserttblDireccionesBeforeInsertBufferChunks�CachedUpdates	FieldDefsNameCODIGO
Attributes
faRequired DataType
ftLargeint NameCLIENTES_CODIGODataType
ftLargeint NameSUCURSALDataTypeftStringSize( Name	DIRECCIONDataTypeftStringSize( NameCIUDADDataTypeftStringSize( NameBARRIODataTypeftStringSize( NameTELEFONODataTypeftStringSize(  	IndexDefsNamePK_CLIENTES_DIRECCIONESFieldsCODIGOOptionsixUnique  NameFK_CLIENTES_DIRECCIONES_1FieldsCLIENTES_CODIGO  IndexFieldNamesCLIENTES_CODIGOMasterFieldsCODIGOMasterSource
dsClientes	StoreDefs		TableNameCLIENTES_DIRECCIONESUniDirectionalLeftUTopt TLargeintFieldtblDireccionesCODIGOAutoGenerateValue	arAutoInc	FieldNameCODIGO  TLargeintFieldtblDireccionesCLIENTES_CODIGO	FieldNameCLIENTES_CODIGO  TIBStringFieldtblDireccionesDIRECCION	FieldName	DIRECCIONSize(  TIBStringFieldtblDireccionesSUCURSAL	FieldNameSUCURSALSize(  TIBStringFieldtblDireccionesCIUDAD	FieldNameCIUDADSize(  TIBStringFieldtblDireccionesBARRIO	FieldNameBARRIOSize(  TIBStringFieldtblDireccionesTELEFONO	FieldNameTELEFONOSize(   TDataSourcedsDireccionesDataSettblDireccionesLeftTopw   