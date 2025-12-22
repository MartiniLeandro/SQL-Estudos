-- CRIAÇÃO TABELAS

create table editora (
	idEditora serial not null,
	nome varchar(50) not null,

	constraint edt_idEditora_pk primary key (idEditora),
	constraint edt_nome_unique unique (nome)
 );

 insert into editora (nome) values ('Bookman');
 insert into editora (nome) values ('Edgard Blusher');
 insert into editora (nome) values ('Nova Terra');
 insert into editora (nome) values ('Brasport');

 create table categoria (
	idCategoria serial not null,
	nome varchar(50) not null,

	constraint ctg_idCategoria_pk primary key(idCategoria),
	constraint ctg_nome_unique unique (nome)
 );

 insert into categoria (nome) values ('Banco de dados');
 insert into categoria (nome) values ('HTML');
 insert into categoria (nome) values ('Java');
 insert into categoria (nome) values ('PHP');

 create table autor (
	idAutor serial not null,
	nome varchar(50) not null,

	constraint atr_idAutor_pk primary key (idAutor)
 );

 insert into autor (nome) values ('Waldemar Setzer');
 insert into autor (nome) values ('Flávio Soares');
 insert into autor (nome) values ('John Watson');
 insert into autor (nome) values ('Rui Rossi dos Santos');
 insert into autor (nome) values ('Antonio Pereira de Resende');
 insert into autor (nome) values ('Claudiney Calixto Lima');
 insert into autor (nome) values ('Evandro Carlos Teruel');
 insert into autor (nome) values ('Ian Graham');
 insert into autor (nome) values ('Fabrício Xavier');
 insert into autor (nome) values ('Pablo Dalloglio');

 create table livro (
	idLivro serial not null,
	idEditora integer not null,
	idCategoria integer not null,
	nome varchar(100) not null,

	constraint lvr_idLivro_pk primary key (idLivro),
	constraint lvr_idEditora_fk foreign key (idEditora) references editora(idEditora),
	constraint lvr_idCategoria_fk foreign key (idCategoria) references categoria(idCategoria),
	constraint lvr_nome_unique unique (nome)
 );

 insert into livro (idEditora, idCategoria, nome) values (2,1,'Banco de dados - 1 Edição');
 insert into livro (idEditora, idCategoria, nome) values (1,1, 'Oracle DataBase 11G Administração');
 insert into livro (idEditora, idCategoria, nome) values (3,3, 'Programação de Computadores em Java');
 insert into livro (idEditora, idCategoria, nome) values (4,3, 'Programação Orientada a Aspectos em Java');
 insert into livro (idEditora, idCategoria, nome) values (4,2, 'HTML5 - Guia Prático');
 insert into livro (idEditora, idCategoria, nome) values (3,2, 'XHTML: Guia de Referência para Desenvolvimento na Web');
 insert into livro (idEditora, idCategoria, nome) values (1,4, 'PHP para Desenvolvimento Profissional');
 insert into livro (idEditora, idCategoria, nome) values (2,4, 'PHP com Programação Orientada a Objetos');

 create table livro_autor (
	idLivro integer not null,
	idAutor integer not null,

	constraint lva_idLivroIdAutor_pk primary key(idLivro,idAutor),
	constraint lva_idLivro_fk foreign key (idLivro) references livro(idLivro),
	constraint lva_idAutor_fk foreign key (idAutor) references autor(idAutor)
 );

 insert into livro_autor (idLivro, idAutor) values (1,1);
 insert into livro_autor (idLivro, idAutor) values (1,2);
 insert into livro_autor (idLivro, idAutor) values (2,3);
 insert into livro_autor (idLivro, idAutor) values (3,4);
 insert into livro_autor (idLivro, idAutor) values (4,5);
 insert into livro_autor (idLivro, idAutor) values (4,6);
 insert into livro_autor (idLivro, idAutor) values (5,7);
 insert into livro_autor (idLivro, idAutor) values (6,8);
 insert into livro_autor (idLivro, idAutor) values (7,9);
 insert into livro_autor (idLivro, idAutor) values (8,10);

 create table aluno(
	idAluno serial not null,
	nome varchar(50) not null,

	constraint aln_idAluno_pk primary key (idAluno)
 );

 insert into aluno (nome) values ('Mario');
 insert into aluno (nome) values ('João');
 insert into aluno (nome) values ('Paulo');
 insert into aluno (nome) values ('Pedro');
 insert into aluno (nome) values ('Maria');

 create table emprestimo(
	idEmprestimo serial not null,
	idAluno integer not null,
	data_emprestimo date default current_date,
	data_devolucao date not null,
	valor float not null,
	devolvido char not null,

	constraint emp_idEmprestimo_pk primary key (idEmprestimo),
	constraint emp_idAluno_fk foreign key (idAluno) references aluno(idAluno)
 );

 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (1,'02-05-2012','12-05-2012',10,'S');
 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (1,'23-04-2012','03-05-2012',5,'N');
 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (2,'10-05-2012','20-05-2012',12,'N');
 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (3,'10-05-2012','20-05-2012',8,'S');
 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (4,'05-05-2012','15-05-2012',15,'N');
 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (4,'07-05-2012','17-05-2012',20,'S');
 insert into emprestimo (idAluno, data_emprestimo, data_devolucao, valor, devolvido) values (4,'08-05-2012','18-05-2012',5,'S');

 create table emprestimo_livro(
	idEmprestimo integer not null,
	idLivro integer not null,

	constraint eml_idEmprestimoIdLivro_pk primary key(idEmprestimo,idLivro),
	constraint eml_idEmprestimo_fk foreign key (idEmprestimo) references emprestimo(idEmprestimo),
	constraint eml_idLivro_fk foreign key (idLivro) references livro(idLivro)
 );

 insert into emprestimo_livro (idEmprestimo,idLivro) values (1,1);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (1,4);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (1,3);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (2,2);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (2,7);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (3,5);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (4,4);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (4,6);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (4,1);
 insert into emprestimo_livro (idEmprestimo,idLivro) values (4,8);

-- CRIAÇÃO INDICES

create index data_emprestimo on emprestimo(data_emprestimo);
 create index data_devolucao on emprestimo(data_devolucao);

-- CONSULTA SIMPLES

 select nome from autor order by nome asc;
 select nome from aluno where nome like 'P%';
 select nome from livro where idCategoria = 1 or idCategoria = 3;
 select nome from livro where idEditora = 1;
 select * from emprestimo where data_emprestimo between '05-05-2012' and '10-05-2012';
 select * from emprestimo where data_emprestimo not between '05-05-2012' and '10-05-2012';
 select * from emprestimo where devolvido = 'S';

 -- CONSULTA COM AGRUPAMENTO SIMPLES

 select count(idLivro) from livro;
 select sum(valor) from emprestimo;
 select avg(valor) from emprestimo;
 select max(valor) from emprestimo;
 select min(valor) from emprestimo;
 select sum(valor) from emprestimo where data_emprestimo between '05-05-2012' and '10-05-2012';
 select count(idEmprestimo) from emprestimo where data_emprestimo between '01-05-2012' and '05-05-2012';

 -- CONSULTA COM JOIN

create view livros_info as 
 select 
 	lvr.nome as livro,
	 ctg.nome as categoria,
	 edt.nome as editora 
from 
	livro as lvr 
inner join 
	categoria as ctg on lvr.idCategoria = ctg.idCategoria
inner join
	editora as edt on lvr.idEditora = edt.idEditora;

create view livroAutor_info as
 select 
 	lvr.nome as livro,
	aut.nome as autor
 from
 	livro_autor as lva
 inner join
 	livro as lvr on lva.idLivro = lvr.idLivro
 inner join
 	autor as aut on lva.idAutor = aut.idAutor;

select 
 	lvr.nome as livro,
	aut.nome as autor
from
 	livro_autor as lva
inner join
 	livro as lvr on lva.idLivro = lvr.idLivro
inner join
 	autor as aut on lva.idAutor = aut.idAutor
where
	aut.nome = 'Ian Graham';

select
	aln.nome as aluno,
	emp.data_emprestimo,
	emp.data_devolucao
from
	emprestimo as emp
inner join
	aluno as aln on emp.idAluno = aln.idAluno;

select distinct
	lvr.nome as livro
from
	emprestimo_livro as eml
inner join
	livro as lvr on eml.idLivro = lvr.idLivro

-- CONSULTA COM AGRUPAMENTO + JOIN

select edt.nome as editora, count(lvr.idLivro) as quantidade from livro as lvr inner join editora as edt on lvr.idEditora = edt.idEditora group by edt.nome;
select ctg.nome as editora, count(lvr.idLivro) as quantidade from livro as lvr inner join categoria as ctg on lvr.idCategoria = ctg.idCategoria group by ctg.nome;
select atr.nome as autor, count(ltr.idLivro) from livro_autor as ltr inner join autor as atr on ltr.idAutor = atr.idAutor group by atr.nome;
select aln.nome as aluno, count(emp.idemprestimo) as quantidade from emprestimo emp left outer join aluno aln on emp.idaluno = aln.idaluno group by aln.nome;
select aln.nome as aluno, sum(emp.valor) as valor from emprestimo emp left outer join aluno aln on emp.idaluno = aln.idaluno group by aln.nome;
select aln.nome as aluno, sum(emp.valor) as valor from emprestimo emp left outer join aluno aln on emp.idaluno = aln.idaluno group by aln.nome having sum(emp.valor) > 12;

-- CONSULTAS COMANDOS DIVERSOS

select upper(nome) from aluno order by aluno desc;
select * from emprestimo where extract(month from data_emprestimo) = 4 and extract(year from data_emprestimo) = 2012;
select *, case devolvido when 'S' then 'Devolução Completa' when 'N' then 'Em Atraso' end as status_devolucao from emprestimo;
select substring(nome from 5 for 10) from autor;
select
	valor,
	case extract(month from data_emprestimo)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
	 	when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro' 
	end as mes_emprestimo
from 
emprestimo;

-- SUBCONSULTAS

select data_emprestimo, valor from emprestimo where valor > (select avg(valor) from emprestimo);
select data_emprestimo, valor from emprestimo where 
select data_emprestimo, valor from emprestimo where valor < (select sum(valor) from emprestimo);





	

 
