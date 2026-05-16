#Creacion de tablas
CREATE TABLE Circuito(
IdCircuito VARCHAR(15) PRIMARY KEY
);
CREATE TABLE Componente(
IdComponente VARCHAR(15) PRIMARY KEY,
IdCircuito VARCHAR(15) NOT NULL,
Voltaje float,
Corriente float,
Resistencia float,
Potencia float,
FOREIGN KEY (IdCircuito) REFERENCES Circuito(IdCircuito)
);
CREATE TABLE Medida(
IdComponente VARCHAR(15) NOT NULL,
TipoMedida ENUM("Volt", "Ampere", "Ohm", "Watts") NOT NULL,
PRIMARY KEY (IdComponente,TipoMedida)
);
CREATE TABLE Switch(
IdComponente VARCHAR(15) PRIMARY KEY,
Voltaje float,
Corriente float,
Resistencia float,
Potencia float,
Estado boolean NOT NULL
);
CREATE TABLE Fuente_de_Poder(
IdComponente VARCHAR(15) PRIMARY KEY,
Voltaje float,
Corriente float,
Resistencia float,
Potencia float
);
CREATE TABLE Resistencia_Electrica(
IdComponente VARCHAR(15) PRIMARY KEY,
Voltaje float,
Corriente float,
Resistencia float,
Potencia float
);
CREATE TABLE Led(
IdComponente VARCHAR(15) PRIMARY KEY,
Voltaje float,
Corriente float,
Resistencia float,
Potencia float,
Estado boolean NOT NULL
);
CREATE TABLE Capacitor(
IdComponente VARCHAR(15) PRIMARY KEY,
Voltaje float,
Corriente float,
Resistencia float,
Potencia float,
Reactancia float NOT NULL
);
#Inserciones
INSERT INTO Circuito(IdCircuito)
VALUES
('A00123'),
('B03978'),
('B5302'),
('G7592'),
('L11037');
INSERT INTO Componente(IdComponente, IdCircuito, Voltaje, Corriente, Resistencia, Potencia)
VALUES
('Fue001', 'L11037', 20.0, 0.03, 500.0, 1000.0),
('Res9887', 'A00123', 5.0, 0.005, 1000.0, 2500.1),
('Res7493', 'B03978', 10.0, 0.02, 300.0, 8000.3),
('Res1253', ' L11037', 10.0, 0.02, 300.0, 8000.3),
('Res7890', ' L11037', 10.0, 0.02, 300.0, 8000.3);
INSERT INTO Led(IdComponente, Voltaje, Corriente, Resistencia, Potencia, Estado)
VALUES
('Led9677', 'L11037', 20.0, 0.03, 0.01, 0.1, TRUE),
('Led0000001', 'A00123', 5.0, 0.004, 0.1, 0.02, FALSE),
('Led0027', 'G7592', 24.0, 0.13, 0.01, 0.2, FALSE),
('Led8479', 'B5302', 20.3, 0.73, 0.01, 0.1, TRUE),
('Led76983', 'A00123', 5.0, 0.002, 0.001, 0.6, FALSE);
#Consultas:
SELECT *
FROM   Componente
WHERE  Voltaje >= 10.0;
SELECT IdComponente, IdCircuito
FROM   Componente;
SELECT IdComponente, Estado
FROM   Led
WHERE  Estado = TRUE;
SELECT IdComponente, IdCircuito, Voltaje
FROM   Componente
JOIN   Circuito ON Componente.IdCircuito = Circuito.IdCircuito;
SELECT   Resistencia, AVG(Resistencia) AS resistencia_promedio
FROM     Componente
WHERE    Voltaje = 10.0
GROUP BY Resistencia
HAVING   AVG(Resistencia) >= 300.0;


