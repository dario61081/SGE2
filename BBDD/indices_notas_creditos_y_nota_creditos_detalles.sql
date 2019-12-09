--seleccionar todas las notas credito del cliente
select
n.codigo,
n.fecha,
n.condicion,
n.observacion,
c1.ruc,
c1.razon_social,
case (n.precio_mayorista)
    when 1 then 'MAYORISTA'
    when 0 then 'MINORISTA'
end lista_precio
from notas_creditos n
inner join(select ruc, razon_social from clientes order by ruc ) c1 on c1.ruc = n.ruc ;


--calcular la suma de los subtotales de las notas de credito
select det.notas_creditos_codigo, coalesce(sum(det.exentas),0) exentas, coalesce( sum(det.grabadas5),0) grabadas5, coalesce( sum(det.grabadas10),0) grabadas10 from notas_creditos_detalles det
group by 1
;
