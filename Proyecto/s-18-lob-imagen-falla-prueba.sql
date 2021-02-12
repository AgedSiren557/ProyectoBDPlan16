--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 05/02/2021
--@Descripción: Script de una funcion que a partir de un reporte_falla_id
--y una numero inserta el numero de imagenes indicadas en falla_imagen


declare

  v_reporte_falla_id numeric(10,0);
  v_nombre_foto varchar2(25);
  v_blob blob;
  v_bfile bfile; 

begin

  select reporte_falla_id into v_reporte_falla_id
  from reporte_falla 
  where scooter_id=10
  and usuario_id=10;
  dbms_output.put_line('Insertando datos de prueba en imagen_falla');
  insert into imagen_falla (num_imagen,reporte_falla_id,imagen) values (1,v_reporte_falla_id,empty_blob());
  insert into imagen_falla (num_imagen,reporte_falla_id,imagen) values (2,v_reporte_falla_id,empty_blob());
  insert into imagen_falla (num_imagen,reporte_falla_id,imagen) values (3,v_reporte_falla_id,empty_blob());
  dbms_output.put_line(
  	'Ejecutando procedimiento p_imagen_falla_carga');
  p_imagen_falla_carga(3,v_reporte_falla_id);
  
  for i in 1 .. 3 loop
    v_nombre_foto:= v_reporte_falla_id
      ||'-'
      ||i
      ||'.jpg';

    v_bfile := bfilename('IMAGEN_FALLA_DIR',v_nombre_foto);

    if dbms_lob.fileexists(v_bfile) = 0 then
      raise_application_error(-20100,'El archivo'
        ||v_nombre_foto
        ||'no existe en el objeto imagen_falla_dir');
    end if;

    dbms_output.put_line('Cmprobando imagen numero '||i);
    select imagen into v_blob 
    from imagen_falla
    where reporte_falla_id=v_reporte_falla_id
    and num_imagen = i;

    if dbms_lob.getlength(v_blob) = 
      dbms_lob.getlength(v_bfile) then
      dbms_output.put_line('Imagen numero '
      	||i
      	|| ' OK');
    else
      raise_application_error(-20100,'Error en la imagen numero '
      ||i );
    end if;

  end loop;

  dbms_output.put_line('p_imagen_falla_carga OK');

end;
/

show errors