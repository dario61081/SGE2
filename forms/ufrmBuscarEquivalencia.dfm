�
 TFRMBUSCAREQUIVALENCIAS 0�  TPF0TfrmBuscarEquivalenciasfrmBuscarEquivalenciasLeft Top ActiveControledtDatoClientHeight�ClientWidth�Color	clBtnFaceConstraints.MinHeight-Constraints.MinWidth�Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight TLabellbl2LeftTop7Width0HeightCaptionB   Ingrese la razón social o numero de ruc para listar coincidencias  	TDBGridEhgrid1LeftTopeWidth�HeightHAutoFitColWidths	
DataSourcedseqDynProps Flat	IndicatorOptions Options	dgEditingdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines ReadOnly	TabOrderTitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameRUCFooters Width�  DynProps EditButtons 	FieldNameRAZON_SOCIALFooters Title.CaptionRAZON SOCIALWidthE   TRowDetailPanelControlEhRowDetailData   TEditedtDatoLeftTopJWidth�HeightTabOrder TextHintIngrese ruc o nombreOnKeyUpedtDatoKeyUp  TButton	btnBuscarLeft�TopJWidthKHeightCaption&BuscarTabOrderOnClickbtnBuscarClick  TDataSourcedseqDataSetqryEqLeft� Top�   TIBQueryqryEqDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Stringsselect * from equivalencias eCwhere (e.ruc containing :dato) or (e.razon_social containing :dato) Left� Top� 	ParamDataDataType	ftUnknownNamedato	ParamType	ptUnknown DataType	ftUnknownNamedato	ParamType	ptUnknown   TIBStringFieldqryEqRUC	FieldNameRUCOrigin"EQUIVALENCIAS"."RUC"ProviderFlags
pfInUpdate	pfInWherepfInKey Required	Size(  TIBStringFieldqryEqRAZON_SOCIAL	FieldNameRAZON_SOCIALOrigin"EQUIVALENCIAS"."RAZON_SOCIAL"Required	Size(    