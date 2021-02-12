--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 01/02/2021
--@Descripción: Definicion ddl del caso de estudio

create table proveedor(
  proveedor_id numeric(3,0),
  nombre varchar2(40) not null,
  constraint proveedor_pk primary key(proveedor_id)
);

create table telefono_proveedor(
  numero numeric(1,0) not null,
  proveedor_id numeric(3,0) not null,
  telefono numeric(10,0) not null,
  constraint proveedor_id_fk foreign key(proveedor_id)
  references proveedor(proveedor_id),
  constraint telefono_proveedor_pk primary key(numero,proveedor_id),
  constraint telefono_proovedor_numero_chk check(
  	numero between 1 and 3)
);

create table zona(
  zona_id numeric(10,0),
  nombre varchar2(40) not null,
  definicion varchar2(2000) not null,
  constraint zona_pk primary key(zona_id)
);

create table scooter(
  scooter_id numeric(10,0),
  num_matricula varchar2(10) not null,
  codigo varchar2(18) not null,
  capacidad_max numeric(5,2) not null,
  num_serie varchar2(18) not null,
  marca varchar2(30) not null,
  reemplaza_id numeric(10,0),
  proveedor_id numeric(3,0) not null,
  constraint scooter_pk primary key(scooter_id),
  constraint scooter_reemplaza_id_fk foreign key(reemplaza_id)
  references scooter(scooter_id),
  constraint scooter_proveedor_id_fk foreign key(proveedor_id)
  references proveedor(proveedor_id)
);

create table zona_scooter(
  zona_scooter_id numeric(10,0),
  scooter_id numeric(10,0) not null,
  zona_id numeric(10,0),
  constraint zona_scooter_pk primary key(zona_scooter_id),
  constraint zona_scooter_scooter_id_fk foreign key(scooter_id)
  references scooter(scooter_id),
  constraint zona_scooter_zona_id_fk foreign key(zona_id)
  references zona(zona_id)
);

create table status_scooter(
  status_scooter_id numeric(2,0),
  clave varchar2(20) not null,
  descripcion varchar2(100) not null,
  constraint status_scooter_pk primary key (status_scooter_id),
  constraint status_scooter_clave_uk unique (clave)
);

create table ubicacion(
  ubicacion_id numeric(10,0),
  latitud numeric(7,5) not null,
  longitud numeric(7,5) not null,
  fecha date not null,
  fecha_status date not null,
  scooter_id numeric(10,0) not null,
  status_scooter_id numeric(10,0) not null,
  constraint ubicacion_pk primary key (ubicacion_id),
  constraint ubicacion_scooter_id_fk foreign key (scooter_id)
  references scooter(scooter_id),
  constraint ubicacion_status_scooter_id_fk foreign key (status_scooter_id)
  references status_scooter(status_scooter_id)
);

create table historial_status_ubicacion(
  historial_status_ubicacion_id numeric(10,0),
  fecha date not null,
  ubicacion_id numeric(10,0) not null,
  status_scooter_id numeric(2,0) not null,
  constraint historial_status_ubicacion_pk primary key (historial_status_ubicacion_id),
  constraint historial_ubicacion_id_fk foreign key (ubicacion_id)
  references ubicacion(ubicacion_id),
  constraint historial_status_scooter_id_fk foreign key (status_scooter_id)
  references status_scooter(status_scooter_id)
);

create table usuario(
  usuario_id numeric(10,0),
  nombre varchar2(40)not null,
  ap_paterno varchar2(40)not null,
  ap_materno varchar2(40),
  puntos numeric(10,0) default 0 not null,
  email varchar2(100) not null,
  contrasena varchar2(100) not null,
  constraint usuario_pk primary key (usuario_id),
  constraint usuario_email_uk unique (email)
);

create table reporte_falla(
  reporte_falla_id numeric(10,0),
  latitud numeric(7,5),
  longitud numeric(7,5),
  fecha date not null,
  problema varchar2(2000) not null,
  scooter_id numeric(10,0) not null,
  usuario_id numeric (10,0) not null,
  constraint reporte_falla_pk primary key (reporte_falla_id),
  constraint reporte_falla_scooter_id_fk foreign key (scooter_id)
  references scooter(scooter_id),
  constraint reporte_falla_usuario_id_fk foreign key (usuario_id)
  references usuario(usuario_id)
);

create table imagen_falla(
  num_imagen numeric(1,0) not null,
  reporte_falla_id numeric(10,0) not null,
  imagen blob not null,
  constraint imagen_falla_reporte_falla_id_fk foreign key (reporte_falla_id)
  references reporte_falla(reporte_falla_id),
  constraint imagen_falla_pk primary key (reporte_falla_id,num_imagen),
  constraint imagen_falla_num_imagen_chk check(
  	num_imagen between 1 and 5
  )
);

create table tarjeta_usuario(
  usuario_id numeric(10,0),
  num_tarjeta varchar2(16) not null,
  anio numeric(2,0) not null,
  mes numeric(2,0) not null,
  constraint tarjeta_usuario_pk primary key (usuario_id)	
);

create table tarjeta_prepago(
  tarjeta_prepago_id numeric(10,0),
  codigo varchar2(21) not null,
  fecha_registro date not null,
  fecha_expiracion date not null,
  importe numeric(6,2) not null,
  usuario_id numeric(10,0) not null,
  constraint tarjeta_prepago_pk primary key (tarjeta_prepago_id),
  constraint tarjeta_prepago_usuario_id_fk foreign key (usuario_id)
  references usuario(usuario_id),
  constraint tarjeta_prepago_codigo_uk unique (codigo)
);

create table banco(
  banco_id numeric(3,0),
  nombre varchar2(40)not null,
  constraint banco_pk primary key (banco_id)
);

create table servicio(
  servicio_id numeric(10,0),
  tipo char(1) not null,
  scooter_id numeric(10,0) not null,
  usuario_id numeric(10,0) not null,
  constraint servicio_pk primary key (servicio_id),
  constraint servicio_scooter_id_fk foreign key (scooter_id)
  references scooter(scooter_id),
  constraint servicio_usuario_id_fk foreign key (usuario_id)
  references usuario(usuario_id),
  constraint servicio_tipo_chk check(
  	tipo in ('V','R','C') 
  )
);

create table servicio_viaje(
  servicio_id numeric(10,0),
  fecha_inicio date not null,
  fecha_fin generated always as (
  	fecha_inicio+.3333) virtual,
  folio varchar2(13) not null,
  constraint servicio_viaje_servicio_id_fk foreign key (servicio_id)
  references servicio(servicio_id),
  constraint servicio_viaje_pk primary key (servicio_id),
  constraint servicio_viaje_folio_uk unique (folio)
);

create table servicio_renta(
  servicio_id numeric(10,0),
  fecha_inicio date not null,
  dias_renta numeric(2,0) not null,
  domicilio varchar2(100) not null,
  constraint servicio_renta_servicio_id_fk foreign key (servicio_id)
  references servicio(servicio_id),
  constraint servicio_renta_pk primary key (servicio_id),
  constraint servicio_renta_dias_renta_chk check(
  	dias_renta between 0 and 15)
);

create table servicio_recarga(
  servicio_id numeric(10,0),
  carga_final numeric(4,1) not null,
  clabe varchar2(18) not null,
  banco_id numeric(3,0) not null,
  constraint servicio_recarga_servicio_id_fk foreign key (servicio_id)
  references servicio(servicio_id),
  constraint servicio_recarga_pk primary key (servicio_id),
  constraint servicio_recarga_banco_id_fk foreign key(banco_id)
  references banco(banco_id),
  constraint servicio_recarga_carga_final_chk check(
  	carga_final between 50 and 100 )
);







--tablas usada en otros lados
create table auditoria_scooter(
  auditoria_scooter_id numeric(10,0)not null,
  usuario varchar2(40) not null,
  tipo_evento char(1) not null,
  scooter_id numeric(10,0) not null,
  fecha_cambio date not null,
  detalle_evento varchar2(2000) not null
);