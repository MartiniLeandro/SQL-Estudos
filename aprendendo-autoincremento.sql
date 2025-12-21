create table exemplo(
	idExemplo serial not null, -- ID vai ser automatico
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

-- EXERCÍCIOS (fazer o incremento nos restos das tabelas)

create sequence cln_idCliente_seq minvalue 18;
alter table cliente alter idCliente set default nextval('cln_idCliente_seq');
alter sequence cln_idCliente_seq owned by cliente.idCliente;

insert into cliente (nome) values ('teste 1');
insert into cliente (nome) values ('teste 2');

create sequence cmp_idComplemente_seq minvalue 3;
alter table complemento alter idComplemento set default nextval('cmp_idComplemente_seq');
alter sequence cmp_idComplemente_seq owned by complemento.idComplemento;

insert into complemento (nome) values ('teste 1');
insert into complemento (nome) values ('teste 2');

create sequence frn_idFornecedor_seq minvalue 4;
alter table fornecedor alter idFornecedor set default nextval('frn_idFornecedor_seq');
alter sequence frn_idFornecedor_seq owned by fornecedor.idFornecedor;

insert into fornecedor (nome) values ('teste 1');
insert into fornecedor (nome) values ('teste 2');

create sequence mnc_idMunicipio_seq minvalue 10;
alter table municipio alter idMunicipio set default nextval('mnc_idMunicipio_seq');
alter sequence mnc_idMunicipio_seq owned by municipio.idMunicipio;

insert into municipio (nome,idUf) values ('teste 1',1);
insert into municipio (nome, idUf) values ('teste 2',2);

create sequence ncl_idNacionalidade_seq minvalue 5;
alter table nacionalidade alter idNacionalidade set default nextval('ncl_idNacionalidade_seq');
alter sequence ncl_idNacionalidade_seq owned by nacionalidade.idNacionalidade;

insert into nacionalidade (nome) values ('teste 1');
insert into nacionalidade (nome) values ('teste 2');

create sequence pdd_idPedido_seq minvalue 16;
alter table pedido alter idPedido set default nextval('pdd_idPedido_seq');
alter sequence pdd_idPedido_seq owned by pedido.idPedido;

insert into pedido (idCliente,idTransportadora,idVendedor,data_pedido,valor) values (1,1,1,'21-12-2025',1500);
insert into pedido (idCliente,idTransportadora,idVendedor,data_pedido,valor) values (1,1,1,'21-12-2025',1000);

create sequence prf_idProfissao_seq minvalue 6;
alter table profissao alter idProfissao set default nextval('prf_idProfissao_seq');
alter sequence prf_idProfissao_seq owned by profissao.idProfissao;

insert into profissao (nome) values ('teste 1');
insert into profissao (nome) values ('teste 2');

create sequence trn_idTransportadora_seq minvalue 3;
alter table transportadora alter idTransportadora set default nextval('trn_idTransportadora_seq');
alter sequence trn_idTransportadora_seq owned by transportadora.idTransportadora;


insert into transportadora (nome) values ('teste 1');
insert into transportadora (nome) values ('teste 2');

create sequence uf_idUf_seq minvalue 7;
alter table uf alter idUf set default nextval('uf_idUf_seq');
alter sequence uf_idUf_seq owned by uf.idUf;

insert into uf (nome,sigla) values ('teste 1','t1');
insert into uf (nome,sigla) values ('teste 2','t2');

create sequence vnd_idVendedor_seq minvalue 9;
alter table vendedor alter idVendedor set default nextval('vnd_idVendedor_seq');
alter sequence vnd_idVendedor_seq owned by vendedor.idVendedor;

insert into vendedor (nome) values ('teste 1');
insert into vendedor (nome) values ('teste 2');
