--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 01/02/2021
--@Descripción: Programa main 

prompt introduzca el password de sys
connect sys as sysdba

prompt resetenado proyecto en caso de ser necesario
set serveroutput on

--este bloque anómimo valida la existencia del usuario, si existe lo elimina.
declare
  v_count number(1,0);
begin
  select count(*) into v_count
  from dba_users
  where username = 'OGA_PROY_ADMIN';
  if v_count > 0 then
    dbms_output.put_line(
      'Eliminando usuario oga_proy_admin existente');
    execute immediate 'drop user oga_proy_admin cascade';
  end if;

  select count(*) into v_count
  from dba_users
  where username = 'OGA_PROY_INVITADO';
  if v_count > 0 then
    dbms_output.put_line(
      'Eliminando usuario oga_proy_invitado existente');
    execute immediate 'drop user oga_proy_invitado cascade';
  end if;

  select count(*) into v_count
  from dba_roles
  where role = 'ROL_ADMIN';
  if v_count > 0 then
    dbms_output.put_line('Eliminando rol rol_admin existente');
    execute immediate 'drop role rol_admin';
  end if;

  select count(*) into v_count
  from dba_roles
  where role = 'ROL_INVITADO';
  if v_count > 0 then
    dbms_output.put_line('Eliminando rol rol_invitado existente');
    execute immediate 'drop role rol_invitado';
  end if;
end;
/

prompt ejecutando s-01-usuarios.sql
@s-01-usuarios.sql
prompt conectando como oga_proy_admin
connect oga_proy_admin/octavio

prompt ejecutando s-02-entidades.sql
@s-02-entidades.sql

prompt ejecutando s-03-tablas-temporales.sql
@s-03-tablas-temporales.sql
desc tmp_ubicacion_scooter

prompt ejecutando s-04-tablas-externas.sql
@s-04-tablas-externas.sql

prompt contenido de la tabla externa
select * from proveedor_ext;

prompt ejecutando s-05-secuencias.sql
@s-05-secuencias.sql

prompt ejecutando s-06-indices.sql
@s-06-indices.sql

prompt ejecutando s-07-sinonimos.sql
@s-07-sinonimos.sql

prompt ejecutando s-08-vistas.sql
@s-08-vistas.sql

prompt ejecutando s-09-carga-inicial.sql
@s-09-carga-inicial.sql

prompt ejecutando s-10-consultas.sql
@s-10-consultas.sql

set serveroutput on
prompt creando triggers
@s-11-servicio-trigger.sql
@s-11-auditoria-scooter-trigger.sql

prompt probando triggers
@s-12-prueba-servicio-trigger.sql
@s-12-prueba-auditoria-scooter-trigger.sql


prompt creando funcion s-15-fx-numero-grados.sql
@s-15-fx-numero-grados.sql

prompt creando procedimiento s-13-p-tmp-ubicacion-scooter.sql
@s-13-p-tmp-ubicacion-scooter.sql

prompt probando procedimiento s-13-p-tmp-ubicacion-scooter-prueba.sql
@s-14-p-tmp-ubicacion-scooter-prueba.sql


prompt Creando procedimiento para insertar imagenes en imagen falla s-17-lob-imagen-falla.sql
@s-17-lob-imagen-falla.sql

prompt Validando procedimiento anterior con s-18-lob-imagen-falla-prueba.sql
@s-18-lob-imagen-falla-prueba.sql

