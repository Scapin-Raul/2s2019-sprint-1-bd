CREATE DATABASE M_SSolve

USE M_SSolve

CREATE TABLE Clientes(
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR(200),
	Cnpj INT UNIQUE,
	RazaoSocial VARCHAR(200),
	Endereco VARCHAR(200),
)


CREATE TABLE Lugares(
	IdLugar INT PRIMARY KEY IDENTITY,
	Lugar VARCHAR(200)
)

CREATE TABLE Servicos(
	IdServico INT PRIMARY KEY IDENTITY,
	Servico VARCHAR(200),
	Preco INT
)

CREATE TABLE Funcionarios(
	IdFuncionario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200),
	Salario INT
)

CREATE TABLE Atendimentos(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdCliente INT FOREIGN KEY REFERENCES Clientes(IdCliente),
	IdServico INT FOREIGN KEY REFERENCES Servicos(IdServico),
	IdLugar INT FOREIGN KEY REFERENCES Lugares(IdLugar),
	DataInicio DATETIME,
	DataFim DATETIME,
)

CREATE TABLE FuncionariosAtendimentos(
	IdAtendimento INT FOREIGN KEY REFERENCES Atendimentos(IdAtendimento),
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionario),
)
