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

ALTER TABLE Titulos
	ADD Classificacao VARCHAR(20)

ALTER TABLE Usuarios
	 ADD Imagem VARCHAR(MAX)

	UPDATE Usuarios
	SET IMAGEM = 'https://i.ytimg.com/vi/Hlz7ass3gRk/maxresdefault.jpg'
	
	UPDATE Usuarios
	SET IMAGEM = 'https://s.yimg.com/ny/api/res/1.2/S_.T.QCJ1jjT8geJAvkNFg--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/b486faff10c2459650d92f309bad2527'
	WHERE IdUsuario < 5

	UPDATE USUARIOS
	SET imagem = 'https://rockntech.com.br/wp-content/uploads/2014/12/gatos-famosos-na-internet_13.jpg'
	WHERE IdUsuario <4

	UPDATE USUARIOS
	SET imagem = 'https://www.tediado.com.br/wp-content/uploads/2019/02/fotos-de-gatos-maine-coon-que-sao-super-majestosos-e-fofos-01.jpg'
	WHERE IdUsuario <3

select * from TiposTitulos
select * from categorias
select * from Plataformas
select * from Favoritos
select * from Usuarios
select * from Titulos
