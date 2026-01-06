create procedure insere_bairro(bairro varchar(30)) language sql as
$$
	insert into bairro(nome) values (bairro)
$$;

call insere_bairro('Teste procedure');

select * from bairro;

-- Exercícios

create or replace procedure aumentar_valor_produto(id integer, porcentagem float) language sql as
$$
	update produto set valor = valor + (valor * porcentagem / 100) where idProduto = id;
$$;


call aumentar_valor_produto(1,100);
call aumentar_valor_produto(2,50);

create procedure deletar_produto(id integer) language sql as 
$$
	delete from produto where idProduto = id;
$$;

select * from produto order by idProduto;
insert into produto(idProduto,idFornecedor,nome,valor) values (8,1,'teste',1);
call deletar_produto(8);




