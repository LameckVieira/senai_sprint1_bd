USE Filmes;

--			Tabela	 Coluna
INSERT INTO Generos (Nome)
VALUES				('A��o')
				   ,('Romance');

INSERT INTO Generos (Nome)
VALUES				('Aventura');

INSERT INTO Filmes (Titulo, idGenero)
VALUES			   ('Rambo', 1)
				  ,('Vingadores', 1)
				  ,('Ghost', 2)
				  ,('Di�rio de uma paix�o', 2);

INSERT INTO Filmes (Titulo)
VALUES			   ('Homem-Aranha')
				  ,('Eu sou a Lenda');

UPDATE Generos
SET Nome = 'Romance'
WHERE idGenero = 2;

DELETE FROM Generos
WHERE idGenero = 3;

INSERT INTO Usuarios(email, senha, permissao)
VALUES				('saulo@email.com', '123', 'comum')
				   ,('adm@adm.com', '123', 'administrador');
GO