--@Autor(es): GOnzalez Alcala Octavio
--@Fecha creación: 1/02/2021
--@Descripción: Creacion de usuarios y sus permiso

--prompt Ingrese la contraseña del usuario sys
--connect sys as sysdba

prompt creando usuarios
create user oga_proy_admin identified by octavio quota unlimited on users;

create user oga_proy_invitado identified by octavio;

prompt creando roles
create role rol_admin;
create role rol_invitado;

grant create session to rol_invitado;
grant create session,create table,create view,create procedure,
  create trigger,create sequence, create synonym,
  create public synonym
  to rol_admin with admin option;

grant rol_admin to oga_proy_admin;
grant rol_invitado to oga_proy_invitado;