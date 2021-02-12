--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 04/02/2021
--@Descripción: script de una funcion que apartir de un numero de entrada,
--te devuelve su correspondiente en grados, minutos

create or replace function decimal_to_degree_fx(
  v_num number
) return varchar2 is
  v_num_degree varchar2(13);
  v_hour number(10,7);
  v_min number(10,8);
  v_sec number(10,8);
begin
  v_hour := v_num;
  v_min:= substr(v_hour,instr(v_hour,'.'));
  v_min:= v_min*60;
  v_sec:= substr(v_min,instr(v_min,'.'));
  v_sec:= v_sec*60;
  v_num_degree := to_char(trunc(v_hour,0))
  	||'°'
  	||to_char(trunc(v_min,0))
  	||q'{'}'
  	||to_char(trunc(v_sec,0))
  	||q'{''}';

  return v_num_degree;
end;
/
show errors 