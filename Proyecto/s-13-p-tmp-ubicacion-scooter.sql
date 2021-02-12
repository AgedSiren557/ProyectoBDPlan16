--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 04/02/2021
--@Descripción: procedimiento que llena la tabla temporal
-- parametros de entrada una fecha, tamaño del rango

create or replace procedure p_llena_tmp_ubicacion_scooter(
  p_fecha in date, p_dias in number) is

  cursor cur_ubicacion is
    select s.scooter_id,s.num_serie,u.ubicacion_id,u.latitud,
      u.longitud,st.clave,u.fecha
    from ubicacion u,scooter s,status_scooter st
    where u.status_scooter_id = st.status_scooter_id
    and u.scooter_id = s.scooter_id
    and u.fecha between p_fecha and p_fecha+p_dias;
begin
  for i in cur_ubicacion loop
  	insert into tmp_ubicacion_scooter(scooter_id,num_serie_scooter,
  	  ubicacion_id,latitud,latitud_grados,longitud,longitud_grados,
  	  status,fecha)
  	values(i.scooter_id,i.num_serie,i.ubicacion_id,i.latitud,
  	  decimal_to_degree_fx(i.latitud),i.longitud,
  	  decimal_to_degree_fx(i.longitud),i.clave,i.fecha);
  end loop;
end;
/
show errors