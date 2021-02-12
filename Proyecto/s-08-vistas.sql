--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 02/02/2021
--@Descripción: Script que genera 3 vistas diferentes

prompt creando primer vista v_usuario
create or replace view v_usuario(
  usuario_id,nombre,ap_paterno,ap_materno,email,puntos
) as select usuario_id,nombre,ap_paterno,ap_materno,email,puntos
from usuario;

prompt creando primer vista v_servicio
create or replace view v_servicio(
  servicio_id,tipo,scooter_id,usuario_id,fecha_inicio_viaje,
  fecha_fin_viaje,folio,fecha_inicio_renta,dias_renta,domicilio,
  carga_final,clabe,banco_id
) as select s.servicio_id,s.tipo,s.scooter_id,s.usuario_id,
  sv.fecha_inicio,sv.fecha_fin,sv.folio,
  sr.fecha_inicio,sr.dias_renta,sr.domicilio,
  sc.carga_final,sc.clabe,sc.banco_id
from servicio s,servicio_viaje sv,servicio_renta sr,servicio_recarga sc
where s.servicio_id=sc.servicio_id(+)
and s.servicio_id=sv.servicio_id(+)
and s.servicio_id=sr.servicio_id(+);


prompt creando primer vista v_zona_scooter
create or replace view v_zona_scooter(
  scooter_id,codigo,num_serie,zona_id,nombre,definicion
) as select s.scooter_id,s.codigo,s.num_serie,z.zona_id,
  z.nombre,z.definicion
from scooter s,zona_scooter zs,zona z
where s.scooter_id=zs.scooter_id
and z.zona_id=zs.zona_id;