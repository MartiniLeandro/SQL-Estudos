create table cliente (
	idCliente serial not null,
	nome varchar(50) not null,
	email varchar(50)  not null,
	data_cadastro date not null,
	ativo boolean default true,

	constraint pk_cln_idCliente primary key(idCliente),
	constraint un_cln_email unique(email)
);

alter table cliente alter column data_cadastro type timestamp;
alter table cliente alter column data_cadastro set default current_timestamp;

create table categoria(
	idCategoria serial not null,
	nome varchar(30) not null,

	constraint pk_ctg_idCategoria(idCategoria),
	constraint un_ctg_nome unique(nome)
);

create table produto(
	idProduto serial not null,
	nome varchar(30) not null,
	preco float not null check (preco > 0),
	ativo boolean default true,
	idCategoria integer not null,

	constraint pk_prd_idProduto primary key(idProduto),
	constraint un_prd_nome unique(nome),
	constraint fk_prd_idCategoria foreign key(idCategoria) references categoria(idCategoria)
);

create table pedido(
	idPedido serial not null,
	data date not null,
	status varchar(30) not null check(status in ('CRIADO','PAGO','CANCELADO')),
	idCliente integer not null,

	constraint pk_pdd_idPedido primary key(idPedido),
	constraint fk_pdd_idCliente foreign key(idCliente) references cliente(idCliente)
);

alter table pedido alter column data type timestamp;
alter table pedido alter column data set default current_timestamp;

create table item_pedido(
	idPedido integer not null,
	idProduto integer not null,
	quantidade integer not null check (quantidade > 0),
	preco_unitario float not null check (preco_unitario > 0),

	constraint pk_ipd_idPedidoidProduto primary key(idPedido,idProduto),
	constraint fk_ipd_idPedido foreign key(idPedido) references pedido(idPedido),
	constraint fk_ipd_idProduto foreign key(idProduto) references produto(idProduto)
	
);

insert into cliente(nome,email) values ('Leandro','leandro@email.com');
insert into cliente(nome,email) values ('Gabriel','gabriel@email.com');
insert into cliente(nome,email) values ('Thiago','thiago@email.com');
insert into cliente(nome,email) values ('Pedo','pedro@email.com');
insert into cliente(nome,email) values ('ana','ana@email.com');
select * from cliente;

insert into categoria(nome) values ('Eletrônico');
insert into categoria(nome) values ('Elétrodoméstico');
insert into categoria(nome) values ('SmartWatch');
select * from categoria;

insert into produto(nome,preco,idCategoria) values ('Mouse G403 Logitech',200,1);
insert into produto(nome,preco,idCategoria) values ('Teclado Red Dragon Kumara',250,1);
insert into produto(nome,preco,idCategoria) values ('Liquidificador',150,2);
insert into produto(nome,preco,idCategoria) values ('Microondas',850,2);
insert into produto(nome,preco,idCategoria) values ('Garmin Forerruner 165',2150,3);
insert into produto(nome,preco,idCategoria) values ('Amazfit T-Rex 3',1200,3);
insert into produto(nome,preco,idCategoria) values ('Garmin Forerruner 55',1300,3);
insert into produto(nome,preco,idCategoria) values ('Garmin Forerruner 165 Music',2500,3);
select * from produto;

insert into pedido(idPedido,idCliente)