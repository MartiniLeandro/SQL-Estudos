select * from livros_treino

update livros_treino set categoria = 'Fantasia' where titulo = 'O Hobbit';
update livros_treino set disponivel = true where titulo = 'Dom Casmurro';
update livros_treino set categoria = 'Tecnologia' where titulo = 'Clean Code';
update livros_treino set ano_publicacao = 1937, disponivel = true where titulo = 'O Hobbit';
update livros_Treino set disponivel = true;
update livros_treino set categoria = 'Fantasia Clássica', disponivel = true where autor = 'Tolkien';

alter table livros_treino add column editora varchar(40);
alter table livros_treino alter column disponivel set default true;
alter table livros_treino alter column titulo type varchar(50);
alter table livros_treino add constraint chk_ano_publicacao check (ano_publicacao > 1000);
alter table livros_treino rename column ano_publicacao to ano_lancamento;


delete from livros_treino where titulo = 'Clean Code';
delete from livros_treino where ano_lancamento < 1500;
delete from livros_treino where disponivel = false;
delete from livros_treino where autor = 'Machado de Assis';
delete from livros_treino where categoria = 'Romance' and ano_lancamento < 1900;
delete from livros_treino;

alter table livros_treino drop column categoria;
alter table livros_treino drop constraint pk_id;


