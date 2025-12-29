alter table livros_treino drop column id;
alter table livros_treino add column id serial;
alter table livros_treino add constraint pk_id_livros_treino primary key(id);
select * from livro_treino;

create view livro_treino as
	select id,titulo,autor,ano_lancamento,disponivel,editora from livros_treino;

insert into livros_treino (titulo, autor, ano_lancamento, disponivel, editora) values ('O Hobbit','Tolkien','1937',true,'Harper Collins');
insert into livros_treino (titulo, autor, ano_lancamento, disponivel, editora) values ('O Senhor dos Anéis','Tolkien','1954',false,'Harper Collins');
insert into livros_treino (titulo, autor, ano_lancamento, disponivel, editora) values ('Silmarillion','Tolkien','1977',true,'Harper Collins');
insert into livros_treino (titulo, autor, ano_lancamento, disponivel, editora) values ('Dom Casmurro','Machado de Assis','1899',true,'Editora Garnier');
insert into livros_treino (titulo, autor, ano_lancamento, disponivel, editora) values ('Memórias Póstumas','Machado de Assis','1881',false,'Editora Garnier');

--Nível Fácil

select count(*) as livros_cadastrados from livro_treino; -- ou count(id)
select count(*) as livros_disponiveis from livro_treino where disponivel = true;
select min(ano_lancamento) as ano_lancamento_antigo from livro_treino;
select max(ano_lancamento) as ano_lancamento_recente from livro_treino;

-- Nível Intermediário

select autor, count(autor) as qntd_livros from livro_treino group by autor;
select editora, count(editora) as qntd_livros from livro_treino group by editora;
select autor, count(autor) as qntd_livros from livro_treino where disponivel = true group by autor;
select editora, count(editora) as qntd_livros from livro_treino where ano_lancamento > 1950 group by editora;

-- Nivel Intermediário+

select autor from livro_treino group by autor having count(autor) > 1;
select editora from livro_treino where disponivel = true group by editora having count(editora) >= 2;

-- Nível Avançado

select autor, min(ano_lancamento) as livro_antigo, max(ano_lancamento) as livro_recente from livro_treino group by autor;
select editora, avg(ano_lancamento) as media_ano from livro_treino group by editora;
select * from livro_treino where ano_lancamento <= (select min(ano_lancamento) from livro_treino);
select editora from livro_treino group by editora having count(*) = (select max(total) from (select count(*) as total from livro_treino group by editora)sub)
SELECT *FROM livros_treino WHERE ano_lancamento > (SELECT AVG(ano_lancamento)FROM livros_treino);
SELECT autor FROM livros_treino GROUP BY autor HAVING COUNT(*) = (SELECT MAX(total) FROM (SELECT COUNT(*) AS total FROM livros_treino GROUP BY autor) sub);



 