create or alter procedure VISTA_NOTAS_CREDITOS_CLIENTES (
    VAR_RUC type of column CLIENTES.RUC not null,
    VAR_FECHA_DESDE FECHA = current_date,
    VAR_FECHA_HASTA FECHA = current_date)
returns (
    CODIGO bigint,
    FECHA timestamp,
    NUMERO varchar(40),
    CONDICION varchar(4),
    OBSERVACION varchar(40),
    RUC varchar(40),
    RAZON_SOCIAL varchar(40),
    LISTA_PRECIO char(9),
    EXENTAS double precision,
    GRABADAS5 double precision,
    GRABADAS10 double precision)
as
BEGIN
  FOR
    --seleccionar todas las notas credito del cliente
     select
    n.codigo,
    n.fecha,
    n.numero,
    n.condicion,
    n.observacion,
    n.ruc,
    n.razon_social,
    case (n.precio_mayorista)
        when 1 then 'MAYORISTA'
        when 0 then 'MINORISTA'
    end lista_precio,
    nct.exentas,
    nct.grabadas5,
    nct.grabadas10
    from notas_creditos n
    inner join(select * from vista_notas_creditos_totales) nct on nct.notas_creditos_codigo = n.codigo
    WHERE
        --buscar el ruc afectado
        n.ruc = upper(:var_ruc) and
        CAST(N.FECHA AS DATE) BETWEEN CAST(:var_fecha_desde AS DATE) AND CAST(:var_fecha_hasta AS DATE)
    
     
    INTO :CODIGO,
         :FECHA,
         :NUMERO,
         :CONDICION,
         :OBSERVACION,
         :RUC,
         :RAZON_SOCIAL,
         :LISTA_PRECIO,
         :EXENTAS,
         :GRABADAS5,
         :GRABADAS10
  DO
  BEGIN
    SUSPEND;
  END
END
