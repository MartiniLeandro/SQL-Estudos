create table livros_treino (
	id integer not null,
	titulo varchar(30) not null,
	autor varchar(30) not null,
	ano_publicacao integer,
	categoria varchar(30),
	disponivel boolean,

	constraint pk_id primary key(id),
	constraint un_titulo unique(titulo)
)

insert into livros_treino (id,titulo,autor) values (1,'Dom Casmurro', 'Machado de Assis');
insert into livros_treino (id,titulo,autor) values (2,'O Hobbit', 'Tolkien');
insert into livros_treino (id,titulo,autor) values (3,'Harry Potter', 'J.K Rowling');
insert into livros_treino (id,titulo,autor) values (4,'Clean Code', 'Robert C. Martin');
insert into livros_treino (id,titulo,autor) values (5,'A Arte da Guerra', 'Sun Tzu');

update livros_treino set categoria = 'Fantasia' where id = 1;
update livros_treino set disponivel = false where id = 4;
update livros_treino set ano_publicacao = -500 where id = 5;

delete from livros_treino where titulo = 'Harry Potter';
delete from livros_treino where ano_publicacao < 0;

select * from livros_treino;
select * from livros_treino where disponivel = true;
select * from livros_treino where categoria = 'Fantasia';
select * from livros_treino where ano_publicacao > 2000;
select * from livros_treino where titulo like 'A%';
select * from livros_treino order by ano_publicacao asc;









