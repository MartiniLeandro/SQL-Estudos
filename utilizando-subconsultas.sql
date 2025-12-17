select data_pedido, valor from pedido where valor > (select avg(valor) from pedido)

select data_pedido, valor, (select sum(quantidade) from pedido_produto as pdp where pdp.idPedido = pdd.idPedido) as total from pedido as pdd;

update pedido set valor = valor * 1.05 where valor > (select avg(valor) from pedido);

select * from pedido order by idPedido;

-- Exercícios

select nome, idMunicipio from cliente where idMunicipio = (select idMunicipio from cliente where nome = 'Manoel') and idCliente <> 1;

select data_pedido, valor from pedido where valor < (select avg(valor) from pedido);

select * from pedido
select * from pedido_produto

select
	pdd.data_pedido, pdd.valor, cln.nome as cliente, vnd.nome as vendedor, pdr.quantidade 
from 
	pedido as pdd 
inner join 
	pedido_produto as pdr on pdd.idPedido = pdr.idPedido 
inner join
	cliente as cln on pdd.idCliente = cln.idCliente
inner join
	vendedor as vnd on pdd.idVendedor = vnd.idVendedor
where 
	pdr.quantidade >= 2;

select nome, logradouro from cliente where logradouro = (select logradouro from transportadora where nome = 'BS. Transportes');

select nome, idMunicipio from cliente where idMunicipio in (select idMunicipio from transportadora);

update 
	pedido 
set 
	valor = valor + ((valor * 5) / 100)
where 
	(select sum(pdp.valor_unitario) from pedido_produto pdp where pdp.idpedido = pedido.idpedido) > (select avg(valor_unitario) from pedido_produto)

select cln.nome, (select count(idPedido) from pedido as pdd where pdd.idCliente = cln.idCliente) from cliente as cln;










