create view cliente_profissao as
select cln.nome as cliente, prf.nome as profissao from cliente as cln left outer join profissao as prf on cln.idProfissao = prf.idProfissao;

select * from cliente_profissao;
select cliente from cliente_profissao where profissao = 'Professor';

drop  view cliente_profissao;

-- caso queira atualizar a view, é recomendado apaga-la e criar novamente
select * from uf
-- EXERCÍCIOS
create view infos_client as
select
	cln.nome,
	prf.nome as profissao,
	ncl.nome as nacionalidade,
	cmp.nome as complemento,
	mcp.nome as municipio,
	uf.nome as unidade_federacao,
	brr.nome as bairro,
	cln.cpf, 
	cln.rg,
	cln.data_nascimento,
	case cln.genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	end as genero,
	cln.logradouro,
	cln.numero,
	cln.observacoes
from
	cliente as cln
left outer join
	profissao as prf on cln.idProfissao = prf.idProfissao
left outer join
	nacionalidade as ncl on cln.idNacionalidade = ncl.idNacionalidade
left outer join
	complemento as cmp on cln.idComplemento = cmp.idComplemento
left outer join
	municipio as mcp on cln.idMunicipio = mcp.idMunicipio
left outer join
	uf on mcp.idUf = uf.idUf
left outer join
	bairro as brr on cln.idBairro = brr.idBairro;

create view infos_municipio as
select mcp.nome as municipio, uf.nome as uf_nome, uf.sigla as uf_sigla from municipio as mcp left outer join uf on mcp.idUf = uf.idUf;

create view infos_produto as
select pdt.nome, pdt.valor, fnc.nome as fornecedor from produto as pdt left outer join fornecedor as fnc on pdt.idFornecedor = fnc.idFornecedor;

create view infos_transportadora as 
select 
	trn.nome as transportadora,
	trn.logradouro,
	trn.numero,
	uf.nome as unidade_federacao,
	uf.sigla as sigla
from
	transportadora as trn
left outer join
	municipio as mcp on trn.idMunicipio = mcp.idMunicipio
left outer join
	uf on mcp.idUf = uf.idUf;

create view infos_pedido as 
select prd.data_pedido, prd.valor, trn.nome as transportadora, cln.nome as cliente, vnd.nome as vendedor from pedido as prd left outer join transportadora as trn on prd.idTransportadora = trn.idTransportadora left outer join cliente as cln on prd.idCliente = cln.idCliente left outer join vendedor as vnd on prd.idVendedor = vnd.idVendedor