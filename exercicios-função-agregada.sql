select idVendedor, avg(valor) from pedido group by idVendedor having avg(valor) > 200;

select idVendedor, sum(valor) from pedido group by idVendedor having sum(valor) > 1500;

select idVendedor, sum(valor) from pedido group by idVendedor;

select count(idMunicipio) from municipio;

select count(idMunicipio) from municipio where idUf = 1 or idUf = 2;

select idUf, count(idMunicipio) from municipio group by idUf;

select count(idCliente) from cliente where logradouro is not null;

select idMunicipio, count(idCliente) from cliente group by idMunicipio;

select count(idFornecedor) from fornecedor;

select idFornecedor, count(idProduto) from produto group by idFornecedor;

select avg(valor) from produto where idFornecedor = 1;

select sum(valor) from produto;

select nome, valor from produto order by valor desc limit 1;

select nome, valor from produto order by valor asc limit 1;

select avg(valor) from produto;

select count(idTransportadora) from transportadora;

select avg(valor) from pedido;

select idCliente, sum(valor) from pedido group by idCliente;

select idVendedor, sum(valor) from pedido group by idVendedor;

select idTransportadora, sum(valor) from pedido group by idTransportadora;

select data_pedido, sum(valor) from pedido group by data_pedido;

select idVendedor, idTransportadora, idCliente, sum(valor) from pedido group by idCliente, idVendedor, idTransportadora;

select data_pedido, sum(valor) from pedido group by data_pedido having sum(valor) > 200 and data_pedido between '2008-04-01' and '2009-12-10';

select avg(valor) from pedido where idVendedor = 1;

select avg(valor) from pedido where idCliente = 15;

select count(idPedido) from pedido where idTransportadora = 1;

select idVendedor, count(idPedido) from pedido group by idVendedor;

select idCliente, count(idPedido) from pedido group by idCliente;

select count(idPedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25';

select count(idPedido) from pedido where valor > 1000;

select count(quantidade) from pedido_produto where idProduto = 1;

select idProduto, sum(quantidade) from pedido_produto group by idProduto;

select idPedido, sum(valor_unitario) from pedido_produto group by idPedido;

select idPedido, sum(quantidade) from pedido_produto group by idPedido;

select sum(valor_unitario) from pedido_produto;

select avg(valor_unitario) from pedido_produto where idpedido = 6;

select max(valor_unitario) from pedido_produto;

select min(valor_unitario) from pedido_produto;

select idpedido, sum(quantidade) from pedido_produto group by idpedido;

select sum(valor_unitario) from pedido_produto;
