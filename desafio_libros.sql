CREATE TABLE Libro (
codigo_libro INT PRIMARY KEY,
titulo VARCHAR(50)
);

CREATE TABLE Editorial (
codigo_editorial INT PRIMARY KEY,
editorial VARCHAR(50)
);

CREATE TABLE Autor(
codigo_autor INT PRIMARY KEY,
autor VARCHAR(20)
);

CREATE TABLE Lector(
codigo_lector INT PRIMARY KEY,
nombre VARCHAR(20),
apellido_paterno VARCHAR(20),
apellido_materno VARCHAR(20)
);

CREATE TABLE Prestamo(
codigo_libro INT,
codigo_lector INT,
fecha_devolucion DATE,
FOREIGN KEY (codigo_libro)REFERENCES Libro(codigo_libro),
FOREIGN KEY (codigo_lector) REFERENCES Lector(codigo_lector)
);

CREATE TABLE LibroEditorial(
codigo_libro INT,
codigo_editorial INT,
FOREIGN KEY (codigo_libro)REFERENCES Libro(codigo_libro),
FOREIGN KEY (codigo_editorial) REFERENCES Editorial(codigo_editorial)
);

CREATE TABLE LibroAutor(
codigo_libro INT,
codigo_autor INT,
FOREIGN KEY (codigo_libro)REFERENCES Libro(codigo_libro),
FOREIGN KEY (codigo_autor) REFERENCES Autor(codigo_autor)
);