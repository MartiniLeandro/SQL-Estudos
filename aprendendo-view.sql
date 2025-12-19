create view cliente_profissao as
select cln.nome as cliente, prf.nome as profissao from cliente as cln left outer join profissao as prf on cln.idProfissao = prf.idProfissao;

select * from cliente_profissao;
select cliente from cliente_profissao where profissao = 'Professor';

drop  view cliente_profissao;

-- caso queira atualizar a view, é recomendado apaga-la e criar novamente

-- EXERCÍCIOS
create view infos_client as -- falta UF
	cln.nome,
	prf.nome as profissao,
	ncl.nome as nacionalidade,
	cmp.nome as complemento,
	mcp.nome as municipio,
	brr.nome as bairro,
	cln.cpf, cln.rg,
	cln.data_nascimento,
	cln.genero,
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
	bairro as brr on cln.idBairro = brr.idBairro;