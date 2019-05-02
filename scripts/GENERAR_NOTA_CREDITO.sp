create or alter procedure GENERAR_NOTA_CREDITO (
    CODIGO type of column VENTAS.ID,
    OBSERVACION TEXTO)
as
declare variable NOTA_CODIGO ORDINAL;
begin

  /* volcar todos los datos a notas_creditos */
  insert into NOTAS_CREDITOS (CODIGO, EMPRESAS_CODIGO, VENTAS_CODIGO, FECHA, RUC, RAZON_SOCIAL, CONDICION, DIRECCION,
                              TELEFONO, NOTA_REMISION, OBSERVACION, PRECIO_MAYORISTA, ESTADO, NUMERO, TIMBRADO_NUMERO,
                              FECHA_CREADO, FECHA_MODIF)
  select null, 1, id, FECHA, RUC, RAZON_SOCIAL, CONDICION, DIRECCION, TELEFONO, NOTA_REMISION,
         :observacion, PRECIO_MAYORISTA, ESTADO, NUMERO, TIMBRADO_NUMERO, FECHA_CREADO, FECHA_MODIF
  from ventas
  where ventas.id = :codigo
  returning codigo into :nota_codigo;

  --volcar el detalle a notas_creditos_detalles
  insert into NOTAS_CREDITOS_DETALLES (CODIGO, NOTAS_CREDITOS_CODIGO, CANTIDAD, PRODUCTOS_ID, PRODUCTOS_CODIGO,
                                       PRODUCTOS_DESCRIPCION, PRECIO_UNITARIO, EXENTAS, GRABADAS5, GRABADAS10,
                                       OBSERVACION, LOTE)
  select null, :nota_codigo, CANTIDAD, PRODUCTOS_ID, PRODUCTOS_CODIGO, PRODUCTOS_DESCRIPCION, PRECIO_UNITARIO,
         EXENTAS, GRABADAS5, GRABADAS10, :observacion, LOTE
  from ventas_detalles where ventas_detalles.ventas_id = :codigo;

  --actualizar el estado de la factura
  update ventas set ventas.estado = 'EMIT' where ventas.id = :codigo;


end
