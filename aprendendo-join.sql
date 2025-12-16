select cln.nome as cliente, prf.nome as profissao from cliente as cln inner join profissao as prf on cln.idProfissao = prf.idProfissao;

select cln.nome as cliente, prf.nome as profissao from cliente as cln left outer join profissao as prf on cln.idProfissao = prf.idProfissao;

select 
	cln.nome as nome_cliente,
	prf.nome as profissao,
	ncl.nome as nacionalidade,
	cln.logradouro as logradouro,
	cln.numero as numero,
	cmp.nome as complemento,
	brr.nome as bairro,
	mnc.nome as municipio,
	uf.nome as estado,
	uf.sigla as sigla
	
from
	cliente as cln 
left outer join 
	profissao as prf on cln.idProfissao = prf.idProfissao 
left outer join 
	nacionalidade as ncl on cln.idNacionalidade = ncl.idNacionalidade 
left outer join
	complemento as cmp on cln.idComplemento = cmp.idComplemento
left outer join
	bairro as brr on cln.idBairro = brr.idBairro
left outer join
	municipio as mnc on cln.idMunicipio = mnc.idMunicipio
left outer join
	uf on mnc.idUf = uf.idUf;	


select prd.nome as nome ,prd.valor as valor, fnc.nome as fornecedor from produto as prd left outer join fornecedor as fnc on prd.idFornecedor = fnc.idFornecedor;

select trn.nome as transportadora, mnc.nome as municipio from transportadora as trn left outer join municipio as mnc on trn.idMunicipio = mnc.idMunicipio;

select 
	pdd.data_pedido as data, 
	pdd.valor, 
	cln.nome as cliente,
	trn.nome as transportadora, 
	vnd.nome as vendedor 
from 
	pedido as pdd
left outer join
	cliente as cln on pdd.idCliente = cln.idCliente
left outer join
	transportadora as trn on pdd.idTransportadora = trn.idTransportadora
left outer join
	vendedor as vnd on pdd.idVendedor = vnd.idVendedor;

select prd.nome as produto, ped_prd.quantidade as quantidade, ped_prd.valor_unitario as valor_unitario from pedido_produto as ped_prd left outer join produto as prd on ped_prd.idProduto = prd.idProduto;

select cln.nome, pdd.data_pedido from cliente as cln inner join pedido as pdd on cln.idCliente = pdd.idCliente order by cln.nome;

select cln.nome, pdd.data_pedido from cliente as cln left outer join pedido as pdd on cln.idCliente = pdd.idCliente order by cln.nome;

select mnc.nome, count(cln.idCliente) from cliente as cln left outer join municipio as mnc on mnc.idMunicipio = cln.idMunicipio group by mnc.nome;

select frn.nome, count(prd.idFornecedor) from fornecedor as frn left outer join produto as prd on frn.idFornecedor = prd.idFornecedor group by frn.nome;

select cln.nome, sum(pdd.valor) from cliente as cln left outer join pedido as pdd on cln.idCliente = pdd.idCliente group by cln.nome;

select vnd.nome, sum(pdd.valor) from vendedor as vnd left outer join pedido as pdd on vnd.idVendedor = pdd.idVendedor group by vnd.nome;

select trn.nome, sum(pdd.valor) from transportadora as trn left outer join pedido as pdd on trn.idTransportadora = pdd.idTransportadora group by trn.nome;

select cln.nome, count(pdd.idPedido) from cliente as cln left outer join pedido as pdd on cln.idCliente = pdd.idCliente group by cln.nome;

select prd.nome, count(pdd_prd.quantidade) from produto as prd left outer join pedido_produto as pdd_prd on prd.idProduto = pdd_prd.idProduto group by prd.nome;

select pdd.data_pedido, sum(pdd_prd.valor_unitario) from pedido as pdd left outer join pedido_produto as pdd_prd on pdd.idPedido = pdd_prd.idPedido group by pdd.data_pedido;

select pdd.data_pedido, count(pdd_prd.quantidade) from pedido as pdd left outer join pedido_produto as pdd_prd on pdd.idPedido = pdd_prd.idPedido group by pdd.data_pedido;

select * from pedido_produto






