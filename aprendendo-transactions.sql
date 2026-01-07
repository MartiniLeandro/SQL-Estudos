create table conta (
	idConta serial not null,
	cliente nome_medio not null,
	saldo moeda not null default 0,

	constraint pk_cnt_idConta primary key(idConta)
);

insert into conta(cliente,saldo) values ('Cliente 1',1000);
insert into conta(cliente,saldo) values ('Cliente 2',500);

select * from conta;

begin;
update conta set saldo = saldo - 100 where idConta = 2;
update conta set saldo = saldo + 100 where idConta = 1;
rollback;

begin;
update conta set saldo = saldo - 100 where idConta = 2;
update conta set saldo = saldo + 100 where idConta = 1;
commit;