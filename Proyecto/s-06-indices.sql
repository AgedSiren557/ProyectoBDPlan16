--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 02/02/2021
--@Descripción: creacion de indices para agilizar consultas

create index ser_scooter_id_ix on servicio(scooter_id);
create index ser_usuario_id_ix on servicio(usuario_id);

create index sco_codigo_ix on scooter(codigo,num_matricula);
create index usu_nombre_idx 
  on usuario(upper(nombre),upper(ap_paterno),upper(ap_materno));
