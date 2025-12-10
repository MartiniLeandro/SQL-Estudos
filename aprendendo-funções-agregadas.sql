select avg(valor) as valor_medio from pedido;

select count(idMunicipio) as contagem_municipios from municipio;

select count(*) as contagem_transportadora from transportadora;

select count(idMunicipio) as contagem_municipios from municipio where idUf = 2;

select max(valor) as maior_valor from pedido;

select min(valor) as menor_valor from pedido;

select min(valor) as menor_valor, max(valor) as maior_valor from pedido;

select sum(valor) as valor_total from pedido;

select idCliente, sum(valor) from pedido group by idCliente;

select idCliente, sum(valor) from pedido group by idCliente having sum(valor) > 500;



