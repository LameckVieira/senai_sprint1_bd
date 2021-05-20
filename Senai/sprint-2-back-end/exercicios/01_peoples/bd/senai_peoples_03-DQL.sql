-- Define o banco de dados que ser� utilizado
USE Peoples;

-- Exibe todas as informa��es de todos os funcion�rios
SELECT * FROM Funcionarios;

-- Exibe todos os funcion�rios
SELECT IdFuncionario, Nome, Sobrenome 
FROM Funcionarios;

-- Exibe o funcion�rio com ID = 1
SELECT IdFuncionario, Nome, Sobrenome 
FROM Funcionarios 
WHERE IdFuncionario = 1;

-- Exibe o funcion�rio que tenha o nome Catarina
SELECT IdFuncionario, Nome, Sobrenome 
FROM Funcionarios 
WHERE Nome = 'Catarina';

-- Exibe o nome completo dos funcion�rios
SELECT IdFuncionario, CONCAT (Nome,' ',Sobrenome) AS [Nome Completo], 
DataNascimento FROM Funcionarios;

-- Exibe todos os funcion�rios de forma ordenada
SELECT IdFuncionario, Nome, Sobrenome, DataNascimento 
FROM Funcionarios 
ORDER BY Nome DESC;
