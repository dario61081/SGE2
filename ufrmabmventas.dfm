�
 TFRMABMVENTAS 0  TPF0�TfrmabmVentasfrmabmVentasCaption   Gestión de ventasClientHeightClientWidthKOnCreate
FormCreateExplicitWidth[ExplicitHeightBPixelsPerInch`
TextHeight 	TDBGridEhgrid1Left Top.WidthKHeight�AlignalClientAutoFitColWidths	BorderStylebsNone
DataSourcedsVentasDynProps FooterRowCountFooterParams.ColorclCreamEmptyDataInfo.Active	EmptyDataInfo.TextSin productos	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghRowHighlightdghDialogFinddghColumnResizedghColumnMovedghExtendVertLines SearchPanel.Enabled	STFilter.Local	STFilter.Visible	SumList.Active	TabOrder TitleParams.MultiTitle	ColumnsDynProps EditButtons 	FieldNameIDFooters VisibleWidth; 	AlignmenttaCenterDynProps EditButtons 	FieldNameESTADOFooters MaxWidth2MinWidth2Width2 	AlignmenttaCenterDisplayFormatdd/mm/yyyy HH:nn:ssDynProps EditButtons 	FieldNameFECHAFooters MaxWidthxMinWidthxWidthx 	AlignmenttaRightJustifyDynProps EditButtons 	FieldNameRUCFooters MaxWidthPMinWidthPWidthP DynProps EditButtons 	FieldNameRAZON_SOCIALFooters Title.CaptionRAZON SOCIALWidth�  	AlignmenttaCenterDynProps EditButtons 	FieldName	CONDICIONFooters MaxWidthPMinWidthPWidthP DynProps EditButtons 	FieldName	DIRECCIONFooters Visible DynProps EditButtons 	FieldNameTELEFONOFooters Visible DynProps EditButtons 	FieldNameNOTA_REMISIONFooters Visible DynProps EditButtons 	FieldNameOBSERVACIONFooters Visible DynProps EditButtons 	FieldNamePRECIO_MAYORISTAFooters Title.CaptionPRECIO MAYORISTAWidthe DynProps EditButtons 	FieldNameNUMEROFooters Width�    TRowDetailPanelControlEhRowDetailData   	TDxHeaderheader1Left Top WidthKHeight.AlignalTopTituloGestin de Ventas	Subtitulo4vista de ventas facturadas registradas en el sistema  TIBQuery	qryVentasDatabasedm1.db1Transactiondm1.tra1BufferChunks�CachedUpdates
ParamCheck	SQL.Strings'select * from ventas order by id, fecha Left#Top�  TLargeintFieldqryVentasID	FieldNameIDOrigin"VENTAS"."ID"ProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TDateTimeFieldqryVentasFECHA	FieldNameFECHAOrigin"VENTAS"."FECHA"  TIBStringFieldqryVentasRUC	FieldNameRUCOrigin"VENTAS"."RUC"Size(  TIBStringFieldqryVentasRAZON_SOCIAL	FieldNameRAZON_SOCIALOrigin"VENTAS"."RAZON_SOCIAL"Size(  TIBStringFieldqryVentasCONDICION	FieldName	CONDICIONOrigin"VENTAS"."CONDICION"Size  TIBStringFieldqryVentasDIRECCION	FieldName	DIRECCIONOrigin"VENTAS"."DIRECCION"Size(  TIBStringFieldqryVentasTELEFONO	FieldNameTELEFONOOrigin"VENTAS"."TELEFONO"Size(  TIBStringFieldqryVentasNOTA_REMISION	FieldNameNOTA_REMISIONOrigin"VENTAS"."NOTA_REMISION"Size(  TIBStringFieldqryVentasOBSERVACION	FieldNameOBSERVACIONOrigin"VENTAS"."OBSERVACION"Size(  TSmallintFieldqryVentasPRECIO_MAYORISTA	FieldNamePRECIO_MAYORISTAOrigin"VENTAS"."PRECIO_MAYORISTA"  TIBStringFieldqryVentasESTADO	FieldNameESTADOOrigin"VENTAS"."ESTADO"Size  TIBStringFieldqryVentasNUMERO	FieldNameNUMEROOrigin"VENTAS"."NUMERO"Size(   TDataSourcedsVentasDataSet	qryVentasLeft#Top�   TActionManageractmgr1LeftUTop� 	StyleNamePlatform Default   