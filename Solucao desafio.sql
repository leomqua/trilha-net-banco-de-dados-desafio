--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes ORDER BY Ano ASC

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Nome = 'de volta para o futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Ano = '1997'

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Ano > '2000'

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY Duracao ASC

--7
SELECT 
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores WHERE Genero = 'M'

--9
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

--10
SELECT 
	Filmes.Nome AS NomeFilme,
	Generos.Genero AS NomeGenero
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
Join Generos  ON FilmesGenero.IdGenero = Generos.ID

--11
SELECT 
	Filmes.Nome AS NomeFilme,
	Generos.Genero AS NomeGenero
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
Join Generos  ON FilmesGenero.IdGenero = Generos.ID
WHERE Genero = 'Mistério'

--12
SELECT 
	Filmes.Nome AS Nome,
	Atores.PrimeiroNome AS PrimeiroNome,
	Atores.UltimoNome AS UltimoNome,
	ElencoFilme.Papel AS Papel
FROM Atores 
JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor 
Join Filmes  ON ElencoFilme.IdFilme = Filmes.ID
