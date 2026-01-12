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
alter table cliente drop column ativo;
alter table cliente add column status varchar(30) check(status in ('ATIVO','DESATIVADO'));

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
alter table produto drop column ativo;
alter table produto add column status varchar(30) check (status in ('ATIVO','DESATIVADO'));

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
update cliente set status = 'ATIVO' where idCliente = 2;
update cliente set status = 'DESATIVADO' where idCliente = 3;
update cliente set status = 'ATIVO' where idCliente = 4;
update cliente set status = 'ATIVO' where idCliente = 5;
update cliente set status = 'DESATIVADO' where idCliente = 6;
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
update produto set status = 'ATIVO' where idProduto = 1;
update produto set status = 'ATIVO' where idProduto = 2;
update produto set status = 'ATIVO' where idProduto = 3;
update produto set status = 'DESATIVADO' where idProduto = 4;
update produto set status = 'DESATIVADO' where idProduto = 5;
update produto set status = 'ATIVO' where idProduto = 6;
update produto set status = 'ATIVO' where idProduto = 7;
update produto set status = 'ATIVO' where idProduto = 8;
select * from produto;

insert into pedido(status,idCliente) values ('CRIADO',2);
insert into pedido(status,idCliente) values ('PAGO',2);
insert into pedido(status,idCliente) values ('CRIADO',3);
insert into pedido(status,idCliente) values ('PAGO',3);
insert into pedido(status,idCliente) values ('CRIADO',4);
insert into pedido(status,idCliente) values ('PAGO',4);
insert into pedido(status,idCliente) values ('CRIADO',5);
insert into pedido(status,idCliente) values ('PAGO',5);
insert into pedido(status,idCliente) values ('CRIADO',6);
insert into pedido(status,idCliente) values ('PAGO',6);
select * from pedido;

create function set_preco_unitario() returns trigger language plpgsql as
$$
begin
	select preco into new.preco_unitario from produto where idProduto = new.idProduto;
	return new;
end;
$$;

create trigger trg_set_preco_item before insert on item_pedido for each row execute function set_preco_unitario();

insert into item_pedido(idPedido,idProduto,quantidade) values (2,2,2);
insert into item_pedido(idPedido,idProduto,quantidade) values (3,1,3);
insert into item_pedido(idPedido,idProduto,quantidade) values (4,3,2);
insert into item_pedido(idPedido,idProduto,quantidade) values (5,2,2);
insert into item_pedido(idPedido,idProduto,quantidade) values (6,8,1);
insert into item_pedido(idPedido,idProduto,quantidade) values (7,8,1);
insert into item_pedido(idPedido,idProduto,quantidade) values (8,7,1);
insert into item_pedido(idPedido,idProduto,quantidade) values (9,6,2);
insert into item_pedido(idPedido,idProduto,quantidade) values (10,2,2);
insert into item_pedido(idPedido,idProduto,quantidade) values (11,2,1);
select * from item_pedido;

select nome,email from cliente order by nome asc;
select nome,preco,status from produto order by preco desc;
select idPedido,data,status from pedido where data >= current_timestamp - interval '30 days';
select * from cliente;

select pdd.idPedido,pdd.data, cln.nome as cliente from pedido as pdd inner join cliente as cln on pdd.idCliente = cln.idCliente; 
select prd.nome,ctg.nome, prd.preco from produto as prd inner join categoria as ctg on prd.idCategoria = ctg.idCategoria;
select pdd.idPedido,itp.quantidade from item_pedido as itp inner join pedido as pdd on itp.idPedido = pdd.idPedido;
select pdd.idPedido,itp.quantidade from item_pedido as itp inner join pedido as pdd on itp.idPedido = pdd.idPedido where itp.quantidade >= 3;

select cln.nome, count(pdd.idPedido) as pedidos from pedido as pdd inner join cliente as cln on pdd.idCliente = cln.idCliente group by cln.nome order by pedidos desc;
select ctg.nome as categoria, sum(quantidade * preco_unitario) as total from item_pedido as itp inner join produto as prd on itp.idProduto = prd.idProduto inner join categoria as ctg on prd.idCategoria = ctg.idCategoria group by categoria;
select avg(quantidade * preco_unitario) as ticket_medio from item_pedido
select cln.nome as cliente, sum(quantidade * preco_unitario) as total from item_pedido as itp inner join pedido as pdd on itp.idPedido = pdd.idPedido inner join cliente as cln on pdd.idCliente = cln.idCliente group by cliente having  sum(quantidade * preco_unitario) > 1000

create view info_pedido as
select pdd.idPedido, pdd.data, (itp.preco_unitario * quantidade) as valor_total from pedido as pdd inner join item_pedido as itp on itp.idPedido = pdd.idPedido;
create function id_gastos_view(idCln integer) returns float language plpgsql as 
$$
begin
	return sum(itp.preco_unitario * itp.quantidade) as valor_gasto from item_pedido as itp inner join pedido as pdd on itp.idPedido = pdd.idPedido where pdd.idCliente = idCln;
	end;
$$;
drop function id_gastos_view(idCln integer)
select id_gastos_view(2);
