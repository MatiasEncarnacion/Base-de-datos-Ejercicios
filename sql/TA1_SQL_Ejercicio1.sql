CREATE TABLE Manager(
IdManager VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(20)
);
CREATE TABLE Artista(
NIF VARCHAR(10) PRIMARY KEY,
Nombre_Completo VARCHAR(30),
IdManager VARCHAR(10),
IdEvento VARCHAR(10),
FOREIGN KEY (IdManager) REFERENCES Manager(IdManager),
FOREIGN KEY (IdEvento) REFERENCES Evento(IdEvento)
);
CREATE TABLE Evento(
IdEvento VARCHAR(10) PRIMARY KEY,
Fecha_de_evento DATE,
Numero_de_asistentes INT
);