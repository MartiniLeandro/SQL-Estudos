create role gerente;
create role estagiario;

grant select, insert on bairro, bairro_auditoria, cliente, complemento, exemplo, fornecedor, livros_treino, municipio, nacionalidade, pedido, pedido_produto, pedidos_apagados, produto, profissao, transportadora, uf, vendedor to gerente with grant option;
grant all on all sequences in schema public to gerente;
grant select on cliente_profissao, infos_pedido to estagiario with grant option;


create role maria login password '123' in role gerente;
create role pedro login password '321' in role estagiario;

select * from cliente;
insert into cliente(nome) values ('Teste permissão');

insert into bairro(nome) values ('TESASDAFG')


-- EXERCÍCIOS

create role atendente;

grant select, insert on pedido, pedido_produto to atendente with grant option;
grant all on all sequences in schema public to atendente;

create role atendente1 login password 'atendente1' in role atendente;

select * from pedido;
select * from pedido_produto;
insert into pedido(idCliente,idVendedor,data_pedido,valor) values (1,1,'2008-04-06',882);
insert into pedido_produto(idPedido,idProduto,quantidade,valor_unitario) values (1,6,1,10);