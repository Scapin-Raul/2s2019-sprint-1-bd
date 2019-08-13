USE M_OpFlix

SELECT * FROM TiposTitulos
SELECT * FROM categorias
SELECT * FROM Plataformas
SELECT * FROM Favoritos

SELECT * FROM Usuarios
SELECT * FROM Titulos


-- TITULO C/ TODAS INFOS
CREATE PROCEDURE TituloCompleto 
AS
SELECT T.Nome,t.Sinopse,t.Duracao,FORMAT(T.DataLancamento,'dd/MM/yyyy', 'pt-BR') 'Data Lancamento', p.Nome Plataforma, C.Nome Categoria, tt.Tipo
FROM Titulos T
JOIN Plataformas P ON P.IdPlataforma = T.IdPlataforma
JOIN Categorias C ON C.IdCategoria = T.IdCategoria
JOIN TiposTitulos TT ON tt.IdTipoTitulo = t.IdTipoTitulo

EXEC TituloCompleto -- EXIBE TODOS TITULOS COM INFORMAÇOES COMPLETAS

SELECT U.*
FROM Usuarios U

------- CONTADORES DE TITULOS E USUARIOS 
SELECT COUNT(Titulos.IdCategoria) 'Titulos Cadastrados' FROM Titulos

SELECT COUNT(Usuarios.IdUsuario) 'Usuarios Cadastrados' FROM USUARIOS

--PROC QUE EXIBE USUARIOS SEM EXIBIR A SENHA
CREATE PROCEDURE SelecionarUsuarios
AS
SELECT IdUsuario, Nome, Email, Admin,FORMAT(DataNascimento,'dd/MM/yyyy', 'pt-BR') 'Data de Nascimento' FROM Usuarios;

DROP PROCEDURE SelecionarUsuarios

EXEC SelecionarUsuarios; 


-- PROC QUE BUSCA OS FILMES DE DETERMINADA CATEGORIA USADA COMO PARAMETRO
CREATE PROCEDURE BuscarTituloPorCategoria
@Categoria VARCHAR(250)
AS
SELECT IdTitulo, T.Nome, Sinopse , C.Nome 'Categoria', FORMAT(T.DataLancamento,'dd/MM/yyyy', 'pt-BR') 'Data Lancamento'
FROM Titulos T
JOIN Categorias C ON T.IdCategoria = c.IdCategoria
WHERE UPPER(C.Nome) = UPPER(@Categoria);

DROP PROCEDURE BuscarTituloPorCategoria

EXEC BuscarTituloPorCategoria 'aventura' --COMO PARAMETRO DEVE-SE PASSAR O NOME DA CATEGORIA


--PROC QUE EXIBE OS PROXIMOS LANCAMENTOS COM OS DIAS RESTANTES
CREATE PROCEDURE ProximosLancamento
AS
SELECT T.Nome, FORMAT(T.DataLancamento,'dd/MM/yyyy', 'pt-BR') 'Data Lancamento', DATEDIFF(day, GETDATE(), t.DataLancamento) 'Dias para o Lancamento'
FROM Titulos T 
WHERE DATEDIFF(day, GETDATE(), t.DataLancamento) > 0
ORDER BY DATEDIFF(day, GETDATE(), t.DataLancamento) ASC

EXEC ProximosLancamento -- EXIBE OS PROXIMOS LANCAMENTOS


--VIEW PARA EXIBIR OS FAVORITOS LINKADOS AO USUARIO
--PODE TEM CONDICIONAIS COM WHERE PELO NOME USUARIO 
CREATE VIEW	vwFavoritos AS
Select U.Nome 'Nome Usuario', T.nome 'Titulo Favoritado'
FROM Favoritos F
JOIN Usuarios U ON u.IdUsuario = f.IdUsuario
JOIN Titulos T ON T.IdTitulo = F.IdTitulo

Select * from vwFavoritos where [Nome Usuario] = 'Roberto' 


--PROC QUE EXIBE O STATUS DO TITULO E CASO NAO TENHA SIDO LANCADO OS DIAS QUE FALTAM
CREATE PROCEDURE FoiLancadoOuNao AS 
SELECT T.Nome, FORMAT(T.DataLancamento,'dd/MM/yyyy', 'pt-BR') 'Data Lancamento',
CASE
    WHEN DATEDIFF(day, GETDATE(), T.DataLancamento) > 0 THEN 'Não lancado'
    ELSE 'Ja lancado'
END 'Status',
CASE
	WHEN DATEDIFF(day, GETDATE(), T.DataLancamento) > 0 THEN DATEDIFF(day, GETDATE(), T.DataLancamento)
	ELSE 0
END 'Dias para Lancamento'
FROM Titulos T 
ORDER BY DATEDIFF(day, GETDATE(), T.DataLancamento) DESC

EXEC FoiLancadoOuNao


--------------------------------TODAS FUNÇOES--------------------------------
EXEC TituloCompleto -- EXIBE TODOS TITULOS COM INFORMAÇOES COMPLETAS
EXEC SelecionarUsuarios; --EXIBE USUARIOS SEM EXIBIR A SENHA
EXEC BuscarTituloPorCategoria 'aventura' --EXIBE OS TITULOS DE UMA DETERMINADA CATEGORIA, DEVE-SE PASSAR O NOME DA CATEGORIA COMO PARAMETRO
EXEC ProximosLancamento -- EXIBE OS PROXIMOS LANCAMENTOS COM DIAS RESTANTES
Select * FROM vwFavoritos --VIEW PARA EXIBIR OS TITULOS FAVORITOS DE UM USUARIO, PODE TEM CONDICIONAIS COM WHERE PELO NOME USUARIO 
WHERE [Nome Usuario] = 'NOME DO USUARIO' 
EXEC FoiLancadoOuNao --EXIBE O STATUS DO TITULO E CASO NAO TENHA SIDO LANCADO OS DIAS QUE FALTAM