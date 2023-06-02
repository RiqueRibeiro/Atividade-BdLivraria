USE bdLivraria

--O nome dos livros ao lado do nome das editoras e do nome dos autores 

SELECT tbLivro.nomeLivro, tbEditora.nomeEditora, tbAutor.nomeAutor
FROM tbLivro
INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor;

--O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for �Cia das Letras� 

SELECT tbLivro.nomeLivro, tbAutor.nomeAutor
FROM tbLivro
INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE tbEditora.nomeEditora = 'Companhia das Letras';

--O nome dos livros ao lado dos nomes dos autores, somente dos livros que n�o forem do autor ��rico Ver�ssimo� 

SELECT tbLivro.nomeLivro, tbAutor.nomeAutor
FROM tbLivro
INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE tbAutor.nomeAutor <> '�rico Ver�ssimo';

--Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem livros cadastrados 

SELECT tbAutor.nomeAutor, ISNULL(tbLivro.nomeLivro, 'Nenhum livro cadastrado') AS nomeLivro
FROM tbAutor
LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

--Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem autores cadastrados 

SELECT ISNULL(tbAutor.nomeAutor, 'Nenhum autor cadastrado') AS nomeAutor, tbLivro.nomeLivro
FROM tbLivro
LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor;

--O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou n�o livro publicado, e indiferente do livro pertencer a algum autor.

SELECT ISNULL(tbAutor.nomeAutor, 'Nenhum autor cadastrado') AS nomeAutor, ISNULL(tbLivro.nomeLivro, 'Nenhum livro cadastrado') AS nomeLivro
FROM tbAutor
FULL JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

--A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora �tica. 

SELECT tbLivro.nomeLivro, '�tica' AS nomeEditora
FROM tbLivro;

--Somente os nomes dos autores que n�o tem livros cadastrados.

SELECT tbAutor.nomeAutor
FROM tbAutor
LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor
WHERE tbLivro.codLivro IS NULL;

--Os nomes dos g�neros que n�o possuem nenhum livro cadastrado. 

SELECT tbGenero.nomeGenero
FROM tbGenero
LEFT JOIN tbLivro ON tbGenero.codGenero = tbLivro.codLivro;