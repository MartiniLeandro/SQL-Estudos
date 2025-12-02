create table cliente (
	idCliente integer not null,
	nome varchar(50) not null, --varchar: utilizará o valor de memória igual a quantidade de caracteres que será salvo
	cpf char(11), -- char: sempre utilizará 11 espaços de caracteres na memória
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text, -- text serve para textos sem quantidade máxima de caracteres

	constraint pk_cln_idCliente primary key (idCliente)
)