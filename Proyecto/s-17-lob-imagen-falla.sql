--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 05/02/2021
--@Descripción: Script de una funcion que a partir de un reporte_falla_id
--y una numero inserta el numero de imagenes indicadas en falla_imagen

prompt Creando objeto Directory
prompt Ingrese el password de sys
connect sys as sysdba

create or replace directory imagen_falla_dir as 
  '/home/octavio/Documents/BaseDeDatos/Proyecto/imagen_falla';

prompt otorgando permisos al usuario admin

grant read,write on directory imagen_falla_dir to oga_proy_admin; 
prompt conectando como oga_proy_admin.sql
connect oga_proy_admin/octavio

set serveroutput on

create or replace procedure p_imagen_falla_carga(
  v_num in number, v_reporte_falla_id in number
) is

v_nombre_foto varchar2(25);
v_bfile bfile;  
v_foto blob;

v_carga number(1);

v_src_offset number;
v_dest_offset number;
v_src_lenght number;
v_blob_lenght number;
begin 

  for i in 1 .. v_num loop
    v_nombre_foto:= v_reporte_falla_id
      ||'-'
      ||i
      ||'.jpg';

    v_bfile := bfilename('IMAGEN_FALLA_DIR',v_nombre_foto);

    if dbms_lob.fileexists(v_bfile) = 0 then
      raise_application_error(-20100,'El archivo'||v_nombre_foto||
        'no existe en el objeto imagen_falla_dir');
    end if;

    if dbms_lob.fileisopen(v_bfile) = 1 then
      raise_application_error(-20100,'El archivo ' ||v_nombre_foto
        ||' esta abierto, debe estar cerrado');
    end if;

    select imagen into v_foto
    from imagen_falla
    where reporte_falla_id = v_reporte_falla_id
    and num_imagen = i
    for update;

    dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
    v_src_offset:=1;
    v_dest_offset:=1;
    v_src_lenght:=dbms_lob.getlength(v_bfile);

    dbms_lob.loadfromfile(
      /*dest_lob    =>*/ v_foto,
      /*src_bfile   =>*/ v_bfile,
      /*amount      =>*/ v_src_lenght,
      /*src_offset  =>*/ v_src_offset,
      /*dest_offset =>*/ v_dest_offset
    );
    dbms_lob.close(v_bfile);

    v_blob_lenght := dbms_lob.getlength(v_foto);



  end loop;

end;
/
show errors