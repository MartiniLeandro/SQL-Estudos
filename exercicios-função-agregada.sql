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

