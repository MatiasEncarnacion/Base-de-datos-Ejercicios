CREATE TABLE Personal_de_la_clinica(
codigo VARCHAR(10) PRIMARY KEY,
cedula VARCHAR(10),
nombre VARCHAR(20)
);
CREATE TABLE Auxiliar(
codigo VARCHAR(10) PRIMARY KEY,
base_de_cotizacion float,
FOREIGN KEY (codigo) REFERENCES Personal_de_la_clinica(codigo)
);
CREATE TABLE Veterinario(
codigo VARCHAR(10) PRIMARY KEY,
fecha_alta DATE,
especialidad VARCHAR(15),
FOREIGN KEY (codigo) REFERENCES Personal_de_la_clinica(codigo)
);
CREATE TABLE Pasa_consulta(
codigo VARCHAR(10),
identificador VARCHAR(10),
fecha_consulta DATE,
diagnostico VARCHAR(100),
PRIMARY KEY(codigo, identificador),
FOREIGN KEY (codigo) REFERENCES Veterinario(codigo),
FOREIGN KEY (identificador) REFERENCES Mascota(identificador)
);
CREATE TABLE Mascota(
identificador VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(15),
fecha_nacimiento DATE,
tipo ENUM('Perro', 'Gato', 'Conejo', 'Orangutan'),
cedula VARCHAR(10),
FOREIGN KEY (cedula) REFERENCES Propietario(cedula)
);
CREATE TABLE Propietario(
cedula VARCHAR(10) PRIMARY KEY,
apellidos VARCHAR(30),
nombres VARCHAR(30),
direccion VARCHAR(30)
);
CREATE TABLE Telefonos(
cedula VARCHAR(10),
telefono VARCHAR(10),
PRIMARY KEY(cedula, telefono),
FOREIGN KEY (cedula) REFERENCES Propietario(cedula)
);
CREATE TABLE Familiar(
cedulaF VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(15),
telefono VARCHAR(10),
cedula VARCHAR(10),
FOREIGN KEY (cedula) REFERENCES Propietario(cedula)
);