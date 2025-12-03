select * from cliente order by idCliente asc;

update cliente set nome = 'Teste' where idCliente = 1;

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idCliente = 4;

insert into cliente (idCliente, nome) values (16,'Leandro')

delete  from cliente where idCliente = 16;

-- 1) Insira os dados abaixo na tabela de clientes

insert into cliente (idCliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf) values (16,'Maicon','12349596421','1234','1965-10-10','F','Empresário','Florianópolis','PR')
insert into cliente (idCliente, nome, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) values (17,'Getúlio','4631','F','Estudante','Brasileira','Rua central','343','Apartamento','Centro','Curitiba','SC')
insert into cliente (idCliente, nome, genero, profissao, nacionalidade,numero, complemento) values (18,'Sandra','M','Professor','Italiana','12','Bloco A')

-- 2) Altere os dados do cliente Maicon

	-- a) O CPF para 45390569432
	
	update cliente set cpf = '45390569432' where idCliente = 16

	-- b) O gênero para M
	
	update cliente set genero = 'M' where idCliente = 16

	-- c) A nacionalidade para Brasileira

	update cliente set nacionalidade = 'Brasileira' where idCliente = 16

	-- d) O UF para SC

	update cliente set uf = 'SC' where idCliente = 16

-- 3) Altere os dados do cliente Getúlio

	-- a) A data de nascimento para 01/04/1978

	update cliente set data_nascimento = '1978-04-01' where idCliente = 17

	-- b) O gênero para M

	update cliente set genero = 'M' where idCliente = 17

-- 4) Altere os dados da cliente Sandra

	-- a) O gênero para F

	update cliente set genero = 'F' where idCliente = 18

	-- b) A profissão para Professora

	update cliente set profissao = 'Professora' where idCliente = 18

	-- c) O número para 123

	update cliente set numero = 123 where idCliente = 18

-- 5) Apague o cliente Maicon

delete from cliente where idCliente = 16

-- 6) Apague a cliente Sandra

delete from cliente where idCliente = 18