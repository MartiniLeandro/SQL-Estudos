select * from cliente order by idCliente asc;

select nome,profissao from cliente order by profissao;

alter table cliente drop profissao;

alter table cliente add idprofissao integer;

alter table cliente add constraint fk_cln_idProfissao foreign key (idProfissao) references profissao (idProfissao);

update cliente set idProfissao = 1 where idCliente in (1,9,10,12,15,17);

update cliente set idProfissao = 2 where idCliente = 2;

update cliente set idProfissao = 3 where idCliente = 3;

update cliente set idProfissao = 4 where idCliente in (4,5);

update cliente set idProfissao = 5 where idCliente in (6,7,8,13);


alter table cliente drop nacionalidade;

alter table cliente add idNacionalidade integer;

alter table cliente add constraint fk_cln_idNacionalidade foreign key (idNacionalidade) references nacionalidade(idNacionalidade);

update cliente set idNacionalidade = 1 where idCliente in (1,2,3,4,6,10,11,14);

update cliente set idNacionalidade = 2 where idCliente in (5,7);

update cliente set idNacionalidade = 3 where idCliente = 8;

update cliente set idNacionalidade = 4 where idCliente in (9,13);

alter table cliente drop complemento;

alter table cliente add idComplemento integer;

alter table cliente add constraint fk_cln_idComplemento foreign key(idComplemento) references complemento(idComplemento);

update cliente set idComplemento = 1 where idCliente in (1,4,9,13);

update cliente set idComplemento = 2 where idCliente in (2,3,7);

alter table cliente drop bairro;

alter table cliente add idBairro integer;

alter table cliente add constraint fk_cln_idBairro foreign key(idBairro) references bairro(idBairro);

update cliente set idBairro = 1 where idCliente in (1,12,13);

update cliente set idBairro = 2 where idCliente in (2,3,6,8,9);

update cliente set idBairro = 3 where idCliente in (4,5);

update cliente set idBairro = 4 where idCliente = 7;

create table uf (
	idUf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idUf primary key(idUf),
	constraint un_ufd_nome unique(nome),
	constraint un_ufd_sigla unique(sigla)
);

insert into uf (idUf,nome,sigla) values (1,'Santa Catarina', 'SC');

insert into uf (idUf,nome,sigla) values (2,'Paraná', 'PR');

insert into uf (idUf,nome,sigla) values (3,'São Pauo', 'SP');

insert into uf (idUf,nome,sigla) values (4,'Minas Gerais', 'MG');

insert into uf (idUf,nome,sigla) values (5,'Rio Grande do Sul', 'RS');

insert into uf (idUf,nome,sigla) values (6,'Rio de Janeiro', 'RJ');

select * from uf

create table municipio(
	idMunicipio integer not null,
	nome varchar(30) not null,
	idUf integer not null,

	constraint pk_mnc_idMunicipio primary key(idMunicipio),
	constraint un_mnc_nome unique(nome),
	constraint fk_mnc_idUf foreign key(idUf) references uf(idUf)
);

insert into municipio(idMunicipio,nome,idUf) values (1, 'Porto União', 1);

insert into municipio(idMunicipio,nome,idUf) values (2, 'Canoinhas', 1);

insert into municipio(idMunicipio,nome,idUf) values (3, 'Porto Vitória', 2);

insert into municipio(idMunicipio,nome,idUf) values (4, 'General Carneiro', 2);

insert into municipio(idMunicipio,nome,idUf) values (5, 'São Paulo', 3);

insert into municipio(idMunicipio,nome,idUf) values (6, 'Rio de Janeiro', 6);

insert into municipio(idMunicipio,nome,idUf) values (7, 'Uberlândia', 4);

insert into municipio(idMunicipio,nome,idUf) values (8, 'Porto Alegre', 5);

insert into municipio(idMunicipio,nome,idUf) values (9, 'União da Vitória', 2);

select * from municipio

alter table cliente drop uf;

alter table cliente drop municipio;

alter table cliente add idMunicipio integer;

alter table cliente add constraint fk_cln_id foreign key(idMunicipio) references municipio(idMunicipio);

update cliente set idMunicipio = 1 where idCliente in (1,2,10,11);

update cliente set idMunicipio = 2 where idCliente in (3,12);

update cliente set idMunicipio = 3 where idCliente in (4);

update cliente set idMunicipio = 4 where idCliente in (5);

update cliente set idMunicipio = 5 where idCliente in (6,13);

update cliente set idMunicipio = 6 where idCliente in (7);

update cliente set idMunicipio = 7 where idCliente in (8);

update cliente set idMunicipio = 8 where idCliente in (9);

update cliente set idMunicipio = 9 where idCliente in (14,15);

