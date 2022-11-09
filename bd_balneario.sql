/*Creación de la BD*/
CREATE database bd_balneario;
/*Creación de las tablas necesarias*/

CREATE TABLE balneario( 
  id_balneario INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(40) NOT NULL,
  telefono VARCHAR(20),
  direccion VARCHAR(50) NOT NULL,
  logo_balneario VARCHAR (30) ,
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_balneario) 
)ENGINE=INNODB;

INSERT INTO balneario VALUES(1, 'la candelaria','70223206', 'rancho norte','logo.jpeg',now(),now() ,1, 1);


CREATE TABLE promocion (
  id_promocion INT NOT NULL AUTO_INCREMENT,
  id_balneario INT NOT NULL,
  nombre_promoción VARCHAR(40) NOT NULL,
  descripción VARCHAR(40) NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_promocion),
  FOREIGN KEY (id_balneario) REFERENCES balneario (id_balneario)
)ENGINE=INNODB;

INSERT INTO promocion VALUES(1,1,'dia del niño','2x1 los niños', '2019-04-12', '2019-04-12',now() ,now(), 1, 1);
INSERT INTO promocion VALUES(2,1,'dia del padre','el papá de la familia no paga entrada','2019-03-19','2019-03-19',now() ,now(), 1, 1);
INSERT INTO promocion VALUES(3,1,'dia de la madre','la mamá de la familia no paga entrada','2019-05-27', '2019-05-27',now() ,now(), 1, 1);
INSERT INTO promocion VALUES(4,1,'el cumpleañero','el cumpleañero no paga su entrada', '2020-07-20','2020-07-20',now() ,now(), 1, 1);
INSERT INTO promocion VALUES(5,1,'el cumpleañero','el cumpleañero no paga su entrada', '2021-07-20','2020-07-20',now() ,now(), 1, 1);
INSERT INTO promocion VALUES(6,1,'el cumpleañero','el cumpleañero no paga su entrada', '2021-07-20','2020-07-20',now() ,now(), 1, 1);



CREATE TABLE tipo_producto (
  id_tipo_producto INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(40) NOT NULL,
  descripcion VARCHAR(40) NOT NULL,
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_tipo_producto)
)ENGINE=INNODB;

INSERT INTO tipo_producto VALUES(1,'gaseosa','2 litros',now() ,now(), 1, 1);
INSERT INTO tipo_producto VALUES(2,'agua','2 litros',now() ,now(), 1, 1);
INSERT INTO tipo_producto VALUES(3,'jugo','1 litros',now() ,now(), 1, 1);
INSERT INTO tipo_producto VALUES(4,'comida','1 plato',now() ,now(), 1, 1);
INSERT INTO tipo_producto VALUES(5,'bebida alcoholica','800 mililitros',now() ,now(), 1, 1);
INSERT INTO tipo_producto VALUES(6,'bebida energizante','800 mililitros',now() ,now(), 1, 1);



CREATE TABLE producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_tipo_producto INT NOT NULL,
  id_balneario INT NOT NULL,
  nombre_producto VARCHAR(40) NOT NULL,
  precio VARCHAR(20),
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_producto),
    FOREIGN KEY (id_tipo_producto) REFERENCES tipo_producto (id_tipo_producto),
  FOREIGN KEY (id_balneario) REFERENCES balneario (id_balneario)
)ENGINE=INNODB;

INSERT INTO producto VALUES(1,1,1,'coca cola','15',now() ,now(), 1, 1);
INSERT INTO producto VALUES(2,1,1,'fanta','15',now() ,now(), 1, 1);
INSERT INTO producto VALUES(3,1,1,'sprit','15',now() ,now(), 1, 1);
INSERT INTO producto VALUES(4,2,1,'agua','10',now() ,now(), 1, 1);
INSERT INTO producto VALUES(5,3,1,'ades','15',now() ,now(), 1, 1);
INSERT INTO producto VALUES(6,4,1,'chancho al horno','30',now() ,now(), 1, 1);
INSERT INTO producto VALUES(7,4,1,'sopa de arroz','10',now() ,now(), 1, 1);
INSERT INTO producto VALUES(8,5,1,'paceña','25',now() ,now(), 1, 1);
INSERT INTO producto VALUES(9,5,1,'corona','15',now() ,now(), 1, 1);
INSERT INTO producto VALUES(10,5,1,'vino','25',now() ,now(), 1, 1);


CREATE TABLE cliente( 
  id_cliente INT NOT NULL AUTO_INCREMENT,
  id_balneario INT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  c_i VARCHAR(20) NOT NULL,
  telefono VARCHAR(20),
  direccion VARCHAR(50) NOT NULL,
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
    PRIMARY KEY (id_cliente),
  FOREIGN KEY (id_balneario) REFERENCES balneario (id_balneario)
)ENGINE=INNODB;

INSERT INTO cliente VALUES(1,1,'ana','Escudero','6025485','70220428','san lorenzo',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(2,1,'Cristian','Guerrero','6025486','70220438','rancho norte',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(3,1,'Leo','Jurado','6025487','70220448','rancho sur',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(4,1,'Hugo','Conde','6025488','70220458','tomatitas',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(5,1,'Luz','Aguado','6025489','70220468','la loma',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(6,1,'Sara','Pinto','6025490','70220478','villa avaroa',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(7,1,'Ulises','Mamani','6025491','70220488','juan xxlll',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(8,1,'Alejandro','Quispe','6025492','70220498','san jorge',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(9,1,'Maria','Echeverría','6025493','70220508','san mateo',now() ,now(), 1, 1);
INSERT INTO cliente VALUES(10,1,'Samuel','Gallardo','6025494','70220518','1 de mayo',now() ,now(), 1, 1);



CREATE TABLE servicio_cliente (
  id_servicio_cliente INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nombre_servicio VARCHAR(40) NOT NULL,
  fecha DATE,
  precio VARCHAR(20),
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_servicio_cliente),
  FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
)ENGINE=INNODB;

INSERT INTO servicio_cliente VALUES(1,1,'Alquiler_local','2019-12-25','3500',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(2,2,'corona','2021-01-17','15',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(3,3,'coca cola','2021-01-17','15',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(4,4,'entrada','2021-01-30','30',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(5,5,'entrada','2021-01-30','30',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(6,6,'ades','2021-01-30','15',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(7,7,'vino','2021-02-05','25',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(8,8,'sopa de arroz','2021-02-05','10',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(9,9,'Alquiler_local','2021-02-05','3500',now() ,now(), 1, 1);
INSERT INTO servicio_cliente VALUES(10,10,'vino','2021-02-05','25',now() ,now(), 1, 1);


CREATE TABLE detalle_servicio_cliente (
  id_detalle_servicio_cliente INT NOT NULL AUTO_INCREMENT,
  id_servicio_cliente INT NOT NULL,
  descripcion VARCHAR (40) NOT NULL,
  cantidad VARCHAR(20),
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY(id_detalle_servicio_cliente),
  FOREIGN KEY (id_servicio_cliente) REFERENCES servicio_cliente (id_servicio_cliente)
  )ENGINE=INNODB;

INSERT INTO detalle_servicio_cliente VALUES(1,1,'alquila el local ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(2,2,'bebida alcoholica','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(3,3,'gaseosa','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(4,4,'entrada ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(5,5,'entrada ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(6,6,'jugo ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(7,7,'bebida alcoholica ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(8,8,'comida ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(9,9,'alquila el local ','1',now() ,now(), 1, 1);
INSERT INTO detalle_servicio_cliente VALUES(10,10,'bebida alcoholica ','1',now() ,now(), 1, 1);



CREATE TABLE alquiler_local (
  id_alquiler_local INT NOT NULL AUTO_INCREMENT,
  id_balneario INT NOT NULL,
  fecha DATE NOT NULL,
  descripción_alquiler VARCHAR(40) NOT NULL,
  precio_alquiler VARCHAR(20),
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_alquiler_local),
  FOREIGN KEY (id_balneario) REFERENCES balneario (id_balneario)
)ENGINE=INNODB;

INSERT INTO alquiler_local VALUES(1,1,'2019-12-25','matrimonio','3500',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(2,1,'2019-12-27','cumpleaños','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(3,1,'2020-02-07','colegio julio calvo','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(4,1,'2020-02-14','reuniones de empresas','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(5,1,'2020-03-07','universidad j.m.s','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(6,1,'2020-12-02','15 años','3500',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(7,1,'2020-12-25','cumpleaños','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(8,1,'2020-12-28','matrimonio','3500',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(9,1,'2020-12-29','colegio santa ana','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(10,1,'2021-01-07','cumpleaños','3000',now() ,now(), 1, 1);
INSERT INTO alquiler_local VALUES(11,1,'2021-01-07','cumpleaños','3000',now() ,now(), 1, 1);

CREATE TABLE empleado( 
  id_empleado INT NOT NULL AUTO_INCREMENT,
  id_balneario INT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  c_i VARCHAR(20) NOT NULL,
  telefono VARCHAR(20),
  direccion VARCHAR(50) NOT NULL,
  nacionalidad VARCHAR(20),
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
    PRIMARY KEY (id_empleado),
  FOREIGN KEY (id_balneario) REFERENCES balneario (id_balneario)
)ENGINE=INNODB;

INSERT INTO empleado VALUES(1,1,'maribel','chambi','7204284','60254854','b/4 de julio','boliviana',now() ,now(), 1, 1);
INSERT INTO empleado VALUES(2,1,'gregorio','mendoza','7204384','60254864','rancho norte','boliviana',now() ,now(), 1, 1);
INSERT INTO empleado VALUES(3,1,'gonzalo','sanchez','7204484','60254874','b/contructor','extranjera',now() ,now(), 1, 1);
INSERT INTO empleado VALUES(4,1,'sinthya','tolaba','7204584','60254884','b/la loma','extranjera',now(),now(), 1, 1);
INSERT INTO empleado VALUES(5,1,'delia','paredes','7204684','60254894','b/la loma','extranjera',now(),now(), 1, 1);
INSERT INTO empleado VALUES(6,1,'julio','paz','7204784','60254904','b/1 de mayo','boliviana',now(),now(), 1, 1);


CREATE TABLE funcion_empleado( 
  id_funcion_empleado INT NOT NULL AUTO_INCREMENT,
  id_empleado INT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  descripcion VARCHAR(50) NOT NULL,
  fecha_insercion TIMESTAMP NOT NULL,
  fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario INT NOT NULL,
  estado char(1) NOT NULL,
  PRIMARY KEY (id_funcion_empleado),
  FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado)
)ENGINE=INNODB;


INSERT INTO funcion_empleado VALUES(1,1,'limpieza','limpiar todo el lugar',now() ,now(), 1, 1);
INSERT INTO funcion_empleado VALUES(2,2,'jardinero','cuidar las plantas',now() ,now(), 1, 1);
INSERT INTO funcion_empleado VALUES(3,3,'pisinero','limpiar la pisina',now() ,now(), 1, 1);
INSERT INTO funcion_empleado VALUES(4,4,'encargada','supervisar',now() ,now(), 1, 1);
INSERT INTO funcion_empleado VALUES(5,5,'cosinera','cosinar',now() ,now(), 1, 1);
INSERT INTO funcion_empleado VALUES(6,6,'albañil','construcción',now() ,now(), 1, 1);


/*tablas de seguridad*/

CREATE TABLE _personas(
id_persona INT NOT NULL AUTO_INCREMENT,
id_balneario INT NOT NULL,
ci VARCHAR(10) NOT NULL,
nombres VARCHAR(25)NOT NULL,
ap VARCHAR(25),
am VARCHAR(25),
genero VARCHAR(25),
telef VARCHAR(10)NOT NULL,
direccion VARCHAR(25)NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_balneario) REFERENCES _personas(id_persona)
)ENGINE=INNODB;


INSERT INTO _personas VALUES(1,1,'7220428','maribel','chambi','Alaves','F','60254854','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(2,1,'7220429','mario','chambi','Paredes','M','60254854','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(3,1,'7220428','maria','chambi','Alaves','F','60254855','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(4,1,'7220429','mario','chambi','Paredes','M','60254854','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(5,1,'7220428','maribel','chambi','Alaves','F','60254854','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(6,1,'7220429','jorge','chambi','Paredes','M','60254854','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(7,1,'7220428','maribel','chambi','Alaves','F','60254854','C/VENEZUELA',now() ,now(), 1, 1);
INSERT INTO _personas VALUES(8,1,'7220429','mario','chambi','Paredes','M','60254854','C/VENEZUELA',now() ,now(), 1, 1);



CREATE TABLE _roles(
id_rol INT NOT NULL AUTO_INCREMENT,
rol VARCHAR(25) NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;


INSERT INTO _roles VALUES(1, 'administrador',now() ,now(), 1, 1);



CREATE TABLE _usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
id_persona int not NULL,
usuario1 VARCHAR(20) NOT NULL,
clave VARCHAR(100) NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY(id_persona) REFERENCES _personas(id_persona)
)ENGINE=INNODB;


INSERT INTO _usuarios VALUES(1,1, 'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now() ,now(), 1, 1);
INSERT INTO _usuarios VALUES(2,1, 'vendedor','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now() ,now(), 1, 1);


CREATE TABLE _usuarios_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario_rol),
FOREIGN KEY(id_usuario) REFERENCES _usuarios(id_usuario),
FOREIGN KEY(id_rol) REFERENCES _roles(id_rol)

)ENGINE=INNODB;

INSERT INTO _usuarios_roles VALUES(1, 1, 1, now(), now(), 1, 1);



CREATE TABLE _grupos(
id_grupo INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(30),
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;

INSERT INTO _grupos VALUES(1, 'HERRAMIENTA',now() ,now(), 1, 1);
INSERT INTO _grupos VALUES(2, 'BALNEARIO',now() ,now(), 1, 1);
INSERT INTO _grupos VALUES(3, 'REPORTES',now() ,now(), 1, 1); 



CREATE TABLE _opciones(
id_opcion INT NOT NULL AUTO_INCREMENT,
id_grupo INT NOT NULL,
opcion VARCHAR(150),
contenido VARCHAR(150),
orden int(10),
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY(id_grupo) REFERENCES _grupos(id_grupo)
)ENGINE=INNODB;

INSERT INTO _opciones VALUES(1,1, 'Personas','../privada/personas/personas.php',10,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(2,1, 'Usuarios','../privada/usuarios/usuarios.php',20,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(3,1, 'Roles','../privada/roles/roles.php',30,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(4,1, 'Usuarios_roles','../privada/usuarios_roles/usuarios_roles.php',40,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(5,1, 'Grupos','../privada/grupos/grupos.php',50,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(6,1, 'Opciones','../privada/opciones/opciones.php',60,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(7,1, 'Accesos','../privada/accesos/accesos.php',70,now() ,now(), 1, 1);

INSERT INTO _opciones VALUES(8,2, 'Balneario','../privada/balneario/balneario.php',10,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(9,2, 'Promocion','../privada/promocion/promocion.php',20,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(10,2, 'Producto','../privada/producto/producto.php',30,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(11,2, 'Tipo_producto','../privada/tipo_producto/tipo_producto.php',40,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(12,2, 'Cliente','../privada/cliente/cliente.php',50,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(13,2, 'Servicio_cliente','../privada/servicio_cliente/servicio_cliente.php',60,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(14,2, 'Detalle_servicio_cliente','../privada/detalle_servicio_cliente/detalle_servicio_cliente.php',70,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(15,2, 'Alquiler_local','../privada/alquiler_local/alquiler_local.php',80,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(16,2, 'Empleado','../privada/empleado/empleado.php',90,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(17,2, 'Funcion_empleado','../privada/funcion_empleado/funcion_empleado.php',100,now() ,now(), 1, 1);

INSERT INTO _opciones VALUES(18,3, 'Empleado','../privada/reportes/rpt_empleado.php',10,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(19,3, 'Producto','../privada/reportes/rpt_producto.php',20,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(20,3, 'RPT Personas Usuarios','../privada/reportes/personas_usuarios.php',30,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(21,3, 'RPT Personas_genero','../privada/reportes/rpt_personas_genero.php',40,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(22,3, 'Ficha tecnica','../privada/reportes/fichas_tecnicas_personas.php',40,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(23,3, 'RPT_productos_tipos','../privada/reportes/rpt_productos_tipos.php',50,now() ,now(), 1, 1);
INSERT INTO _opciones VALUES(24,3, 'RPT_empleado_nacionalidad','../privada/reportes/rpt_empleado_nacionalidad.php',60,now() ,now(), 1, 1);


CREATE TABLE _accesos(
id_acceso INT NOT NULL AUTO_INCREMENT,
id_opcion int NOT NULL,
id_rol int NOT NULL,
fecha_insercion TIMESTAMP NOT NULL,
fecha_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado char(1) NOT NULL,
PRIMARY KEY(id_acceso),
FOREIGN KEY(id_rol) REFERENCES _roles(id_rol),
FOREIGN KEY(id_opcion) REFERENCES _opciones(id_opcion)
)ENGINE=INNODB;

INSERT INTO _accesos VALUES(1, 1, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(2, 2, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(3, 3, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(4, 4, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(5, 5, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(6, 6, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(7, 7, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(8, 8, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(9, 9, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(10, 10, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(11, 11, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(12, 12, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(13, 13, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(14, 14, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(15, 15, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(16, 16, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(17, 17, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(18, 18, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(19, 19, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(20, 20, 1,now() ,now(), 1, 1);

INSERT INTO _accesos VALUES(21, 21, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(22, 22, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(23, 23, 1,now() ,now(), 1, 1);
INSERT INTO _accesos VALUES(24, 24, 1,now() ,now(), 1, 1);
