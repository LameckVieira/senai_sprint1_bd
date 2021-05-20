--TRIGGER INSTEAD OF
CREATE TRIGGER trg_mensagem_instead_of -- Nome do trigger
ON Produtos -- Atribui��o � tabela produtos
INSTEAD OF INSERT -- Ao inv�s de inserir o registro, ser� executado o c�digo do trigger
AS
PRINT 'Hoje n�o'; -- C�digo do trigger

DROP TRIGGER trg_mensagem_after;
DROP TRIGGER trg_mensagem_instead_of;











CREATE TABLE Produtos
(
	IdProduto		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(100),
	Preco			DECIMAL(10, 2)
);



-- INSERIR DADOS NA TABELA PRODUTOS
INSERT INTO Produtos (Nome, Preco)
VALUES ('Bolacha', 2.50);

-- EXIBIR DADOS DA TABELA PRODUTOS
SELECT Nome AS Produto, FORMAT(Preco, 'c', 'pt-br') AS [Pre�o] FROM Produtos;