-- 1 - Buscar o nome e ano dos filmes
Select
	f.Nome, f.Ano
From Filmes f

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select
	f.Nome, f.Ano, f.Duracao
From Filmes f
ORDER by Ano 

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select
	f.Nome, f.Ano, f.Duracao
From Filmes f
where
	UPPER(f.Nome) = UPPER('de volta para o futuro')
	
-- 4 - Buscar os filmes lançados em 1997
Select
	f.Nome, f.Ano, f.Duracao
From Filmes f
where
	f.Ano = 1997
	
-- 5 - Buscar os filmes lançados APÓS o ano 2000
Select
	f.Nome, f.Ano, f.Duracao
From Filmes f
where
	f.Ano > 2000
	
-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select
	f.Nome, f.Ano, f.Duracao
From Filmes f
where
	f.Duracao > 100 and f.Duracao < 150
order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select
	f.Ano, count(f.Id)
From Filmes f
Group BY
	f.Ano
order by count(f.Id) desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	*
FROM 
 	Atores a 
WHERE 
	a.Genero = 'M'

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
 SELECT 
	*
FROM 
 	Atores a 
WHERE 
	a.Genero = 'F'
Order BY a.PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
 SELECT 
	f.Nome, g.Genero
FROM 
 	Filmes f
inner join FilmesGenero fg on (f.Id = fg.IdFilme)
inner join Generos g on (g.Id = fg.IdGenero)

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
 SELECT 
	f.Nome, g.Genero
FROM 
 	Filmes f
inner join FilmesGenero fg on (f.Id = fg.IdFilme)
inner join Generos g on (g.Id = fg.IdGenero)
Where
g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
 SELECT 
	f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel 
FROM 
 	Filmes f
inner join ElencoFilme ef on (ef.IdFilme = f.Id )
inner join Atores a on (a.Id = ef.IdAtor)

