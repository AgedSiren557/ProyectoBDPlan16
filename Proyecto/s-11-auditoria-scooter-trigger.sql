--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 03/02/2021
--@Descripción: auditoria para scooter en forma de trigger 
create or replace trigger tr_auditoria_scooter
  before
    insert or
    update of num_matricula,codigo,capacidad_max,num_serie,
      reemplaza_id, proveedor_id or
    delete
  on scooter
  for each row
  declare
  
  v_tipo_evento char(1);
  v_dato_anterior varchar2(900);
  v_dato_nuevo varchar2(900);
  v_scooter_id numeric(10,0);
  v_fecha date;
  v_detalle_evento varchar2(2000);
begin
  v_fecha := sysdate;
  v_detalle_evento:='';

  case 
    when inserting then
      v_tipo_evento := 'I';
      v_scooter_id:= :new.scooter_id;
      v_detalle_evento := 'El usuario '
        ||sys_context('USERENV','SESSION_USER')
      	||' ha creado un nuevo scooter con fecha ' 
      	|| to_char(v_fecha,'dd/mm/yyyy hh24:mi:ss')
      	||' con los siguientes valores: '
      	||'scooter_id = '||:new.scooter_id
      	||', num_matricula = '||:new.num_matricula
      	||', codigo = '||:new.codigo
      	||', capacidad_max = '||:new.capacidad_max
      	||', num_serie = '||:new.num_serie
      	||', marca = '||:new.marca
      	||', proveedor_id = '||:new.proveedor_id
      	||', reemplaza_id = '||:new.reemplaza_id;					
  
    when updating then
      v_tipo_evento :='P';
      v_scooter_id:= :new.scooter_id;
      if :new.num_matricula = :old.num_matricula then
      	v_dato_anterior:=v_dato_anterior||' num_matricula ='||:old.num_matricula;
	      v_dato_nuevo:=v_dato_nuevo||' num_matricula ='||:new.num_matricula;
      end if;
      if :new.codigo = :old.codigo then
      	v_dato_anterior:=v_dato_anterior||' codigo ='||:old.codigo;
	    v_dato_nuevo:=v_dato_nuevo||' codigo ='||:new.codigo;
      end if;
      if :new.capacidad_max = :old.capacidad_max then
      	v_dato_anterior:=v_dato_anterior||' capacidad_max ='||:old.capacidad_max;
	      v_dato_nuevo:=v_dato_nuevo||' capacidad_max ='||:new.capacidad_max;
      end if;
      if :new.num_serie = :old.num_serie then
      	v_dato_anterior:=v_dato_anterior||' num_serie ='||:old.num_serie;
	      v_dato_nuevo:=v_dato_nuevo||' num_serie ='||:new.num_serie;
      end if;
      if :new.marca = :old.marca then
      	v_dato_anterior:=v_dato_anterior||' marca ='||:old.marca;
	    v_dato_nuevo:=v_dato_nuevo||' marca ='||:new.marca;
      end if;
      if :new.proveedor_id = :old.proveedor_id then
      	v_dato_anterior:=v_dato_anterior||' proveedor_id ='||:old.proveedor_id;
	    v_dato_nuevo:=v_dato_nuevo||' proveedor_id ='||:new.proveedor_id;
      end if;
      if :new.reemplaza_id = :old.reemplaza_id then
      	v_dato_anterior:=v_dato_anterior||' cliente_id ='||:old.reemplaza_id;
	    v_dato_nuevo:=v_dato_nuevo||' cliente_id ='||:new.reemplaza_id;
      end if;

      v_detalle_evento:='El usuario '
      ||sys_context('USERENV','SESSION_USER')
      ||' ha actualizado los datos de un scooter el dia ' 
      || to_char(v_fecha,'dd/mm/yyyy hh24:mi:ss')
      ||'. Datos anteriores: '
      ||v_dato_anterior
      ||'. Datos nuevos: '
      ||v_dato_nuevo;

    when deleting then
      v_tipo_evento := 'D';
      v_scooter_id:= :old.scooter_id;
      v_detalle_evento := 'El usuario '||sys_context('USERENV','SESSION_USER')
      	||' ha eliminado los datos de un auto con fecha ' 
      	|| to_char(v_fecha,'dd/mm/yyyy hh24:mi:ss')
      	||' Datos del auto eliminado: '
      	||'scooter_id = '||:old.scooter_id
        ||', num_matricula = '||:old.num_matricula
        ||', codigo = '||:old.codigo
        ||', capacidad_max = '||:old.capacidad_max
        ||', num_serie = '||:old.num_serie
        ||', marca = '||:old.marca
        ||', proveedor_id = '||:old.proveedor_id
        ||', reemplaza_id = '||:old.reemplaza_id;
    end case;

    insert into auditoria_scooter(auditoria_scooter_id,usuario,tipo_evento,
      scooter_id,fecha_cambio,detalle_evento)
    values(auditoria_scooter_seq.nextval,sys_context('USERENV','SESSION_USER'),
      v_tipo_evento,v_scooter_id,v_fecha,v_detalle_evento);
end;
/