--entrar no banco de dados 
USE Senai;

--consultar toda tabela "Alunos"
SELECT * FROM Alunos;

--Consultar toda tabela "DadosAlunos"
SELECT * FROM DadosAlunos;

--Consultar a m�dia do aluno - function tipo escalar 
SELECT dbo.Media('Camila')AS [M�dia];

--Consultar nome e 5� nota do aluno que for maior do que o par�metro 
-- function tipo Tabela embutida (Inline)
SELECT Nome,Nota5
FROM MostrarNota(3);

--Consultar nome,1� nota, curso e periodo que o aluno estuda
--function tipo multi-instru��es (Multi-statement)
SELECT * FROM MultiTabelas();

--exemplo de fun��o dentro de fun��o
SELECT * FROM MultiTabelas1();
