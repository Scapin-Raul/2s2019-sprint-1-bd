USE M_Gufos

INSERT Usuarios(Nome,Email,Senha,Permissao)
	VALUES('Administrador','admin@admin.com','123456','Administrador');

INSERT Usuarios(Nome,Email,Senha,Permissao)
	VALUES('Josias Cabele','jc@senai.com','123456','Aluno');

SELECT * FROM Usuarios

INSERT Categorias (Nome)
	VALUES('Jogos'),('Meetup'),('Futebol');

SELECT * FROM Categorias
ORDER BY IdCategoria ASC


INSERT Eventos(Titulo, Descricao,DataEvento,Localizacao,IdCategoria)
	VALUES('Ping-Pong','Campeonato de ping-pong redes contra dev',GETDATE(),('Alameda Barão de Limeira, 139'),1);


INSERT Eventos(Titulo, Descricao,DataEvento,Localizacao,IdCategoria)
	VALUES('Meetup','','2019-08-07T18:30:00',('Alameda Barão de Limeira, 139'),2);

SELECT * FROM Eventos

INSERT Presencas (IdEvento,IdUsuario)
	VALUES(1,2),(3,2)

SELECT * FROM Presencas
