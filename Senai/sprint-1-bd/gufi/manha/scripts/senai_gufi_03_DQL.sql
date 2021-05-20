-- DQL

-- Define o banco de dados que ser� utilizado
USE Gufi_manha;
GO

-- Lista todos os tipos de usu�rios
SELECT * FROM tiposUsuarios;

-- Lista todos os usu�rios
SELECT * FROM usuarios;

-- Lista todas as institui��es
SELECT * FROM instituicoes;

-- Lista todos os tipos de eventos
SELECT * FROM tiposEventos;

-- Lista todos os eventos
SELECT * FROM Eventos;

-- Lista todas as presen�as
SELECT * FROM Presencas;

-- Seleciona os dados dos usu�rios mostrando o tipo de usu�rio
SELECT idUsuario, tituloTipoUsuario, nomeUsuario, email FROM usuarios
INNER JOIN tiposUsuarios
ON usuarios.idTipoUsuario = tiposUsuarios.idTipoUsuario;

-- Seleciona os dados dos eventos, da institui��o e dos tipos de eventos
SELECT nomeFantasia [Local], idEvento, tituloTipoEvento, nomeEvento, acessoLivre, 
dataEvento, descricao
FROM Eventos E
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicoes I
ON E.idInstituicao = I.idInstituicao;

-- Seleciona os dados dos eventos, da institui��o, dos tipos de eventos e dos usu�rios
SELECT nomeUsuario Usuario, email, nomeEvento Evento, tituloTipoEvento Tema, dataEvento [Data]
FROM usuarios U
INNER JOIN Presencas P
ON P.idUsuario = U.idUsuario
INNER JOIN Eventos E
ON P.idEvento = E.idEvento
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento;

-- Busca um usu�rio atrav�s do seu e-mail e senha
SELECT tituloTipoUsuario [Permiss�o], nomeUsuario, email 
FROM usuarios U 
INNER JOIN tiposUsuarios TU 
ON U.idTipoUsuario = TU.idTipoUsuario 
WHERE email = 'saulo@email.com' AND senha = 'saulo123';