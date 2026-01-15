select * from cliente;
select * from categoria;
select * from produto;
select * from pedido;
select * from item_pedido;

alter table cliente rename column idCliente to id_cliente;

alter table categoria rename column idCategoria to id_categoria;
alter table categoria alter column id_categoria type bigint;

alter table produto rename column idProduto to id_produto;
alter table produto alter column id_produto type bigint;
alter table produto rename column idCategoria to id_categoria;
alter table produto alter column id_categoria type bigint;

alter table pedido rename column idPedido to id_pedido;
alter table pedido alter column id_pedido type bigint;
alter table pedido rename column idCliente to id_cliente;
alter table pedido alter column id_cliente type bigint;

alter table item_pedido alter column idPedido type bigint;
alter table item_pedido alter column idProduto type bigint;
alter table item_pedido rename column idPedido to id_pedido;
alter table item_pedido rename column idProduto to id_produto;