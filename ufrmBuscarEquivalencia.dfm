�
 TFRMBUSCAREQUIVALENCIAS 0X  TPF0�TfrmBuscarEquivalenciasfrmBuscarEquivalenciasActiveControledtDatoCaptionBuscar equivalenciaClientHeightClientWidth�ExplicitWidth�ExplicitHeight-PixelsPerInch`
TextHeight � TLabellbl1LeftTopWidth$HeightCaptionBuscar:  �TButton
btnAceptarLeft�Top� ExplicitLeft�ExplicitTop�   �	TDBGridEhgrid1Left
Top.Width�Height� AutoFitColWidths	
DataSourcedseqDynProps IndicatorOptions Options	dgEditingdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines ReadOnly	TabOrderTitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameRUCFooters Width�  DynProps EditButtons 	FieldNameRAZON_SOCIALFooters Title.CaptionRAZON SOCIALWidthE   TRowDetailPanelControlEhRowDetailData   �TEditedtDatoLeft3TopWidthTHeightTabOrderTextHintIngrese ruc o nombreOnKeyUpedtDatoKeyUp  �TButton	btnBuscarLeft�TopWidthKHeightCaption&BuscarTabOrderOnClickbtnBuscarClick  �TButtonbtnCancelarLeft�TabOrderExplicitLeft�  TDataSourcedseqDataSetqryEqLeft� Top�   TIBQueryqryEqDatabasedm1.db1Transactiondm1.tra1Active	BufferChunks�CachedUpdates
ParamCheck	SQL.Stringsselect * from equivalencias eCwhere (e.ruc containing :dato) or (e.razon_social containing :dato) Left� Top� 	ParamDataDataType	ftUnknownNamedato	ParamType	ptUnknown DataType	ftUnknownNamedato	ParamType	ptUnknown   TIBStringFieldqryEqRUC	FieldNameRUCOrigin"EQUIVALENCIAS"."RUC"ProviderFlags
pfInUpdate	pfInWherepfInKey Required	Size(  TIBStringFieldqryEqRAZON_SOCIAL	FieldNameRAZON_SOCIALOrigin"EQUIVALENCIAS"."RAZON_SOCIAL"Required	Size(    