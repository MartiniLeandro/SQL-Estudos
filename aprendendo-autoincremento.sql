create table exemplo(
	idExemplo serial not null,
	nome varchar(50) not null,

	constraint pk_exemplo_idExemplo primary key(idExemplo)
);

insert into exemplo (nome) values ('Eexemplo 1');
insert into exemplo (nome) values ('Eexemplo 2');
insert into exemplo (nome) values ('Eexemplo 3');
insert into exemplo (nome) values ('Eexemplo 4');
insert into exemplo (nome) values ('Eexemplo 5');

create sequence barro_id_seq minvalue 5;
alter table bairro alter idBairro set default nextval('barro_id_seq');
alter sequence barro_id_seq owned by bairro.idBairro;

insert into bairro (nome) values ('teste 1');
insert into bairro (nome) values ('teste 2');

select * from bairro;