USE M_SSolve

INSERT Clientes(NomeFantasia,Cnpj,RazaoSocial,Endereco)
	VALUES('Senai',111,'SERVIÇO NACIONAL DE APRENDIZAGEM INDUSTRIAL','Rua AAA'),('Sesi',222,'SERVIÇO SOCIAL DA INDUSTRIA','Rua BBB'),('Habib s',333,'Ms Arabian Food Industria E Comercio De Alimentos Ltda','Rua CCC'),('Uber',444,'UBER DO BRASIL TECNOLOGIA LTDA.','Rua DDD')

SELECT * FROM Clientes

INSERT Lugares(Lugar)
	VALUES('Cozinha'),('Quarto'),('Banheiro'),('Garagem')

SELECT * FROM Lugares

INSERT Servicos(Servico,Preco)
	VALUES('Manutencao',75),('Troca',50),('Limpeza',40),('Instalacao',120)

INSERT Funcionarios(Nome,Salario)
	VALUES('Cleiton',1500),('Joao',1650),('Alberto',1500),('Damares',1600)

INSERT Atendimentos(IdCliente,IdServico,IdLugar,DataInicio,DataFim)
	VALUES	(1,4,4,'2019-08-12T18:30:00','2019-08-13T18:30:00'),(2,2,3,'2019-08-11T11:30:00','2019-08-11T18:30:00'),
			(3,1,3,'2019-08-13T11:00:00','2019-08-15T14:30:00'),(4,4,1,'2019-08-11T10:00:00','2019-08-13T18:00:00'),
			(4,2,1,'2019-08-15T18:30:00','2019-08-16T12:00:00')

SELECT * FROM Atendimentos
SELECT * FROM Funcionarios
SELECT * FROM Lugares
SELECT * FROM Clientes

INSERT FuncionariosAtendimentos(IdAtendimento,IdFuncionario)
	VALUES(1,3),(1,2),(2,4),(3,1),(4,3),(4,4),(5,2)