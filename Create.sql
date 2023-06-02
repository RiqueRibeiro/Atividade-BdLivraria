CREATE DATABASE bdLivraria
GO
USE bdLivraria

CREATE TABLE tbAutor(
	codAutor INT PRIMARY KEY IDENTITY(1,1)
	,nomeAutor VARCHAR(50)
)

CREATE TABLE tbGenero(
	codGenero INT PRIMARY KEY IDENTITY(1,1)
	,nomeGenero VARCHAR(50)
)

CREATE TABLE tbEditora(
	codEditora INT PRIMARY KEY IDENTITY(1,1)
	,nomeEditora VARCHAR(50)
)

CREATE TABLE tbLivro(
	codLivro INT PRIMARY KEY IDENTITY(1,1)
	,nomeLivro VARCHAR(50)
	,numPaginas VARCHAR (500)
	,codGenero INT FOREIGN KEY REFERENCES tbGenero (codGenero)
	,codAutor INT FOREIGN KEY REFERENCES tbAutor (codAutor)
	,codEditora INT FOREIGN KEY REFERENCES tbEditora (codEditora)
)