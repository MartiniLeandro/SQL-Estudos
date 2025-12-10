select nome from vendedor order by nome asc;

select * from produto where valor > 200 order by valor asc;

select nome,valor, valor * 1.1 as reajuste from produto order by nome asc;

select * from municipio where idUf = 5;

select * from pedido where data_pedido between '2008-04-10' and '2008-04-25';

select * from pedido where valor between 1000 and 1500;

select * from pedido where valor not between 100 and 500;

select * from pedido where idVendedor = 1 order by valor desc;

select * from pedido where idCliente = 1 order by valor asc;

select * from pedido where idCliente = 15 and idVendedor = 1;

select * from pedido where idTransportadora = 2;

select * from pedido where idVendedor = 5 or idVendedor = 7;

select * from cliente where idMunicipio = 9 or idMunicipio = 1;

select * from cliente where idMunicipio != 9 and idMunicipio != 1;

select * from cliente where logradouro is null;

select * from cliente where logradouro like 'Av%';

select * from vendedor where nome like 'S%';

select * from vendedor where nome like '%a';

select * from vendedor where nome not like 'A%';

select * from municipio where nome like 'P%' and idUf = 1;

select * from transportadora where logradouro is not null;

select * from pedido_produto where idPedido = 1;

select * from pedido_produto where idPedido = 6 or idPedido = 10;
