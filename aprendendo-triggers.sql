create table bairro_auditoria(
	idBairro integer not null,
	data_criacao timestamp not null
);

create function bairro_log() returns trigger language plpgsql as 
$$
begin
	insert into bairro_auditoria(idBairro,data_criacao) values (new.idBairro,current_timestamp);
	return new;
end;
$$;

create trigger log_bairro_trigger after insert on bairro for each row execute function bairro_log();


call insere_bairro('teste 10');
call insere_bairro('teste 20');
call insere_bairro('teste 30');
call insere_bairro('teste 40');

select * from bairro;
select * from bairro_auditoria;

-- EXERCÍCIO

create table pedidos_apagados(
	idPedido integer not null,
	idCliente integer not null,
	idTransportadora integer not null,
	idVendedor integer not null
);

alter table pedidos_apagados add column data_pedido date;
alter table pedidos_apagados add column valor integer;


create function bckp_pedidos() returns trigger language plpgsql as 
$$
begin
	insert into pedidos_apagados(idPedido,idCliente,idTransportadora,idVendedor,data_pedido,valor) values (old.idPedido,old.idCliente,old.idTransportadora,old.idVendedor,old.data_pedido,old.valor);
	return old;
end;
$$;

create trigger bckp_pedidos_trigger before delete on pedido for each row execute procedure bckp_pedidos();

select * from pedido;
delete from pedido where idPedido = 17;
select * from pedidos_apagados;

