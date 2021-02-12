--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 01/02/2021
--@Descripción: script para crear todas las secuencias para id

create sequence scooter_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence ubicacion_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence historial_status_ubicacion_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence servicio_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence zona_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence zona_scooter_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence banco_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence usuario_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence tarjeta_prepago_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence reporte_falla_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;

create sequence proveedor_sec
start with 10
increment by 1
minvalue 0
nocycle
cache 10;







--secuencia auditoria
create sequence auditoria_scooter_seq
start with 10
increment by 1
minvalue 0
nocycle
cache 10;
