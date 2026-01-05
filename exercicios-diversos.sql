select * from livro_treino;
select * from livro_treino where disponivel = false;
select * from livro_treino where ano_lancamento > 2000;
select * from livro_treino where autor = 'Tolkien';
select * from livro_treino where editora is null;
select * from livro_treino where titulo like 'O%';
select * from livro_treino order by ano_lancamento asc;
select * from livro_treino order by titulo;

select count(*) from livro_treino;
select count(*) from livro_treino where disponivel = true;
select count(*) from livro_treino where editora is null;
select count(distinct autor) from livro_treino;
select min(ano_lancamento) from livro_treino;
select max(ano_lancamento) from livro_treino;
select avg(ano_lancamento) from livro_treino;
select editora, count(*) from livro_treino group by editora;
select editora, avg(ano_Lancamento) from livro_treino group by editora;
