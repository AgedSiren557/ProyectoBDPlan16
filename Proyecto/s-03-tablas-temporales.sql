--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 01/02/2021
--@Descripción: definicion de tabla temporal de la ubicacion 
-- y estado de los scooters

create global temporary table tmp_ubicacion_scooter(
  scooter_id number(10,0),
  num_serie_scooter varchar2(18),
  ubicacion_id number(10,0),
  latitud number(6,4),
  latitud_grados varchar2(13),
  longitud number(6,4),
  longitud_grados varchar2(13),
  status varchar2(20),
  fecha date
) on commit preserve rows;

