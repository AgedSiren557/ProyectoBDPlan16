--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 03/02/2021
--@Descripción: Programa que realiza una serie de consultas

prompt revisando todos los proveedores internos y externos
select pe.NOMBRE,pe.NUMERO,pe.TELEFONO
from proveedor_ext pe
union
select q1.nombre,q1.numero,q1.telefono
from (
  select nombre,numero,telefono 
  from proveedor 
natural join telefono_proveedor
) q1;

--todos los scooters en espera mostrando la descripcion del estatus y el numero de serie del scooter
prompt mostrando la ubicacion de los scooters en espera, con la descripcion de su estado y su numero de serie
select u.ubicacion_id,u.FECHA,u.latitud,u.longitud,u.fecha_status,
  s.CLAVE,s.DESCRIPCION, sc.NUM_SERIE as scooter_num_serie
from status s
join xx_ubicacion u
on s.status_scooter_id=u.status_scooter_id
join scooter sc on sc.scooter_id=u.scooter_id
where u.STATUS_SCOOTER_ID=2;

prompt mostrar todos los usuarios con una tarjeta registrada, en caso de tener una tarjeta de prepago agregada, tambien mostrarla
select u.usuario_id,u.nombre,u.ap_paterno,u.ap_materno,u.email,
  tu.NUM_TARJETA,tp.fecha_registro,tp.importe
from usuario u
join tarjeta_usuario tu
on u.usuario_id = tu.usuario_id
left join TARJETA_PREPAGO tp
on u.usuario_id=tp.usuario_id;

prompt mostrando todos los usuarios que contrataron el servicio de viaje y la informacion al respecto del viaje
select u.nombre,u.ap_paterno,u.ap_materno,vs.tipo,
  vs.FECHA_INICIO_VIAJE,vs.FECHA_FIN_VIAJE,vs.folio
from v_servicio vs,usuario u
where u.usuario_id=vs.usuario_id
and tipo = 'V';


prompt mostrando la locacion promedio donde se encuentran los scooter segun su estado
prompt si solo se tiene un dato para trabajar, se omite el calculo de este promedio

select count(*)as datos_totales,round(avg(u.latitud),4) as latitud_promedio,
  round(avg(u.longitud),4) as longitud_promedio, 
  s.clave,s.descripcion
from ubicacion u
natural join status s
group by s.clave,s.descripcion
having count(*)>1;
