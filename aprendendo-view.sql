create view cliente_profissao as
select cln.nome as cliente, prf.nome as profissao from cliente as cln left outer join profissao as prf on cln.idProfissao = prf.idProfissao;

select * from cliente_profissao;
select cliente from cliente_profissao where profissao = 'Professor';

drop  view cliente_profissao;

-- caso queira atualizar a view, é recomendado apaga-la e criar novamente