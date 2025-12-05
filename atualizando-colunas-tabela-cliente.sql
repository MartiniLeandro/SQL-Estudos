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


