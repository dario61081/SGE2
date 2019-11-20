--mover las ventas detalles
insert into ventas_hist
select * from ventas v where cast(v.fecha as date) between cast(:fecha_inicio as date) and cast(:fecha_fin as date) order by v.id, v.fecha_creado;

insert into ventas_detalles_hist
select det.* from ventas_detalles det
inner join ventas v on v.id = det.ventas_id
where cast(v.fecha as date) between cast(:fecha_inicio as date) and cast(:fecha_fin as date);


--borrar las ventas anteriores
delete from ventas v where cast(v.fecha as date) between cast(:fecha_inicio as date) and cast(:fecha_fin as date) order by v.id, v.fecha_creado;

execute block as
declare variable desde ordinal = 3379;
declare variable hasta ordinal = 8810;
begin


end

select * from ventas_hist where id = 8111;

--borrar historico anterior
select distinct v.id from ventas_detalles det inner join ventas v on v.id = det.ventas_id
where cast(v.fecha as date) between cast(:fecha_inicio as date) and cast(:fecha_fin as date);
