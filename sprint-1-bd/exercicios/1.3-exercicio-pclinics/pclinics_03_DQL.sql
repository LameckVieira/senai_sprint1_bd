USE Pclinics;
GO

SELECT * FROM Clinicas;
GO

SELECT * FROM TiposPets;
GO

SELECT * FROM Racas;
GO

SELECT * FROM Donos;
GO

SELECT * FROM Veterinarios;
GO

SELECT * FROM Pets;
GO

SELECT * FROM Atendimentos;
GO

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
SELECT V.Nome AS Veterin�rio, V.CRMV, C.RazaoSocial AS Clinica FROM Veterinarios V
INNER JOIN Clinicas C
ON V.IdClinica = C.IdClinica;
GO

-- listar todas as ra�as que come�am com a letra S
SELECT Racas.Descricao AS Ra�as FROM Racas
WHERE Racas.Descricao LIKE 'S%';
GO

-- listar todos os tipos de pet que terminam com a letra O
SELECT TiposPets.Descricao AS [Tipos de pets] FROM TiposPets
WHERE TiposPets.Descricao LIKE '%O';
GO

-- listar todos os pets mostrando os nomes dos seus donos
SELECT P.Nome AS Pet, D.Nome AS Dono FROM Pets P
INNER JOIN Donos D
ON P.IdDono = D.IdDono
GO

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, 
-- o nome, a ra�a e o tipo do pet que foi atendido,
-- o nome do dono do pet e o nome da cl�nica onde o pet foi atendido
SELECT A.DataAtendimento AS [Data da consulta], A.Descricao, V.Nome AS Veterin�rio,
P.Nome AS Pet, R.Descricao AS Ra�a, TP.Descricao AS [Tipo do pet], D.Nome AS Dono,
C.RazaoSocial AS Cl�nica
FROM Atendimentos A
INNER JOIN Veterinarios V
ON A.IdVeterinario = V.IdVeterinario
INNER JOIN Pets P
ON A.IdPet = P.IdPet
INNER JOIN Racas R
ON P.IdRaca = R.IdRaca
INNER JOIN TiposPets TP
ON R.IdTipoPet = TP.IdTipoPet
INNER JOIN Donos D
ON P.IdDono = D.IdDono
INNER JOIN Clinicas C
ON V.IdClinica = C.IdClinica;
GO