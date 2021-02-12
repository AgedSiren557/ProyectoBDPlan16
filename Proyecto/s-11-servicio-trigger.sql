--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 03/02/2021
--@Descripción: creacion del trigger de servicio


create or replace trigger tr_servicio
  before
    insert or
    update of tipo,scooter_id,usuario_id or
    delete
  on servicio
  for each row
  declare
  v_existe numeric(2,0);
begin
  case 
    when inserting then
      if :new.tipo = 'C' then
        select count(*) into v_existe
        from ubicacion 
        where status_scooter_id = 5;
        if v_existe<20 then
          update ubicacion 
          set status_scooter_id = 5
          where scooter_id = :new.scooter_id;
        else
          raise_application_Error(-20010,'limite de scooter en recarga alcanzado');
        end if;
      elsif :new.tipo = 'R' then
        update ubicacion 
        set status_scooter_id = 4
        where scooter_id = :new.scooter_id;
      elsif :new.tipo = 'V' then
        update ubicacion 
        set status_scooter_id = 3
        where scooter_id = :new.scooter_id;
      end if;
    when updating then
      raise_application_Error(-20011,'No se puede editar esta tabla');
    when deleting then 
      raise_application_Error(-20012,'No se puede eliminar registros de esta tabla');
  end case;
end;
/
show errors