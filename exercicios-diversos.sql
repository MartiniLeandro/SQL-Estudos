select * from livro_treino;
select * from livro_treino where disponivel = false;
select * from livro_treino where ano_lancamento > 2000;
select * from livro_treino where autor = 'Tolkien';
select * from livro_treino where editora is null;
select * from livro_treino where titulo like 'O%';
select * from livro_treino order by ano_lancamento asc;
select * from livro_treino order by titulo;