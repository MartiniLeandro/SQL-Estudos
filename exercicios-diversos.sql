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

select autor, count(*)from livro_treino group by autor having count(*) > 1;
select editora, count(*) from livro_treino group by editora having count(*) > 2;
select autor, min(ano_lancamento) from livro_treino group by autor having min(ano_lancamento) < 1900;

select * from livro_treino where ano_lancamento = (select min(ano_lancamento) from livro_treino);
select * from livro_treino where ano_lancamento = (select max(ano_lancamento) from livro_treino);
select * from livro_treino where ano_lancamento > (select avg(ano_lancamento) from livro_treino);
select editora from livro_treino group by editora having count(*) = (select max(total) from (select count(*) as total from livros_treino group by editora));


-------------------------------

select nome from aluno order by nome asc;
select titulo,preco from curso where preco > 100
select nome from instrutor

select c.titulo as titulo_curso, i.nome as nome_instrutor  from curso as c inner join instrutor as i on c.idInstrutor = i.idInstrutor;
select a.nome, c.titulo from aluno as a inner join curso_aluno as c_a on a.idAluno = c_a.idAluno inner join curso as c on c.idCurso = c_a.idCurso;
select c.categoria, count(*) from curso as c group by c.categoria

create table categoria(
	idCategoria serial not null,
	nome varchar(50) not null,

	constraint pk_idCategoria primary key(idCategoria)
)

insert into categoria(nome) values ('categoria 1');
insert into categoria(nome) values ('categoria 2');
insert into categoria(nome) values ('categoria 3');

alter table curso add column categoria_id integer;
alter table curso add constraint fk_idCategoria foreign key(categoria_id) references categoria(idCategoria);
update curso set categoria_id = categoria.idCategoria from categoria where curso.categoria = categoria.nome;

select * from curso_aluno
select * from aluno
select * from curso
select * from categoria






