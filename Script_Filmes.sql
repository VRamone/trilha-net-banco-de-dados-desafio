--1
select Nome,Ano from Filmes
--2
select Nome, Ano from Filmes order by Ano
--3
select * from Filmes
where Nome='De Volta para o Futuro'
--4
select * from Filmes
where Ano=1997
--5
select * from Filmes 
where Ano>2000
--6 
select * from Filmes
where Duracao>100 and Duracao <150 order by Duracao
--7
SELECT Ano, COUNT(Id) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC
--8
select PrimeiroNome,UltimoNome from Atores
where Genero='M'
--9 
select PrimeiroNome, UltimoNome from Atores
where Genero='F' order by PrimeiroNome
--10
select Nome, g.Genero from Filmes f
inner join FilmesGenero fg on
fg.IdFilme=f.Id
inner join Generos g
on g.Id=fg.IdGenero
--11
select Nome, g.Genero from Filmes f
inner join FilmesGenero fg on
fg.IdFilme=f.Id
inner join Generos g
on g.Id=fg.IdGenero
where g.Genero='Mistério'
--12
select f.Nome,a.PrimeiroNome,a.UltimoNome,
ef.Papel from Atores a
inner join ElencoFilme ef on
ef.IdAtor=a.Id
inner join Filmes f
on f.Id=ef.IdFilme
