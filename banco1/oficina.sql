create database oficina;

use oficina;

create table cliente(
nome varchar(60)not null,
telefone varchar(20)not null,
codcliente varchar(20)not null,
endereco varchar(60)not null primary key);

create table cep(
cep varchar(60)not null primary key,
rua varchar(20)not null,
bairro varchar(20)not null,
cidade varchar(20)not null,
uf varchar(60)not null);

create table carro(
marca varchar(15)not null,
ano varchar(15)not null,
cor varchar(15)not null,
placa varchar(15)not null primary key,
descricao varchar(80)not null);

create table servico(
codservico varchar(20)not null primary key,
dataentrada varchar(20)not null,
datasaida varchar(20)not null,
placa varchar(80)not null,
defeito varchar(60)not null);

create table maoobra(
valor varchar(20)not null,
codmaoobra varchar(20)not null primary key,
especialidade varchar(80)not null);

create table pecas(
codigo varchar(20)not null primary key,
nome varchar(20)not null,
precounitario varchar(20)not null,
quantestoque varchar(20)not null);

insert into cliente(nome,telefone,codcliente,endereco)values
('Carlos','(21)2570-1972','4321','Rua algum lugar,32');

insert into cep(cep,rua,bairro,cidade,uf)values
('2312323','rua algum lugar','jacarepagua','rio de janeiro','rj');

insert into carro(marca,ano,cor,placa,descricao)values
('Kia Stinger','2019','preto','3453BTW','Problema no câmbio');

insert into servico(codservico,dataentrada,datasaida,placa,defeito)values
('100','10/05/2018','14/01/2019','3453BTW','Problema no câmbio');

insert into maoobra(valor,codmaoobra,especialidade)values
('R$350,00','54321','Mecanico');

insert into pecas(codigo,nome,precounitario,quantestoque)values
('6745','cambio,marcha','1','300');


select * from cliente;

select * from cep;

select * from carro;

select * from servico;

select * from maoobra;

select * from pecas;

alter table cep modify cep smallint not null auto_increment;
