-- Define o banco de dados que ser� utilizado
USE Peoples;

-- Insere dois funcion�rios
INSERT INTO Funcionarios	(Nome, Sobrenome) 
VALUES						('Catarina', 'Strada')
							,('Tadeu', 'Vitelli');

-- Atualiza o valor da coluna DataNascimento
UPDATE Funcionarios SET DataNascimento = '1993-03-17';

SELECT * FROM Funcionarios;