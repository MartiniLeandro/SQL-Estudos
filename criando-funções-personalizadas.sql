select valor, concat('R$', round(cast(valor as numeric), 2)) from pedido;

create function formata_moeda(valor float) returns varchar(20) language plpgsql as
$$
begin
	return concat('R$', round(cast(valor as numeric), 2));
end;
$$;

select valor, formata_moeda(valor) from pedido;
select valor, formata_moeda(valor) from produto;

create function get_nome_by_idCliente(idc integer) returns varchar(50) language plpgsql as
$$
declare r varchar(50);
begin
	select nome into r from cliente where idCliente = idc;
	return r;
end;
$$;

select idCliente, get_nome_by_idCliente(idCliente) as nome from cliente order by idCliente;]

create function  get_valor_by_idPedido(idp integer) returns numeric(10,2) language plpgsql as  
$$
begin
	return valor from pedido where idPedido = idp;
end;
$$;

select idPedido, get_valor_by_idPedido(idPedido) as valor from pedido order by idPedido;

create or replace function maior() returns integer language plpgsql as 
$$
begin
	return (select idPedido from pedido where valor = (select max(valor) from pedido));
end;
$$;

select maior();

