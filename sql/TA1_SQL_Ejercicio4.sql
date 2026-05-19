CREATE TABLE Provincia(
codigo_de_provincia VARCHAR(10) PRIMARY KEY,
nombre_de_provincia VARCHAR(15)
);
CREATE TABLE Paquete(
codigo_de_paquete VARCHAR(10) PRIMARY KEY,
direccion_de_destinatario VARCHAR(20),
descripcion VARCHAR(100),
destinatario VARCHAR(20),
codigo_de_provincia VARCHAR(10),
cedula VARCHAR(10),
FOREIGN KEY (codigo_de_provincia) REFERENCES Provincia(codigo_de_provincia),
FOREIGN KEY (cedula) REFERENCES Camionero(cedula)
);
CREATE TABLE Camionero(
cedula VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(15),
telefono VARCHAR(10),
direccion VARCHAR(20),
salario float,
poblacion INT
);
CREATE TABLE Conduce(
cedula VARCHAR(10),
matricula VARCHAR(8),
fecha DATE,
PRIMARY KEY(cedula, matricula),
FOREIGN KEY (cedula) REFERENCES Camionero(cedula),
FOREIGN KEY (matricula) REFERENCES Camion(matricula)
);
CREATE TABLE Camion(
matricula VARCHAR(8) PRIMARY KEY,
modelo VARCHAR(10),
tipo VARCHAR(10),
potencia INT
);