create table profissao(
	idProfissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idProfissao primary key (idProfissao),
	constraint un_prf_nome unique (nome)
)

insert into profissao (idProfissao, nome) values (1, 'Estudante')
insert into profissao (idProfissao, nome) values (2, 'Engenheiro')
insert into profissao (idProfissao, nome) values (3, 'Pedreiro')
insert into profissao (idProfissao, nome) values (4, 'Jornalista')
insert into profissao (idProfissao, nome) values (5, 'Professor')

select * from profissao


create table nacionalidade(
	idNacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncd_idNacionalidade primary key (idNacionalidade),
	constraint un_ncd_nome unique (nome)
);

insert into nacionalidade(idNacionalidade, nome) values (1,'Brasileira');
insert into nacionalidade(idNacionalidade, nome) values (2,'Italiana');
insert into nacionalidade(idNacionalidade, nome) values (3,'Norte-americana');
insert into nacionalidade(idNacionalidade, nome) values (4,'Alemã');

select * from nacionalidade


create table complemento(
	idComplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idComplemento primary key (idComplemento),
	constraint un_cpl_nome unique (nome)

);

insert into complemento(idComplemento, nome) values (1,'Casa')
insert into complemento(idComplemento, nome) values (2,'Apartamento')

select * from complemento

create table bairro(
	idBairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idBairro primary key (idBairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro(idBairro,nome) values (1,'Cidade Nova');
insert into bairro(idBairro,nome) values (2,'Centro');
insert into bairro(idBairro,nome) values (3,'São Pedro');
insert into bairro(idBairro,nome) values (4,'Santa Rosa');

select * from bairro