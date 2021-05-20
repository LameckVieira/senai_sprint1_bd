-- Define qual banco de dados ser� utilizado
USE InLock_Games;
GO

-- Insere os tipos de usu�rio
INSERT INTO TiposUsuario(Titulo)
VALUES					('Administrador')
					   ,('Cliente');
GO

-- Insere os usu�rios
INSERT INTO Usuarios(Email, Senha, IdTipoUsuario)
VALUES				('admin@admin.com','admin',1)
				   ,('cliente@cliente.com','cliente',2);
GO

-- Insere os est�dios
INSERT INTO Estudios(NomeEstudio)
VALUES				('Blizzard')
				   ,('Rockstar Studios')
				   ,('Square Enix');
GO

-- Insere os jogos
INSERT INTO Jogos(NomeJogo, Descricao, DataLancamento, Valor, IdEstudio)
VALUES			 ('Diablo 3','� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou um f�','2012-05-15','99.00',1)
				,('Red Dead Redemption II','jogo eletr�nico de a��o-aventura western','2018-10-26','120.00',2);
GO