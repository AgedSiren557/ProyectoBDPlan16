--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 04/02/2021
--@Descripción: rueba del procedimiento: s-13-p-tmp-ubicacion-scooter


declare
  v_scooter_id number(10,0);
  v_num_serie_scooter varchar2(18);
  v_ubicacion_id number(10,0);
  v_latitud number(6,4);
  v_latitud_grados varchar2(13);
  v_longitud number(6,4);
  v_longitud_grados varchar2(13);
  v_status varchar2(20);
  v_fecha date;
  v_existe numeric(1);
begin

  dbms_output.put_line('Creando datos de prueba');
  insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,
  	num_serie,marca,proveedor_id)
  values(1001,'ZXCVB01236','QWERTYUIOP12345678',777.77,'012345678910111213',
    'LOTUS MOTORS',11);
  insert into ubicacion(ubicacion_id,latitud,longitud,fecha,
  	fecha_status,scooter_id,status_scooter_id)
  values(1001,19.1417,-99.1717,sysdate,sysdate,1001,7);

  dbms_output.put_line('Ejecutando procedimiento');
  p_llena_tmp_ubicacion_scooter(sysdate-.5,1);


  dbms_output.put_line('Comprobando insercion de registro');
  select count(*) into v_existe
  from tmp_ubicacion_scooter
  where ubicacion_id=1001;

  if v_existe = 1 then
    select scooter_id,num_serie_scooter,ubicacion_id,latitud,
      latitud_grados,longitud,longitud_grados,status,fecha
    into v_scooter_id,v_num_serie_scooter,v_ubicacion_id,
      v_latitud,v_latitud_grados,v_longitud,v_longitud_grados,
      v_status,v_fecha
    from tmp_ubicacion_scooter
    where ubicacion_id=1001;

      if v_scooter_id = 1001 then
		dbms_output.put_line('campo scooter_id OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo scooter_id se esperaba 1001, se tiene: '
	  	  ||v_scooter_id);
	  end if;
	  
	  if v_num_serie_scooter = '012345678910111213' then
		dbms_output.put_line('campo num_serie_scooter OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo num_serie_scooter se esperaba 012345678910111213, se tiene: '
	  	  ||v_num_serie_scooter);
	  end if;

	  dbms_output.put_line('Campo ubicacion_id OK') ; 

	  if v_latitud = 19.1417 then
		dbms_output.put_line('campo latitud OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo latitud se esperaba 19.1417, se tiene: '
	  	  ||v_latitud);
	  end if;

	  if v_latitud_grados = q'{19°8'30''}' then
		dbms_output.put_line('campo latitud_grados OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo v_latitud_grados se esperaba '
	  	  || q'{19°8'30''}'
	  	  ||', se tiene: '
	  	  ||v_latitud_grados);
	  end if;

	  if v_longitud = -99.1717 then
		dbms_output.put_line('campo longitud OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo longitud se esperaba -99.1717, se tiene: '
	  	  ||v_longitud);
	  end if;

	  if v_longitud_grados = q'{-99°10'18''}' then
		dbms_output.put_line('campo longitud_grados OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo v_longitud_grados se esperaba'
	  	  || q'{-99°10'18''}'
	  	  ||', se tiene: '
	  	  ||v_longitud_grados);
	  end if;

	  if v_status = 'CON FALLAS' then
		dbms_output.put_line('campo status OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo status se esperaba CON FALLAS, se tiene: '
	  	  ||v_status);
	  end if;

	  if to_char(v_fecha,'dd/mm/yyyy') = 
	    to_char(sysdate,'dd/mm/yyyy') then
		dbms_output.put_line('campo fecha OK') ;     
	  else
	  	raise_application_Error(-20001,
	  	  'Error en el campo fecha se esperaba '
	  	  ||to_char(sysdate,'dd/mm/yyyy')
	  	  ||', se tiene: '
	  	  ||to_char(v_fecha,'dd/mm/yyyy'));
	  end if;


  else
  	raise_application_Error(-20001,
  	  'No se encontro el registro en la tabla temporal');

  end if;

  dbms_output.put_line('procedimiento OK');

end;
/

show errors