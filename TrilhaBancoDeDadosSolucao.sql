-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE ano >= 2000

-- 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
 
-- 10
SELECT 
	f.Nome, 
	g.Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11
SELECT 
	f.Nome, 
	g.Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio'

-- 12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id