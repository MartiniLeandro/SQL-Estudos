alter table pedido alter column data_pedido set default current_date;
alter table pedido alter column valor set default 0;

insert into pedido (idCliente,idVendedor) values (1,1);
insert into pedido (idCliente,idVendedor,data_pedido,valor) values (1,1,'10-10-2022',234);

-- EXERCICIOS
alter table pedido_produto alter column quantidade set default 1;

alter table pedido_produto alter column valor_unitario set default 0;

alter table produto alter column valor set default 0;
