select * from pedido;
select data_pedido, extract(day from data_pedido), extract(month from data_pedido), extract(year from data_pedido) from pedido;

select nome from cliente;
select nome, substring(nome from 1 for 5), substring(nome,2) from cliente;

select nome from cliente;
select nome, upper(nome), lower(nome) from cliente;

select nome, cpf, coalesce(cpf, 'Não informado') from cliente;

select nome, extract(month from data_nascimento) from cliente;

select 
	nome, case extract(month from data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
		else 'Não informado'
		end
from 
	cliente;

select nome, extract(year from data_nascimento) from cliente;

select substring(nome,5,10) from municipio;

select upper(nome) from municipio;

select nome, case genero when 'M' then 'Masculino' when 'F' then 'Feminino' end from cliente;

select nome, valor, case when valor > 500 then 'Acima de 500' else 'Abaixo de 500' end from produto;


