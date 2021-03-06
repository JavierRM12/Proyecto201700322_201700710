CREATE TABLE USUARIO (
	ID_USUARIO INTEGER IDENTITY(1,1) NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	APELLIDO VARCHAR(50) NOT NULL,
	USUARIO VARCHAR (50) NOT NULL,
	TIPO_USR VARCHAR (50) NOT NULL, 
	NACIMIENTO DATE NOT NULL,
	CONTRASEŅA VARCHAR(50) NOT NULL
);

CREATE TABLE BITACORA (
	ID_BITACORA INTEGER IDENTITY(1,1) NOT NULL PRIMARY KEY,
	FECHA DATETIME,
	USUARIO VARCHAR(50) NOT NULL,
	DIRECCION_IP VARCHAR(50) NOT NULL,
	ACCION VARCHAR(254)
);

CREATE TABLE EDITORIAL(
ID_EDITORIAL INTEGER IDENTITY(1,1) NOT NULL PRIMARY KEY,
NOMBRE VARCHAR(50) NOT NULL,
DIRECCION VARCHAR(50) NOT NULL,
TELEFONO INTEGER NOT NULL
);

CREATE TABLE GENERO(
ID_GENERO INTEGER IDENTITY(1,1) NOT NULL PRIMARY KEY,
NOMBRE VARCHAR(50) NOT NULL
);

CREATE TABLE LIBRO (
ID_LIBRO INTEGER IDENTITY(1,1) NOT NULL PRIMARY KEY,
IDEDITORIAL INTEGER   NOT NULL,
IDGENERO INTEGER NOT NULL,
TITULO VARCHAR (50) NOT NULL,
AUTOR VARCHAR (50) NOT NULL,
CANTIDAD INT NOT NULL,
CONSTRAINT FK_EDITORIAL FOREIGN KEY (IDEDITORIAL) REFERENCES EDITORIAL(ID_EDITORIAL),
CONSTRAINT FK_GENERO FOREIGN KEY (IDGENERO) REFERENCES GENERO(ID_GENERO)
);

CREATE TABLE PRESTAMO(
ID_PRESTAMO INTEGER IDENTITY(1,1) NOT  NULL PRIMARY KEY,
ESTATUS BIT NOT NULL,
IDUSUARIO INTEGER NOT NULL,
IDLIBRO INTEGER NOT NULL,
CONSTRAINT FK_USUARIO FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO(ID_USUARIO),
CONSTRAINT FK_LIBRO FOREIGN KEY (IDLIBRO) REFERENCES LIBRO(ID_LIBRO)
);

Select * from PRESTAMO

INSERT INTO USUARIO VALUES('Prueba','apellido','usuario1','Administrador','12/12/1998','contra1');
Select * from USUARIO
INSERT INTO EDITORIAL VALUES('Santa','direccion',54454);
Select *from EDITORIAL


