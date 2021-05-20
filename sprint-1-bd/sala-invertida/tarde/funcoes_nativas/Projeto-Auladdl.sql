CREATE DATABASE ProjetoAula;

USE ProjetoAula;

--Cria��o da Tabela escola
CREATE TABLE Escolas
(
    IdEscola INT PRIMARY KEY IDENTITY,
    NomeEscola VARCHAR(255) NOT NULL
);
--Cria��o da Tabela professores
CREATE TABLE Professores
(
    idProfessor INT PRIMARY KEY IDENTITY,
    NomeProfessor VARCHAR(255) NOT NULL,
    Idade FLOAT(53) NOT NULL,
    idMateria INT FOREIGN KEY REFERENCES Materias(idMateria),
	IdEscola INT FOREIGN KEY REFERENCES Escolas(IdEscola)
);
--Cria��o da tabela Mat�rias
CREATE TABLE Materias
(
    idMateria INT PRIMARY KEY IDENTITY,
    NomeMateria VARCHAR(255) NOT NULL
);
--Cria��o da Tabela Aluno
CREATE TABLE Aluno
(
    idAluno INT PRIMARY KEY IDENTITY,
    NomeAluno VARCHAR(255) NOT NULL,
    Responsavel VARCHAR(255) NOT NULL
);
--Cria��o da Tabela Sala
CREATE TABLE Sala
(
    idSala INT PRIMARY KEY IDENTITY,
    NumeroSala VARCHAR(255) NOT NULL,
    idProfessor INT FOREIGN KEY REFERENCES Professores(idProfessor),
    Serie TINYINT,
    Periodo VARCHAR(255) NOT NULL,
    idAluno INT FOREIGN KEY REFERENCES Aluno(idAluno)
);

