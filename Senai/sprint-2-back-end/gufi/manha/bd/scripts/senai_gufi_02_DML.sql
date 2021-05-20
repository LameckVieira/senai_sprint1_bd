-- DML

-- Define o banco de dados que ser� utilizado
USE Gufi_manha;
GO

-- Insere os tipos de usu�rios
INSERT INTO tiposUsuarios(tituloTipoUsuario)
VALUES					 ('Administrador')
						,('Comum');
GO

-- Insere os usu�rios
INSERT INTO usuarios(idTipoUsuario, nomeUsuario, email, senha)
VALUES				(1, 'Administrador', 'adm@adm.com', 'adm123')
				   ,(2, 'Caique', 'caique@email.com', 'caique123')
				   ,(2, 'Saulo', 'saulo@email.com', 'saulo123');
GO

-- Insere a institui��o
INSERT INTO instituicoes(cnpj, nomeFantasia, endereco)
VALUES					('99999999999999', 'Escola SENAI de Inform�tica', 'Al. Bar�o de Limeira, 538');
GO

-- Insere os tipos de eventos
INSERT INTO tiposEventos(tituloTipoEvento)
VALUES					('C#')
					   ,('ReactJs')
					   ,('SQL');
GO

-- Insere os eventos
INSERT INTO Eventos(idTipoEvento, idInstituicao, nomeEvento, acessoLivre, dataEvento, descricao)
VALUES			   (1, 1, 'Orienta��o a Objetos', 1, '07/04/2021', 'Conceitos sobre os pilares da programa��o orientada a objetos')
				  ,(2, 1, 'Ciclo de Vida', 0, '08/04/2021', 'Como utilizar os ciclos de vida com a biblioteca ReactJs');
GO

-- Insere as presen�as
INSERT INTO Presencas(idUsuario, idEvento, situacao)
VALUES				 (2, 2, 'n�o confirmada')
					,(3, 1, 'confirmada');
GO

-- Insere o evento
INSERT INTO Eventos(idTipoEvento, idInstituicao, nomeEvento, dataEvento, descricao)
VALUES			   (3, 1, 'Introdu��o a SQL', '09/04/2021', 'Comandos b�sicos utilizando SQL Server');
GO

-- Insere a presen�a
INSERT INTO Presencas(idUsuario, idEvento, situacao)
VALUES				 (2, 3, 'confirmada');
GO