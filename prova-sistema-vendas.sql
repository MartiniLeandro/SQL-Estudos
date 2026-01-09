create table cliente (
	idCliente serial not null,
	nome varchar(50) not null,
	email varchar(50)  not null,
	data_cadastro date not null,
	ativo boolean default true,

	constraint pk_cln_idCliente primary key(idCliente),
	constraint un_cln_email unique(email)
);