create table pedido(
	idPedido integer not null,
	idCliente integer not null,
	idTransportadora integer,
	idVendedor integer not null,
	data_pedido date not null,
	valor numeric(10,2) not null,

	constraint pk_pedido_idPedido primary key(idPedido),
	constraint fk_pedido_idCliente foreign key(idCliente) references cliente(idCliente),
	constraint fk_pedido_idTransportadora foreign key(idTransportadora) references transportadora(idTransportadora),
	constraint fk_pedido_idVendedor foreign key(idVendedor) references vendedor(idVendedor)
);

select * from cliente;
update cliente set nome = 'Manoel' where idCliente = 1;

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (1,'2008-04-01',1300,1,1,1);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (2,'2008-04-01',500,1,1,1);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (3,'2008-04-02',300,11,2,5);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (4,'2008-04-05',1000,8,1,7);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (5,'2008-04-06',200,9,2,6);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (6,'2008-04-06',1985,10,1,6);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (7,'2008-04-06',800,3,1,7);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (8,'2008-04-06',175,3,null,7);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (9,'2008-04-07',1300,12,null,8);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (10,'2008-04-10',200,6,1,8);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (11,'2008-04-15',300,15,2,1);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (12,'2008-04-15',300,15,2,5);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (13,'2008-04-20',350,9,1,7);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (14,'2008-04-23',300,2,1,5);

insert into pedido (idPedido, data_pedido, valor, idCliente, idTransportadora, idVendedor) values (15,'2008-04-25',200,11,null,5);

select * from pedido;


create table pedido_produto(
	idPedido integer not null,
	idProduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdd_idPedidoProduto primary key(idPedido,idProduto),
	constraint fk_pdd_idPedido foreign key(idPedido) references pedido(idPedido),
	constraint fk_pdd_idProduto foreign key(idProduto) references produto(idProduto)
	
);

select * from pedido_produto;

insert into pedido_produto (idPedido, idproduto, quantidade, valor_unitario) values (1, 1, 1, 800);

insert into pedido_produto (idPedido, idProduto, quantidade, valor_unitario) values (1, 2, 1, 500);

insert into pedido_produto (idPedido, idProduto, quantidade, valor_unitario) values (2, 2, 1, 500);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (3,4,2,150);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (4,1,1,800);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (4,3,1,200);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (5,3,1,200);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (6,1,2,800);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (6,7,1,35);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (6,5,1,200);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (6,4,1,150);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (7,1,1,800);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (8,7,5,35);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (9,1,1,800);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (9,2,1,500);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (10,5,1,200);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (11,5,1,200);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (11,6,1,100);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (12,2,1,500);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (13,3,1,200);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (13,4,1,150);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (14,6,3,100);

insert into pedido_produto (idPedido,idProduto,quantidade,valor_unitario) values (15,3,1,200);

