--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 03/02/2021
--@Descripción: validador para el trigger de auditoria_scooter

declare 
  
  v_usuario varchar2(40);
  v_tipo_evento char(1);
  v_scooter_id numeric(10,0);
  v_fecha_cambio date;
  v_existe numeric(1,0);

begin 

  dbms_output.put_line('Insertando registro sobre scooter');
  insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,
    num_serie,marca,proveedor_id) 
  values(1000,'ABCDE12345','A1B2C3D4E5F66G7H8I',750.25,
  	'131211109876543210','LOTUS MOTORS',11);

  dbms_output.put_line('Confirmando insercion de auditoria sobre auditoria_scooter');
  
  select count(*) 
  into v_existe 
  from auditoria_scooter 
  where scooter_id=1000
  and tipo_evento= 'I';

  if v_existe<>0 then
    dbms_output.put_line('Insercion realizada, comprobando datos del registro');
    select usuario,tipo_evento,scooter_id,fecha_cambio
    into v_usuario,v_tipo_evento,v_scooter_id,v_fecha_cambio
    from auditoria_scooter 
    where scooter_id=1000
    and tipo_evento = 'I';

    if v_usuario = 'OGA_PROY_ADMIN' then
      dbms_output.put_line('valor para usuario correcto');
    else
      raise_application_error(-20050,
      	'El valor del campo usuario es incorecto, se obtuvo'
        ||v_usuario
        ||' se esperaba OGA_PROY_ADMIN ');
    end if;

    dbms_output.put_line('campo tipo_evento correcto');
    dbms_output.put_line('Campo scooter_id correcto');

    if to_char(v_fecha_cambio,'dd/mm/yyyy') = 
      to_char(sysdate,'dd/mm/yyyy')  then
      dbms_output.put_line('valor para fecha_cambio correcto');
    else
      raise_application_error(-20050,'El valor del campo usuario es incoorecto, se obtuvo'
        ||to_char(v_fecha_cambio,'dd/mm/yyyy')
        ||' se esperaba '
        ||to_char(sysdate,'dd/mm/yyyy'));
    end if;

  else 
    raise_application_error(-20050,'No se encontro el registro en auditoria_scooter');
  end if;
  dbms_output.put_line('Caso incersion para auditoria_scooter OK');


  dbms_output.put_line('Borrando scooter');

  delete from scooter where scooter_id = 1000;

  select count(*) into v_existe 
  from auditoria_scooter 
  where scooter_id=1000
  and tipo_evento= 'D';

  if v_existe<>0 then
    dbms_output.put_line('Registro eliminado de scooter, comprobando datos del registro en auditoria_scooter');
    select usuario,tipo_evento,scooter_id, fecha_cambio
    into v_usuario,v_tipo_evento,v_scooter_id,v_fecha_cambio
    from auditoria_scooter 
    where scooter_id=1000
    and tipo_evento= 'D';

    if v_usuario = 'OGA_PROY_ADMIN' then
      dbms_output.put_line('valor para usuario correcto');
    else
      raise_application_error(-20050,
      	'El valor del campo usuario es incorecto, se obtuvo'
        ||v_usuario
        ||' se esperaba OGA_PROY_ADMIN ');
    end if;

    dbms_output.put_line('campo tipo_evento correcto');
    dbms_output.put_line('Campo scooter_id correcto');

    if to_char(v_fecha_cambio,'dd/mm/yyyy') = 
      to_char(sysdate,'dd/mm/yyyy')  then
      dbms_output.put_line('valor para fecha_cambio correcto');
    else
      raise_application_error(-20050,
      	'El valor del campo usuario es incoorecto, se obtuvo'
        ||to_char(v_fecha_cambio,'dd/mm/yyyy')
        ||' se esperaba '
        ||to_char(sysdate,'dd/mm/yyyy'));
    end if;

  else 
    raise_application_error(-20050,'No se encontro el registro en auditoria_scooter');
  end if;

  dbms_output.put_line('Caso eliminacion para auditoria_scooter OK');

end;
/

show errors