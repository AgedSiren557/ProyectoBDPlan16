--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 02/02/2021
--@Descripción: creacion de sinonimos en admin y usuario
prompt creando sinonimos
create or replace public synonym status 
  for oga_proy_admin.status_scooter;
create or replace public synonym historial
  for oga_proy_admin.historial_status_ubicacion;
create or replace public synonym ubicacion
  for oga_proy_admin.ubicacion;

prompt concediendo permiso de lectura a las tablas que se les crearon sinonimos
grant select on status_scooter to oga_proy_invitado;
grant select on historial_status_ubicacion to oga_proy_invitado;
grant select on ubicacion to oga_proy_invitado;

prompt concediendo permisode crear sinonimos a usuario invitado
grant create synonym to oga_proy_invitado;

prompt concediendo permiso de lectura a 3 tablas que el usuario invitado usara
prompt para crear 3 sinonimos provados
grant select on scooter to oga_proy_invitado;
grant select on banco to oga_proy_invitado;
grant select on proveedor to oga_proy_invitado;

prompt conectando como usuario invitado
connect oga_proy_invitado/octavio
prompt leyendo sinonimos publicos
/*
select * from status;
select * from historial;
select * from ubicacion;*/

prompt creando sinonimos privados

create or replace synonym scooter for oga_proy_admin.scooter;
create or replace synonym proveedor for oga_proy_admin.proveedor;
create or replace synonym banco for oga_proy_admin.banco;
/*
select * from scooter;
select * from proveedor;
select * from banco;
*/

connect oga_proy_admin/octavio

prompt creando tablas para software
create or replace synonym XX_HISTORIAL_STATUS_UBICACION 
  for oga_proy_admin.historial_status_ubicacion;
create or replace synonym XX_STATUS_SCOOTER 
  for oga_proy_admin.status_scooter;
create or replace synonym XX_UBICACION 
  for oga_proy_admin.ubicacion;
create or replace synonym XX_IMAGEN_FALLA 
  for oga_proy_admin.imagen_falla;
create or replace synonym XX_TELEFONO_PROOVEDOR 
  for oga_proy_admin.telefono_proveedor;
create or replace synonym XX_REPORTE_FALLA 
  for oga_proy_admin.reporte_falla;
create or replace synonym XX_SCOOTER 
  for oga_proy_admin.scooter;
create or replace synonym XX_PROVEEDOR 
  for oga_proy_admin.proveedor;
create or replace synonym XX_ZONA_SCOOTER 
  for oga_proy_admin.zona_scooter;
create or replace synonym XX_USUARIO
  for oga_proy_admin.usuario;
create or replace synonym XX_TARJETA_PREPAGO
  for oga_proy_admin.tarjeta_prepago;
create or replace synonym XX_SERVICIO 
  for oga_proy_admin.servicio;
create or replace synonym XX_ZONA
  for oga_proy_admin.zona;
create or replace synonym XX_TARJETA_USUARIO
  for oga_proy_admin.tarjeta_usuario;
create or replace synonym XX_SERVICIO_VIAJE
  for oga_proy_admin.servicio_viaje;
create or replace synonym XX_SERVICIO_RENTA
  for oga_proy_admin.servicio_renta;
create or replace synonym XX_SERVICIO_RECARGA
  for oga_proy_admin.servicio_recarga;
create or replace synonym XX_BANCO 
  for oga_proy_admin.banco;