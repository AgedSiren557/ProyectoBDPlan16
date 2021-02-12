--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 01/02/2021
--@Descripción: tabla externa para leer datos de contacto de proovedores en csv	

prompt ingrese la contraseña del usuario sys
connect sys as sysdba

create or replace directory proy_dir 
  as '/home/octavio/Documents/BaseDeDatos/Proyecto';
grant read, write on directory proy_dir to oga_proy_admin;

connect oga_proy_admin/octavio
create table proveedor_ext(
  nombre varchar2(40),
  numero number(1,0),
  telefono numeric(10,0)
)
organization external(
  type oracle_loader
  default directory proy_dir
  access parameters(
  	records delimited by newline
  	badfile proy_dir:'proovedor_ext_bad.log'
  	logfile proy_dir:'proovedor_ext.log'
  	fields terminated by ','
  	lrtrim
  	missing field values are null
  	(
  	  nombre,numero,telefono
  	)
  )
  location('proovedor_ext.csv')
)
reject limit unlimited;
