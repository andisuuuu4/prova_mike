use avaliacao_22c;

INSERT INTO  livros(titulos, Autor, Ano_publicacao, disponibilidade, categoria, ISBN, editora, Paginas , Idioma)
VALUES ('As crônicas de Narnia',  'C.S Lewis', 1950, TRUE,'Fantasia', '978-0064471190', 'Harpercollins', 768, 'Francês');

UPDATE Livros SET disponibilidade = FALSE WHERE  Ano_publicacao < 1900;

UPDATE Livros SET Editora = 'plumo blooks' WHERE Titulo = '1984';

DELETE FROM Livros where Idioma = 'Francês' AND Ano-Publicacao < 2000;

SELECT * FROM LIvros WHERE  Paginas > 600;
 
SELECT Categorias, COUNT(*) AS Total_Livros FROM livros  GROUP BY categorias;

SELECT * FROM livros  ORDER BY  ID DESC LIMIT 5;

SELECT AVG(Paginas) AS Media_Paginas  FROM livros WHERE disponibilidade = TRUE;

SELECT * FROM livros ORDER BY Ano_publicacao DESC;

SELECT * FROM Livros WHERE Titulo LIKE 'S%' AND ano_publicacao BETWEEN 1970 AND 1990;