--@Autor(es): Gonzalez Alcala Octavio
--@Fecha creación: 02/02/2021
--@Descripción: script que realiza la carga inicial de datos sobre
-- todas las tablas


--del 1 al 7
prompt insertantdo sobre status_scooter
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(1,'El scooter se encuentra apagado.','APAGADO');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(2,'El scooter se encuentra en espera','EN ESPERA');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(3,'El scooter se encuentra en servicio opcion viaje','EN SERVICIO VIAJE');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(4,'El scooter se encuentra en servicio opcion renta','EN SERVICIO RENTA');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(5,'El scooter se encuentra en servicio opcion carga','EN SERVICIO CARGA');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(6,'El scooter presenta bateria baja','BATERIA BAJA');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(7,'El scooter esta presentando fallas','CON FALLAS');
insert into status_scooter(status_scooter_id,descripcion,clave) 
values(8,'El scooter se encuentra fuera de sus zonas establecidas','FUERA DE ZONA');



--10 a 14
prompt insertantdo sobre banco
insert into banco(banco_id,nombre)
values(banco_sec.nextval,'BanMexico');
insert into banco(banco_id,nombre)
values(banco_sec.nextval,'Banco Digital');
insert into banco(banco_id,nombre)
values(banco_sec.nextval,'Maze Bank');
insert into banco(banco_id,nombre)
values(banco_sec.nextval,'Secure Money');
insert into banco(banco_id,nombre)
values(banco_sec.nextval,'Atlas');


--10 a 12
prompt insertantdo sobre proovedor y telefono proovedor
insert into proveedor(proveedor_id,nombre) values(proveedor_sec.nextval,'HELL SCOOTER');
insert into telefono_proveedor(proveedor_id,numero,telefono) values(proveedor_sec.currval,1,5587412369);
insert into telefono_proveedor(proveedor_id,numero,telefono) values(proveedor_sec.currval,2,5587415478);
insert into telefono_proveedor(proveedor_id,numero,telefono) values(proveedor_sec.currval,3,5587418524);
insert into proveedor(proveedor_id,nombre) values(proveedor_sec.nextval,'TEMPO ROYALE');
insert into telefono_proveedor(proveedor_id,numero,telefono) values(proveedor_sec.currval,1,7514789958);
insert into telefono_proveedor(proveedor_id,numero,telefono) values(proveedor_sec.currval,2,7514781023);
insert into proveedor(proveedor_id,nombre) values(proveedor_sec.nextval,'DINKA BIKES');
insert into telefono_proveedor(proveedor_id,numero,telefono) values(proveedor_sec.currval,1,5517728539);




-- 10 a 24
prompt insertantdo sobre zona
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Coyoacan','Coyoacan Centro');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Coyoacan','Coyoacan Sur');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Tlalpan','Tlalpan Centro');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Tlalpan','Tlalpan Norte');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Tlalpan','Tlalpan Este');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Benito Juarez','Benito Juarez Sur');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Benito Juarez','Benito Juarez Centro');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Benito Juarez','Benito Juarez Oeste');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Benito Juarez','Benito Juarez Sur');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Cauhtemoc','Cauhtemoc Centro');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Cauhtemoc','Cauhtemoc Norte');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Cauhtemoc','Cauhtemoc Sur');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Cuajimalpa','Cuajimalpa Este');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Cuajimalpa','Cuajimalpa Centro');
insert into zona(zona_id,nombre,definicion) values (zona_sec.nextval,'Cuajimalpa','Cuajimalpa Oeste');






--usuarios del 10 al 110 tarjeta_usuario 10 al 39
prompt insertantdo sobre usuario y tarjeta_usuario
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Kyle','Stein','Torres','Quisque.libero.lacus@ipsum.ca','TXL19BXP0DN');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4556384250201553',22,8);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Blaine','Kelly','Cervantes','cubilia.Curae.Phasellus@loremac.org','KOA69KKN5BF');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4916262073764713',21,6);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Judith','Newman','Cummings','mi.tempor@Vestibulumante.org','LQV59YRL1RJ');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4532029421658939',21,8);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Amena','Duncan','Mcdowell','nisl@arcuMorbi.ca','KEP64ZVS9MB');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4485151970267537',22,5);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Lamar','James','Vang','magna.et@mifelis.co.uk','FXX61AKT8UP');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4716279539976933',22,8);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Linus','Glover','Thomas','egestas@egetmagnaSuspendisse.co.uk','SRT32CKE9GG');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4716703193694370',23,10);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Bell','Petersen','Wilder','Etiam@ultricesposuere.net','HXH66IAX1YO');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4716976542588526',24,11);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Denton','Rosario','Bradshaw','libero@netusetmalesuada.edu','QOO70NOY2EX');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4539651986761320',22,2);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Amaya','Savage','Goodwin','dictum.ultricies@ligulaeuenim.org','BOM14TVK3CI');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4929293588471683',24,7);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Chantale','Duke','Ellison','a@loremutaliquam.ca','RDI92BOU1GZ');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4556385556854054',23,12);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Maxine','Evans','Huff','placerat.Cras@musDonec.edu','JSJ49OSE3QM');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4485842678592123',25,11);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Joan','Walker','Holt','est.Nunc@temporloremeget.co.uk','RPW32HSN7GC');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4716445291890790',23,6);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Kirk','Chambers','Pacheco','molestie.in.tempus@ipsumleo.ca','TIC39KVM0WN');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4024007189886418',22,5);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Mara','Marshall','Leach','augue.malesuada.malesuada@enim.org','NGR61IYH4OB');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4556954521156014',21,9);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Vielka','Lowe','Love','dolor.egestas.rhoncus@miAliquam.ca','XMD57OBG0US');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4929263662392426',23,8);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Adam','Pruitt','Newton','Duis.risus@convallisante.co.uk','XAJ04NMM0JF');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4024007125610443',22,6);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Maia','Carpenter','Owens','mauris.rhoncus.id@ac.org','HOO37ONR9PD');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4929269114369169',24,9);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Gary','Solis','Nixon','aliquam.iaculis@semegestas.org','DRS71JQD6ZS');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4716731124803745',22,11);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Blythe','Boyd','Myers','Donec@lobortistellusjusto.net','DQF57CQU4SZ');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4539052490275859',22,12);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Ciara','Cook','Solomon','a@aliquetsem.net','IBP65RNP8DA');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4485751436090363',21,4);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Walker','Nielsen','Conway','leo.elementum.sem@Donec.org','MCI99ZHC9QN');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4916542912921257',24,8);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Chase','Vargas','Avery','ac.turpis.egestas@Mauris.co.uk','YAO90WDF5IN');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4032201410866410',23,1);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Devin','Delaney','Patton','lorem.fringilla@eueleifendnec.edu','IPG64YQF9SW');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4916866716635858',24,1);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Teegan','Whitaker','Livingston','at.libero@eulacus.co.uk','NIG99ZLL7EJ');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4916258210881248',25,6);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Mara','Boyd','Odonnell','leo.in@diameudolor.ca','CPN59BBZ7EX');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4556733522004577',22,7);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Harlan','Trevino','Freeman','est.vitae.sodales@nonnisiAenean.ca','WCK55JDO0GD');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4024007179597869',25,3);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Hammett','Holden','Ratliff','pharetra@nibhenim.ca','UYM19EKN1YJ');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4024007159888785',25,3);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Asher','Doyle','Pratt','Ut.sagittis.lobortis@Fusce.net','DKQ41LMI3NK');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4556836112471140',22,2);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Quinlan','Key','Howell','sagittis@bibendumullamcorper.org','HAD43BML6CQ');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4556521005626747',21,11);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Giselle','Oneill','Oconnor','ornare.lectus@blandit.ca','ZDW85IVT0ZU');
INSERT INTO tarjeta_usuario (usuario_id,num_tarjeta,anio,mes) VALUES (usuario_sec.currval,'4485153425408575',23,10);
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Dakota','Goff','Burch','purus@nonfeugiat.edu','EXD21EYA1XZ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Quemby','Barker','Brown','enim.Curabitur@a.com','WBL48NAV8BY');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Hope','Lynn','Becker','dictum.placerat@Aliquamnec.com','CSH77KZD6FS');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Roary','Stone','Rose','vestibulum.Mauris.magna@et.co.uk','DTQ57QXF1FI');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Brynn','Calhoun','Jenkins','varius@nectempusmauris.co.uk','RON81LFE2QF');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Armand','Wolfe','York','neque.Nullam.ut@enimCurabiturmassa.net','VLF29BFT9PZ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Sawyer','Daniels','Bender','libero.est@arcuVestibulum.net','BYX95YLG2RG');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Herman','Palmer','Cote','Cum.sociis.natoque@tempus.co.uk','DCQ03FCG6YL');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Jackson','Mcdowell','Kramer','Morbi.vehicula@luctuslobortisClass.com','QGG28QTE5VH');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Caldwell','Lewis','Ball','fringilla@in.com','XPI79SNT1KE');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Hilary','Yang','Alexander','Nunc@Quisque.com','NWC90ANW2PK');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Nicholas','Strong','Moreno','Duis.elementum.dui@purus.edu','XJG40UTP5HW');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Ezra','Alexander','Rosa','morbi.tristique.senectus@temporbibendumDonec.com','XEB00WFU5OI');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Bree','Oneil','Pearson','Nullam@sedtortorInteger.co.uk','GPY97KUN9VR');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Mufutau','Barr','Cain','magna.a.neque@ultricesVivamus.co.uk','GDS69WSX8TF');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Fleur','Odonnell','Stokes','adipiscing.ligula.Aenean@consequatnec.com','ZZP17GBX1CH');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Yasir','Walker','Owens','lectus.pede.et@feugiattellus.ca','ELS21GNC9JU');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Alexa','Reeves','Sanchez','Nunc.mauris@Nunclectuspede.com','DGX44OFK7NF');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Martina','Stark','Williamson','Quisque.libero.lacus@rhoncusNullamvelit.com','ORK78IFZ1XD');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Kiona','Mcgee','Snow','a@magna.co.uk','GRI09OIW5NB');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Cleo','Arnold','Middleton','imperdiet.ornare@Integervitaenibh.org','CPE35CUG1IW');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Ria','Buckley','Nolan','sed@facilisiSed.com','IXN04EWM8KK');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Macaulay','Cherry','Peterson','ut.erat@Nunc.co.uk','BWH41SBM5OZ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Martena','Navarro','Dennis','sed.est@leoin.net','OTR30NZC8UA');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Knox','Santana','Ryan','Aliquam.ornare.libero@gravidaAliquam.co.uk','HQU28JIJ4MT');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Blossom','Morin','Williams','Aliquam@sitametfaucibus.org','AXA49LBS5SL');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Lane','Villarreal','Tyson','malesuada.malesuada.Integer@purusinmolestie.net','WKW94IDW2GX');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Rhoda','French','Atkins','tincidunt.aliquam@Proineget.edu','PBU47WPU6VJ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Graiden','Brewer','Nash','ut.sem@sapienmolestieorci.edu','LIR85RCJ6MV');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Melyssa','Lane','Cameron','semper.pretium.neque@sitametlorem.com','UMG92OYJ9BG');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Stone','Chen','Serrano','velit.Aliquam@ligulaNullam.co.uk','RLS23VHL3UD');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Britanni','Mckenzie','Raymond','tempus.non.lacinia@interdumNunc.co.uk','SEN92UYD3ML');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Sigourney','Park','Mullen','urna.nec.luctus@necurnaet.ca','KSC05EKR4HR');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Stella','Padilla','Ferguson','eu.euismod.ac@natoquepenatibus.com','MQT08YHW4ZE');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Hall','Weaver','Ingram','ac.turpis.egestas@libero.co.uk','EKU02NSO3AM');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Steven','Lynn','Richard','hymenaeos@enimmitempor.com','PMD09FOT2LC');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Abdul','Haney','Clements','turpis.nec.mauris@diamProindolor.net','ELS13CQC9OU');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Rahim','Mayo','Barlow','dis.parturient@malesuadavelvenenatis.edu','DHU28JAM2BH');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Clark','Boyd','Albert','erat@enimMaurisquis.edu','LPA75XFC6YQ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Hunter','Owens','Hatfield','nulla.Integer.urna@urna.co.uk','ZSN64ERJ1CW');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Carlos','Dejesus','Estrada','id.ante.Nunc@vel.net','JXK25ULZ6ZJ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Malik','Morse','Allison','mattis.velit.justo@habitant.co.uk','KHC95LAW5GJ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Barbara','Carney','Hunter','Cras.lorem.lorem@arcuimperdiet.org','IUW71GAQ5FG');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Bradley','Moss','Floyd','egestas.Duis.ac@ametornare.ca','RCR97KFY7SA');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Lara','Dean','Rosales','ante@neque.co.uk','PFO59ZFS3FT');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Patience','Stephens','Oneil','Integer.eu@dignissim.co.uk','CAN70YMK0TG');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Leslie','Cruz','Whitney','rutrum.justo.Praesent@nibhQuisque.net','HTZ53LGH4AW');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Ramona','Patel','Wilkinson','nibh@nonummy.co.uk','KPU98ORS3BA');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Eaton','Rivera','Russell','Aenean@telluslorem.ca','XVT48ELC6DQ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Alma','Cunningham','Harrison','eget@arcuCurabiturut.ca','RTK25VYP2XM');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Lydia','Jacobs','Garrett','at@Donecatarcu.org','FOX54TCB7GR');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Farrah','Coleman','Clayton','a@dictumsapien.net','CQX29HSP5LP');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Naomi','Hopkins','Williamson','Morbi.non@eratEtiam.com','VLN06EEU6RB');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Cynthia','Moon','Mccall','erat@hendrerit.ca','JOL92HPU9IL');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Olympia','Huff','Hall','mi@ipsum.co.uk','PTL33LLJ7OF');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Colleen','Griffin','Rosario','in@ullamcorperDuisat.org','CRS08BXZ2UC');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Allistair','Stark','Griffith','magna.Cras@auctorvitae.ca','PQY55VIO1KZ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Miriam','Bell','Flores','ac.urna@aliquetmetus.com','VIT29VNM4MU');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Idola','Rasmussen','Bowers','neque.venenatis.lacus@seddui.com','AWW36OCQ7GQ');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Teegan','Mcclure','Barr','enim.condimentum@nonjusto.com','PAT78BRM4KV');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Nomlanga','Mann','Hudson','iaculis.aliquet@mauris.org','NJA37KYR4WM');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Clare','Pena','Mclaughlin','sagittis.augue.eu@commodoauctorvelit.org','XQS66IVQ9HY');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Moses','Cohen','Henry','aliquet.vel.vulputate@sagittisplacerat.co.uk','JCK75YZW8TL');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Ursula','Castaneda','Turner','Proin.vel.arcu@etnetuset.org','TEW04SKW0MY');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Ralph','Berger','Hays','elit@gravida.ca','ROB40YLK4EI');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Theodore','Mckee','Oliver','est@Aeneangravida.co.uk','GCF23KKX7PN');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Destiny','Landry','Smith','pede.ultrices@ligulaAenean.edu','QOK33JDQ4BH');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Tana','Mclean','Whitaker','risus.Morbi.metus@Sedauctorodio.org','QDK27WUC6FP');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Carly','Reese','Mckay','eu.dui.Cum@purusgravidasagittis.net','GGV19ZRP0NX');
INSERT INTO usuario (usuario_id,nombre,ap_paterno,ap_materno,email,contrasena) VALUES (usuario_sec.nextval,'Moses','Daniel','Bennett','ipsum@Etiam.com','GRR99JOZ3IK');


--del 10 al 44
prompt insertantdo sobre scooter 
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'QWERT78963','123QWERTY567495LOI',250,'145202552015215224','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'DFGHL12562','45FGHJKNBV742GHKYO',250,'736520256874126525','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'QWSXG01552','234DFRVTG7HYTVRFGO',250,'814896321489632148','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'LKJHG45626','BGTUJNBGTYUIKMNBGJ',250,'736520695202563255','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'DFGHJ98567','098YGBJJFTUJNBVFTY',250,'369841015821482684','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'CFGHK02585','O8687FTYU67VFRTYHB',250,'025841001486201586','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'FGYHJ98520','1G5F2VB4T5RF2VB4GT',250,'665525621452014414','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'HGNJH58245','G5H426T5H2GG6HN5B2',250,'651215201101052695','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'GHGTY75421','DS51H65FD156DF15FD',250,'059858521451151504','Motor Sports',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'YTGHG58218','DF651GDF651G5F6D1G',250,'080460320800778165','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'MNHGF87412','4YBF438QFBYRGYREGB',250,'564450645406074171','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'JHGBN84150','834G83BYRYHHEUDSAJ',250,'540545141400638034','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'MHGBN74122','NHBFY83BG8YEWBGYEW',250,'783545323023524355','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'ZXCDV32478','SDNUREBGRYEBG8YE84',250,'351450144415043T10','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'QSDFR36541','RIJNUHBYUBGYRBG48B',250,'741040314535421553','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'IUYTG74698','3IUG843YGYRBGURRIG',250,'834156534052324525','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'JHGFD32552','AHBDUDSBSIVJIDBA48',250,'284635520522535744','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'YHRNH15265','TWER643GRY4BFYEBFE',250,'728352963231455534','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'UNYBT15167','U84NURNGUBNGJDNJIW',250,'334841034561453452','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'HBGRF01562','43UN4UGYRBGUNUBGUD',250,'928341246454232516','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'DFIBF65167','ODNVYDBEWB834BG4UY',250,'926332436744525065','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'GFDGS56162','UN4GU94NGU4NGJING4',250,'036842148626987417','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'KJKHJ04512','FONBIFUNBJF48T4NGR',250,'369852018258423698','JANUS PORTAL',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'IUYTR35125','394URYHFBDNJUERHFN',250,'031478451221354543','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'WERFG74456','84YBREHR3HRENSDFEE',250,'021548745612354855','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'TDSFC01567','VGYHUJNBGVYU3HEYR7',250,'548541254874548784','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'WDFVB52154','47RJGHFYE3UJRJFKEW',250,'252520418520215814','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'ZXCVB36852','RGFDG2F5G1FDS5GSFD',250,'025202185260158592','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'SWDFJ68215','AR6H516H156F1HF1HF',250,'251845962051250151','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,proveedor_id) values (scooter_sec.nextval,'TREDI06521','DHTHSDGRES82GDF2G5',250,'258150269585029815','AKUMA',dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,reemplaza_id,proveedor_id) values (scooter_sec.nextval,'PLKJU16758','MRJTIDOEM456JKCM45',250,'36954127520120032','AKUMA',10,dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,reemplaza_id,proveedor_id) values (scooter_sec.nextval,'EDRFT65845','R7HT8GDF45FBHFGDF5',250,'01478946514651346','AKUMA',11,dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,reemplaza_id,proveedor_id) values (scooter_sec.nextval,'RDHTF01548','3R4TGFR4TRGFR4RTGE',250,'02148512348797894','AKUMA',12,dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,reemplaza_id,proveedor_id) values (scooter_sec.nextval,'ETRHD78456','R78ESD4G51F2DS4GD5',250,'12568451201485215','AKUMA',13,dbms_random.value(10,12));
insert into scooter(scooter_id,num_matricula,codigo,capacidad_max,num_serie,marca,reemplaza_id,proveedor_id) values (scooter_sec.nextval,'RWEAS23554','WRE89RE5SD4GF4G5DG',250,'78451206204151221','AKUMA',14,dbms_random.value(10,12));




-- del 10 aal 41
prompt insertantdo sobre Ubicacion
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4284,-99.1276,to_date('04/01/2021','dd/mm/yyyy'),10,7);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4284,-99.1276,to_date('06/01/2021','dd/mm/yyyy'),11,7);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4284,-99.1276,to_date('08/01/2021','dd/mm/yyyy'),12,7);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4284,-99.1276,to_date('10/01/2021','dd/mm/yyyy'),13,7);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4284,-99.1276,to_date('12/01/2021','dd/mm/yyyy'),14,7);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4285,-99.1277,to_date('24/01/2021','dd/mm/yyyy'),15,1);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4286,-99.1278,to_date('28/01/2021','dd/mm/yyyy'),16,1);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4287,-99.1279,to_date('30/01/2021','dd/mm/yyyy'),17,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4288,-99.1280,to_date('25/01/2021','dd/mm/yyyy'),18,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4289,-99.1281,to_date('17/01/2021','dd/mm/yyyy'),19,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4290,-99.1282,to_date('19/01/2021','dd/mm/yyyy'),20,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4283,-99.1283,to_date('23/01/2021','dd/mm/yyyy'),21,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4282,-99.1283,to_date('26/01/2021','dd/mm/yyyy'),22,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4281,-99.1285,to_date('31/01/2021','dd/mm/yyyy'),23,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4280,-99.1275,to_date('26/01/2021','dd/mm/yyyy'),24,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4279,-99.1274,to_date('27/01/2021','dd/mm/yyyy'),25,2);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4278,-99.1273,to_date('29/01/2021','dd/mm/yyyy'),26,6);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4291,-99.1272,to_date('21/02/2021','dd/mm/yyyy'),27,6);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4292,-99.1271,to_date('09/01/2021','dd/mm/yyyy'),28,3);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4293,-99.1280,to_date('25/01/2021','dd/mm/yyyy'),29,4);
insert into ubicacion(ubicacion_id,fecha,latitud,longitud,fecha_status,scooter_id,status_scooter_id) values(ubicacion_sec.nextval,to_date('01/01/2021','dd/mm/yyyy')+dbms_random.value(0,10),19.4285,-99.1270,to_date('19/01/2021','dd/mm/yyyy'),30,5);


-- del 10 al 15
prompt insertando sobre servicio
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'C',30,10);
insert into servicio_recarga(servicio_id,carga_final,clabe,banco_id) values (servicio_sec.currval,95.7,'1589SDFG95SD5AS158',10);
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'R',29,11);
insert into servicio_renta(servicio_id,fecha_inicio,dias_renta,domicilio) values (servicio_sec.currval,to_date('25/01/2021','dd/mm/yyyy'),14,'Casa');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'V',28,12);
insert into servicio_viaje(servicio_id,fecha_inicio,folio) values (servicio_sec.currval,to_date('09/01/2021','dd/mm/yyyy'),'1FFG14RER4FAF');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'C',27,13);
insert into servicio_recarga(servicio_id,carga_final,clabe,banco_id) values (servicio_sec.currval,84.1,'1589SDFGSDFG48DG48',13);
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'C',26,14);
insert into servicio_recarga(servicio_id,carga_final,clabe,banco_id) values (servicio_sec.currval,98.95,'1589SDFG95SD5AS158',12);
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'C',25,15);
insert into servicio_recarga(servicio_id,carga_final,clabe,banco_id) values (servicio_sec.currval,80.2,'1589SDFG9SDAFFF845',14);
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'C',24,16);
insert into servicio_recarga(servicio_id,carga_final,clabe,banco_id) values (servicio_sec.currval,95.8,'1589SDFG95SD5A1585',11);
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'C',23,17);
insert into servicio_recarga(servicio_id,carga_final,clabe,banco_id) values (servicio_sec.currval,95.7,'1589SFCVGHBK5AS158',13);
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'R',22,18);
insert into servicio_renta(servicio_id,fecha_inicio,dias_renta,domicilio) values (servicio_sec.currval,to_date('20/12/2020','dd/mm/yyyy'),10,'Casa');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'R',21,19);
insert into servicio_renta(servicio_id,fecha_inicio,dias_renta,domicilio) values (servicio_sec.currval,to_date('22/12/2020','dd/mm/yyyy'),2,'En mi depa');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'R',20,20);
insert into servicio_renta(servicio_id,fecha_inicio,dias_renta,domicilio) values (servicio_sec.currval,to_date('15/12/2020','dd/mm/yyyy'),14,'A lado de perisur');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'R',19,21);
insert into servicio_renta(servicio_id,fecha_inicio,dias_renta,domicilio) values (servicio_sec.currval,to_date('24/12/2020','dd/mm/yyyy'),7,'Estara a un costado de la central de abastos');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'V',18,22);
insert into servicio_viaje(servicio_id,fecha_inicio,folio) values (servicio_sec.currval,to_date('02/01/2021','dd/mm/yyyy'),'ER78F4G578DFT');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'V',17,23);
insert into servicio_viaje(servicio_id,fecha_inicio,folio) values (servicio_sec.currval,to_date('24/12/2020','dd/mm/yyyy'),'E684TG65D4G64');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'V',16,24);
insert into servicio_viaje(servicio_id,fecha_inicio,folio) values (servicio_sec.currval,to_date('31/12/2020','dd/mm/yyyy'),'THRGDFGZ4XF5H');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'V',15,25);
insert into servicio_viaje(servicio_id,fecha_inicio,folio) values (servicio_sec.currval,to_date('30/12/2021','dd/mm/yyyy'),'ESTRD7G845FDS');
insert into servicio(servicio_id,tipo,scooter_id,usuario_id) values (servicio_sec.nextval,'V',14,16);
insert into servicio_viaje(servicio_id,fecha_inicio,folio) values (servicio_sec.currval,to_date('03/01/2021','dd/mm/yyyy'),'Y7RE4F4G5FDFD');



--10al 16
prompt insertando sobre tarjeta_prepago
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'POIUYTREWQ9874563210M',to_date('03/01/2021','dd/mm/yyyy'),to_date('03/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'TV67BY8UNBVTCR6VTBYNS',to_date('20/01/2021','dd/mm/yyyy'),to_date('20/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'N8B7VNCMVNBGTNVMCCCNV',to_date('08/01/2021','dd/mm/yyyy'),to_date('08/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'MV78BYIUVUTCRYTYGHVG5',to_date('03/01/2021','dd/mm/yyyy'),to_date('03/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'1SR4UT4R6G54HTS5DG9UJ',to_date('06/01/2021','dd/mm/yyyy'),to_date('06/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'15FD4H7R4RYRDJFHHFD45',to_date('24/01/2021','dd/mm/yyyy'),to_date('17/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'14TDG5FBG4TF1BGF4GF1V',to_date('29/01/2021','dd/mm/yyyy'),to_date('08/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'EY6ET4HD53H3D45DH4FD5',to_date('11/01/2021','dd/mm/yyyy'),to_date('03/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'59G57QP9JIE43THRIJGNH',to_date('22/01/2021','dd/mm/yyyy'),to_date('06/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));
insert into tarjeta_prepago(tarjeta_prepago_id,codigo,fecha_registro,fecha_expiracion,importe,usuario_id) values (tarjeta_prepago_sec.nextval,'NLKSAD489UMC489UJFUI4',to_date('17/01/2021','dd/mm/yyyy'),to_date('17/01/2021','dd/mm/yyyy')+dbms_random.value(60,150),dbms_random.value(50,600),dbms_random.value(10,110));



--10 al 75
prompt insertando en zona_scooter
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,10,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,10,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,10,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,11,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,11,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,11,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,12,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,12,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,12,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,13,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,13,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,13,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,14,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,14,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,14,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,15,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,15,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,15,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,16,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,16,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,16,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,17,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,17,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,17,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,18,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,18,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,18,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,19,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,19,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,19,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,20,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,20,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,20,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,21,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,21,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,21,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,22,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,22,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,22,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,23,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,23,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,23,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,24,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,24,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,24,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,25,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,25,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,25,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,26,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,26,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,26,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,26,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,26,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,26,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,27,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,27,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,27,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,28,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,28,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,28,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,29,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,29,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,29,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,30,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,30,dbms_random.value(10,24));
insert into zona_scooter(zona_scooter_id,scooter_id,zona_id) values (zona_scooter_sec.nextval,30,dbms_random.value(10,24));


insert into reporte_falla(reporte_falla_id,fecha,problema,scooter_id,usuario_id) values (reporte_falla_sec.nextval,sysdate-30,'Exploto su juguete',10,10);

commit;


