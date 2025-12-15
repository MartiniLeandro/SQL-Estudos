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



