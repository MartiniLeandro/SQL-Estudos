create table fornecedor(
	idFornecedor integer not null,
	nome varchar(30) not null,

	constraint pk_fnc_idFornecedor primary key(idFornecedor),
	constraint un_fnc_nome unique(nome)
);

create table vendedor(
	idVendedor integer not null,
	nome varchar(50) not null,

	constraint pk_idVendedor primary key(idVendedor),
	constraint unique_nome unique(nome)
);

create table transportadora(
	idTransportadora integer not null,
	idMunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),

	constraint pk_idTransportadora primary key(idTransportadora),
	constraint fk_idMunicipio foreign key(idMunicipio) references municipio(idMunicipio),
	constraint unique_trn_nome unique(nome)
);

create table produto(
	idProduto integer not null,
	idFornecedor integer not null,
	nome varchar(50) not null,
	valor numeric(10,2) not null,

	constraint pk_prd_idProduto primary key(idProduto),
	constraint fk_prd_idFornecedor foreign key(idFornecedor) references fornecedor(idFornecedor)
);

insert into vendedor (idVendedor, nome) values (1,'André');

insert into vendedor (idVendedor, nome) values (2,'Alisson');

insert into vendedor (idVendedor, nome) values (3,'José');

insert into vendedor (idVendedor, nome) values (4,'Ailton');

insert into vendedor (idVendedor, nome) values (5,'Maria');

insert into vendedor (idVendedor, nome) values (6,'Suelem');

insert into vendedor (idVendedor, nome) values (7,'Aline');

insert into vendedor (idVendedor, nome) values (8,'Silvana');

insert into fornecedor (idFornecedor, nome) values (1,'Cap. Computadores');

insert into fornecedor (idFornecedor, nome) values (2,'AA. Computadores');

insert into fornecedor (idFornecedor, nome) values (3,'BB. Máquinas');

insert into transportadora (idTransportadora,idMunicipio,nome,Logradouro,numero) values (1,9,'BS. Transportes', 'Rua das Limas', 01);

insert into transportadora (idTransportadora,idMunicipio,nome,Logradouro,numero) values (2,5,'União Transportes', null, null);

insert into produto (idProduto, idFornecedor, nome, valor) values (1,1,'MicroComputador',800);

insert into produto (idProduto, idFornecedor, nome, valor) values (2,1,'Monitor',500);

insert into produto (idProduto, idFornecedor, nome, valor) values (3,2,'Placa mãe',200);

insert into produto (idProduto, idFornecedor, nome, valor) values (4,2,'HD',150);

insert into produto (idProduto, idFornecedor, nome, valor) values (5,2,'Placa de Vídeo',200);

insert into produto (idProduto, idFornecedor, nome, valor) values (6,3,'Memória RAM',100);

insert into produto (idProduto, idFornecedor, nome, valor) values (7,1,'Gabinete',35);

