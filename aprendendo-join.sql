select cln.nome as cliente, prf.nome as profissao from cliente as cln inner join profissao as prf on cln.idProfissao = prf.idProfissao;

select cln.nome as cliente, prf.nome as profissao from cliente as cln left outer join profissao as prf on cln.idProfissao = prf.idProfissao;