
USE Clientes


INSERT INTO InformacoesClientes  (NomeCliente, NomeContato, Endereco, Cidade, CodigoPostal, Pais)
								 ('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', 12209, 'Alemanha' )
								,('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constituci�n 2222','M�xico D.F.',05021,'M�xico')
								,('Antonio Moreno','Antonio Moreno', 'Mataderos 2312', 'M�xico D.F', 05023, 'M�xico')
								,('Tom�s Santos Silva', 'Tom�s Silva', 'Morumbi 253', 'S�o Paulo', 02564, 'Brasil')
								,('Cristina Silveira Santos','Cristina Silveira','','Rio de Janeiro', 05684,'Brasil')


UPDATE InformacoesClientes
SET CodigoPostal = 02564
WHERE ClienteID  = 5
SELECT * FROM InformacoesClientes