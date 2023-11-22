use master
go
alter database Recflux set SINGLE_USER WITH ROLLBACK IMMEDIATE;
go
drop database if exists Recflux
go
create database Recflux
go
use Recflux

create table cliente (
	cpf_cnpj nvarchar(15) not null,
	nome nvarchar(40) not null,
	data_nasc date not null,
	cep nvarchar(10) not null,
	cidade nvarchar(20) not null,
	estado nvarchar(20) not null,
	email nvarchar(40) not null,
	rg varchar(10) not null,
	primary key (cpf_cnpj)
);

create table projeto (
	id int not null identity,
	cpf_cnpj_cliente nvarchar(15) not null,
	data_criacao date not null,
	descricao nvarchar(100) not null,
	status nvarchar(20) not null,
	primary key (id),
	foreign key (cpf_cnpj_cliente) references cliente(cpf_cnpj)
);

create table assinatura (
	id int not null identity,
	id_projeto int not null,
	validade date not null,
	plano nvarchar(15) not null,
	foreign key (id_projeto) references projeto(id)
)

create table palavra_chave (
	id int not null identity,
	nome nvarchar(40) not null,
	primary key (id)
)


create table dados_coletados_componente (
	id int not null identity,
	clicks bigint not null,
	tempo_uso bigint not null,
	ranking int not null,
	data_coleta date not null,
	tipo nvarchar(40) not null
	primary key (id),
)

create table dados_coletados_componente_palavra_chave (
	id int not null identity,
	id_dados_coletados_componente int not null,
	id_palavra_chave int not null,
	foreign key (id_dados_coletados_componente) references dados_coletados_componente(id),
	foreign key (id_palavra_chave) references palavra_chave(id),
	primary key (id)
)

create table fluxo (
	id int not null identity,
	id_projeto int not null,
	id_dados_coletados_componente_palavra_chave int not null,
	foreign key (id_projeto) references projeto(id),
	foreign key (id_dados_coletados_componente_palavra_chave) references dados_coletados_componente_palavra_chave(id),
	primary key (id)
)

create table feedback_usuario (
	id int not null identity,
	id_fluxo int not null,
	descricao nvarchar(40),
	nota int not null,
	foreign key (id_fluxo) references fluxo(id),
	primary key (id)
)