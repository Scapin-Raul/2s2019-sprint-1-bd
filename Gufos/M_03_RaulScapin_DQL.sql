USE M_Gufos

SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Eventos ORDER BY IdEvento ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Presencas

SELECT E.IdCategoria, E.Titulo, E.DataEvento, C.Nome
FROM Eventos E JOIN  Categorias C ON C.IdCategoria = E.IdCategoria

SELECT U.IdUsuario, u.Nome, E.*
FROM Presencas P 
full JOIN Usuarios U on p.IdUsuario = u.IdUsuario
full JOIN Eventos E on E.IdEvento = p.IdEvento


SELECT U.IdUsuario, u.Nome, E.Titulo, E.DataEvento, c.Nome Categoria
FROM Presencas P 
full JOIN Usuarios U on p.IdUsuario = u.IdUsuario
full JOIN Eventos E on E.IdEvento = p.IdEvento
JOIN Categorias C on E.IdCategoria = c.IdCategoria