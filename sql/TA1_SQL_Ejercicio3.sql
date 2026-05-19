CREATE TABLE Cancion(
identificador VARCHAR(10) PRIMARY KEY,
Titulo VARCHAR(20)
);
CREATE TABLE Cancion_Disco(
identificador VARCHAR(10),
IdDisco VARCHAR(10),
PRIMARY KEY(identificador, IdDisco),
FOREIGN KEY(identificador) REFERENCES Cancion(identificador),
FOREIGN KEY(IdDisco) REFERENCES Disco(IdDisco)
);
CREATE TABLE Disco(
IdDisco VARCHAR (10) PRIMARY KEY,
Titulo VARCHAR(20),
Precio float,
IdCantante VARCHAR(10),
FOREIGN KEY (IdCantante) REFERENCES Cantante(IdCantante)
);
CREATE TABLE Cantante(
IdCantante VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(15),
Pais VARCHAR(15)
);
CREATE TABLE Genero_musical(
Id VARCHAR(10),
IdDisco VARCHAR(10),
PRIMARY KEY(Id, IdDisco),
FOREIGN KEY (IdDisco) REFERENCES Disco(IdDisco)
);