--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 03/02/2021
--@Descripción: validacion del trigger de servicio

declare
  error_insertar exception;
  v_count numeric(1,0);
  v_servicio_id numeric(10,0):= servicio_sec.nextval;
begin
  
  dbms_output.put_line('Insertando registro en servicio');
  insert into servicio(servicio_id,tipo,scooter_id,usuario_id)
  values (v_servicio_id,'V',17,100);
  dbms_output.put_line('Insertando registro en servicio_viaje');
  insert into servicio_viaje(servicio_id,fecha_inicio,folio)
  values(v_servicio_id,sysdate,'7896541230147');

  dbms_output.put_line('Consultando status del scooter en ubicacion');
  select count(*) into v_count
  from ubicacion
  where scooter_id = 17
  and status_scooter_id = 3;
  
  if v_count = 1 then
    dbms_output.put_line('Insercion de dato ok');
  else 
  	raise error_insertar;
  end if;
  
  dbms_output.put_line('Intentando eliminar el registro');
  delete from servicio 
  where servicio_id = v_servicio_id ; 

  exception
  	when error_insertar then
  	dbms_output.put_line('Fallo al insertar y modificar el status en ubicacion');
    when others then
    dbms_output.put_line('La eliminacion fallo, comportamiento esperado OK');
end;
/