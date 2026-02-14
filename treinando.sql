create table instrutor(

	idInstrutor serial not null,
	nome varchar(50) not null,

	constraint pk_ins_id primary key(idInstrutor),
	constraint unique_ins_nome unique(nome)
)

create table aluno(
	idAluno serial not null,
	nome varchar(50) not null,

	constraint pk_aln_id primary key(idAluno),
	constraint unique_aln_nome unique(nome)
)

create table curso(
	idCurso serial not null,
	titulo varchar(30) not null,
	categoria varchar(30) not null,
	preco integer not null,
	data_criacao varchar(20) not null,
	idInstrutor integer not null,

	constraint pk_cur_id primary key(idCurso),
	constraint unique_cur_titulo unique(titulo),
	constraint fk_cur_idInstrutor foreign key(idInstrutor) references instrutor(idInstrutor)
)

create table curso_aluno(
	idCurso integer not null,
	idAluno integer not null,

	constraint pk_cra_id primary key(idCurso,idAluno),
	constraint fk_cra_idCurso foreign key(idCurso) references curso(idCurso),
	constraint fk_cra_idAluno foreign key(idAluno) references aluno(idAluno)
)

insert into instrutor(nome) values ('leandro');
insert into instrutor(nome) values ('gabriel');
insert into instrutor(nome) values ('thiago');

select * from instrutor

insert into aluno(nome) values ('pedro');
insert into aluno(nome) values ('joão');
insert into aluno(nome) values ('felipe');

select * from aluno

insert into curso(titulo,categoria,preco,data_criacao,idInstrutor) values ('curso 1', 'categoria 1', 100, '14/02/2026', 1);
insert into curso(titulo,categoria,preco,data_criacao,idInstrutor) values ('curso 2', 'categoria 2', 500, '14/02/2026', 2);
insert into curso(titulo,categoria,preco,data_criacao,idInstrutor) values ('curso 3', 'categoria 3', 2000, '14/02/2026', 3);

select * from curso

insert into curso_aluno(idCurso,idAluno) values (1,1);
insert into curso_aluno(idCurso,idAluno) values (1,2);
insert into curso_aluno(idCurso,idAluno) values (1,3);
insert into curso_aluno(idCurso,idAluno) values (2,2);
insert into curso_aluno(idCurso,idAluno) values (3,2);
insert into curso_aluno(idCurso,idAluno) values (3,3);

select * from curso_aluno


select cur.titulo,ins.nome as instrutor from curso as cur inner join instrutor as ins on cur.idInstrutor = ins.idInstrutor;
select cur.titulo as curso, count(idAluno) as qntd_alunos from curso_aluno as cra inner join curso as cur on cra.idCurso = cur.idCurso group by cur.titulo;
select cur.titulo as curso, count(idAluno) as qntd_alunos from curso_aluno as cra inner join curso as cur on cra.idCurso = cur.idCurso group by cur.titulo having count(idAluno) > 1;
