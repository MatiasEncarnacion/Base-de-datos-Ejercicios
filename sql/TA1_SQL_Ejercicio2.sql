CREATE TABLE Cliente(
IdCliente VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(15),
Apellidos VARCHAR(30),
Direccion VARCHAR(30),
Numero_telefonico VARCHAR(10)
);
CREATE TABLE Compra(
IdCliente VARCHAR(10),
IdProducto VARCHAR(10),
Fecha_de_compra DATE,
PRIMARY KEY(IdCliente, IdProducto),
FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto)
);
CREATE TABLE Producto(
IdProducto VARCHAR(10) PRIMARY KEY,
Descripción VARCHAR(100),
Precio float,
Numero_de_existencias INT
);
CREATE TABLE Proveedor(
IdProveedor VARCHAR(10) PRIMARY KEY,
Nombres VARCHAR(30),
Apellidos VARCHAR(30),
Direccion VARCHAR(30),
Provincia VARCHAR(15),
Numero_telefonico VARCHAR(10)
);