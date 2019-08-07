USE M_SSolve

	/* ATENDIMENTO - NOME - SERVIÇO - LUGAR - DATAS*/

SELECT A.IdAtendimento, C.NomeFantasia, S.Servico, L.Lugar, FORMAT(A.DataInicio,'dd/MM/yyyy HH:mm ', 'pt-BR') 'Data Inicio', FORMAT(A.DataFim,'dd/MM/yyyy HH:mm ', 'pt-BR') 'Data Fim'
FROM Atendimentos A
JOIN Servicos S ON S.IdServico = A.IdServico 
JOIN Clientes C ON C.IdCliente = A.IdCliente
JOIN Lugares L ON L.IdLugar = A.IdLugar

	/* ATENDIMENTO - NOME - SERVIÇO - LUGAR - FUNCIONARIO - F SALARIO - DATAS*/

SELECT A.IdAtendimento, C.NomeFantasia 'Nome cliente', S.Servico, L.Lugar, F.Nome 'Nome Funcionario', F.Salario 'Salario Funcionario',  FORMAT(A.DataInicio,'dd/MM/yyyy HH:mm ', 'pt-BR') 'Data Inicio', FORMAT(A.DataFim,'dd/MM/yyyy HH:mm ', 'pt-BR') 'Data Fim'
FROM Atendimentos A
FULL JOIN Servicos S ON S.IdServico = A.IdServico 
FULL JOIN Clientes C ON C.IdCliente = A.IdCliente
FULL JOIN Lugares L ON L.IdLugar = A.IdLugar
FULL JOIN FuncionariosAtendimentos FA ON A.IdAtendimento = FA.IdAtendimento
FULL JOIN Funcionarios F ON F.IdFuncionario = FA.IdFuncionario
