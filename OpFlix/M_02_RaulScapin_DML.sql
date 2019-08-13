USE M_OPFLIX

INSERT Categorias(Nome)
	VALUES('Ficcao'),('Drama'),('Acao'),('Infantil'),('Aventura'),('Fantasia'),('Comedia')

INSERT Plataformas(Nome)
	VALUES ('Netflix'),('Cinema'),('Amazon'),('Outro')

INSERT Usuarios(Nome,Email,Senha,DataNascimento,Admin)
	VALUES ('Erik','erik@email.com','123456','1999-01-30',1),('Cassiana','cassiana@email.com','123456','1993-07-01',1),('Helena','helena@email.com','123456','1997-08-07',0),('Roberto','rob@email.com','3110','2005-01-24',0),('Raul','ra@gmail.com','admin123','2002-04-19',1),('Cleiton','c@gmail.com','123456','1999-05-12',0),('Ricardo','ri@gmail.com','654321','2000-08-22',0)

INSERT TiposTitulos(Tipo)
	VALUES('Filme'),('Serie'),('Documentario')

INSERT Titulos(Nome,Sinopse,Duracao,DataLancamento,IdPlataforma,IdCategoria,IdTipoTitulo)
	VALUES('Viuva Negra','Uma agente inflitrada bate em macho.',165,'2020-05-01',2,3,1),('Doutor_Estranho_2','Doutor Estranho usa magia para bater em seus inimigos.', 173, '2021-11-05',2,1,1),('Batwoman','A nova super heroina.',200,'2019-10-06',4,3,2),('Frozen 2','A nevasca chegou.',140,'2019-02-13',2,4,1),('Turma da Monica Licoes','Os famoso jovens de Mauricio de Souza em aventuras mirabolantes.',150, '2019-08-02',2,4,1)

INSERT Titulos(Nome,Sinopse,Duracao,DataLancamento,IdPlataforma,IdCategoria,IdTipoTitulo)
	VALUES('Sonic O Filme','O ourico mais querido dos jogos agora nas telinhas.',130,'2019-05-25',2,4,1),('Flash','Ele corre muito rapido.'	,3000,'2014-10-07',	1,	1,	2),('Dark',	'Viagem temporal.'	,1000,'2017-10-10'	,1	,1,2),('Avatar 2',	'Os caras grandes azuis.'	,180,'2020-12-18'	,2,	1,	1),('Mulan',	'A moca que finge ser homem para se alistar no exercito.',	155, '2020-05-27',	2,	5,	1)

INSERT Titulos(Nome,Sinopse,Duracao,DataLancamento,IdPlataforma,IdCategoria,IdTipoTitulo)
	VALUES('Malevola 2',	'Novas ameacas chegam ao reino de Malevola.',	144,'2020-04-09',	2,	6,	1),('Godzilla Vs Kong','Os dois gigantes saem na porrada.',	180,'2020-04-22',	2,	1,	1),('Animais Fantasticos 3',	'A continuacao da serie de filmes.',	176,'2020-11-19',	2,	6,	1),('Minions 2',	'Os pequeninos da Disney estao de volta.',135,'2020-06-02',	2,	4,	1),('Barbie',	'As princesas da Disney agora viraram Live Action.',	144, '2020-04-14',	2,	7,	1)

INSERT Favoritos(IdUsuario,IdTitulo)
	VALUES(5,5),(5,6),(2,1),(2,4),(4,9),(6,12),(6,13),(7,16),(7,8)

UPDATE Titulos
SET Nome = REPLACE(Nome,'_',' ')


select * from TiposTitulos
select * from categorias
select * from Plataformas
select * from Favoritos
select * from Usuarios
select * from Titulos
