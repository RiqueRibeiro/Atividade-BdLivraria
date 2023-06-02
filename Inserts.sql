USE bdLivraria

SET IDENTITY_INSERT tbGenero ON

INSERT INTO tbGenero( codGenero,nomeGenero)
VALUES('1','Ficção')
	,('2','Romance')
	,('3','Tragédia')

SET IDENTITY_INSERT tbGenero OFF

SET IDENTITY_INSERT tbEditora ON

INSERT INTO tbEditora( codEditora,nomeEditora)
VALUES('1','Melhoramentos')
	,('2','Globo')
	,('3','Àtica')
	,('4','Companhia das Letras')
	,('5','Abril')

SET IDENTITY_INSERT tbEditora OFF

SET IDENTITY_INSERT tbAutor ON

INSERT INTO tbAutor( codAutor,nomeAutor)
VALUES('1','Chico Buarque')
	,('2','Jorge Amado')
	,('3','J.K Rowling')
	,('4','William Shakespeare')
	,('5','Monteiro Lobato')
	,('6','Cora Coralina')
	,('7','Clarice Lispector')

SET IDENTITY_INSERT tbAutor OFF

SET IDENTITY_INSERT tbLivro ON

INSERT INTO tbLivro( codLivro,nomeLivro,numPaginas,codGenero,codEditora,codAutor)
VALUES('1','Budapeste','176','2','4','1')
	,('2','O Bicho-da-Seda','454','2','5','3')
	,('3','Gabriela, Cravo e Canela','214','1','2','2')
	,('4','Reinações de Narizinho','143','2','2','5')
	,('5','Romeu e Julieta','421','1','3','4')
	,('6','O Irmão Alemão','478','1','4','1')
	,('7','Terras do Sem-Fim','125','1','3','2')
	,('8','Animais Fantásticos e Onde Habitam','267','2','4','3')

SET IDENTITY_INSERT tbLivro OFF