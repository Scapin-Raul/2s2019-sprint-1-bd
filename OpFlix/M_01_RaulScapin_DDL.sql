CREATE DATABASE M_OpFlix

USE M_opflix

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL,
	Email VARCHAR(200) NOT NULL UNIQUE,
	Senha VARCHAR(200) NOT NULL,
	Admin BIT DEFAULT 'FALSE',
	DataNascimento Date
);
CREATE TABLE Plataformas(
	IdPlataforma INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL,
);

CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL,
);

CREATE TABLE TiposTitulos(
	IdTipoTitulo INT PRIMARY KEY IDENTITY,
	Tipo VARCHAR(200) NOT NULL,
);

CREATE TABLE Titulos( 
	IdTitulo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL,
	Sinopse TEXT,
	Duracao INT,
	DataLancamento DATE,
	IdPlataforma INT FOREIGN KEY REFERENCES Plataformas(IdPlataforma),
	IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria),
	IdTipoTitulo INT FOREIGN KEY REFERENCES TiposTitulos(IdTipoTitulo)
);

CREATE TABLE Favoritos(
	IdTitulo INT FOREIGN KEY REFERENCES Titulos(IdTitulo),
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)

);





select * from TiposTitulos
select * from categorias
select * from Plataformas
select * from Favoritos
select * from Usuarios
select * from Titulos
