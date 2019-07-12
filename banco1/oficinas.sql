create database oficina;
use oficina;

drop database oficina;
drop table servico;

create table cep(
cep varchar(20) not null primary key,
rua varchar(60) not null,
endereco varchar(60) not null,
cidade varchar(60) not null,
uf varchar (20) not null);

create table cliente(
codcliente varchar(40) not null primary key,
nome varchar (60)not null,
telefone varchar (20) not null,
cep varchar (20) not null,
foreign key(cep)references cep(cep));

create table carro(
marca varchar(40)not null,
ano varchar(20)not null,
cor varchar(20)not null,
placa varchar(40)not null primary key,
descricao varchar(60)not null);

create table servico(
codservico smallint not null primary key,
dataentrada varchar(20)not null,
placa varchar(80)not null,
defeito varchar(60)not null);

create table maoobra(
valor varchar (15) not null,
codmaoobra smallint not null primary key,
especialidade varchar(40)not null);

create table pecas(
codpeca smallint not null primary key,
nome varchar(60)not null,
precouni varchar(20)not null,
quantestoque varchar(20)not null);

insert into cep(cep,rua,endereco,cidade,uf)values
('26285511','rua algum lugar','nova iguaçu','rio de janeiro','rj'),
('26285513','rua nuca nem vi','jacarepagua','rio de janeiro','rj'),
('26285514','rua onde que e isso','belford roxo','rio de janeiro','rj');

insert into cliente(codcliente,nome,telefone,cep)values
('4321','jefferson','(21)2570-1372','26285511'),
('4322','fernando','(21)2570-1962','26285513'),
('4323','jenifer','(21)2570-1975','26285514');

insert into carro(marca,ano,cor,placa,descricao)values
('Kia Stinger','2019','preto','3453BTW','Problema no câmbio'),
('FIAT STRADA','2011','vermelho','3453UTV','Problema na lataria'),
('FORD KA FLEX','2009','vermelho','luw5567','Problema no lanterna');

insert into servico(codservico,dataentrada,placa,defeito)values
('100','11/01/2018','3453BTW','câmbio'),
('1001','13/01/2018','3453UTV','lataria'),
('102','10/05/2018','luw5567','lanterna');

insert into maoobra(valor,codmaoobra,especialidade)values
('R$350,00','12','Mecanico cambio'),
('R$250,00','56','Mecanico lataria'),
('R$150,00','45','Mecanico lanterna');

insert into pecas(codpeca,nome,precouni,quantestoque)values
('6745','cambio,marcha','R$350,00','300'),
('6746','lataria','R$250,00','34'),
('6747','lanterna','R$150,00','24');

*******1*******
select cliente.nome,cliente.cep
from cliente,cep;
*******2*******
select cliente.nome,cliente.cep,cep.endereco
from cliente,cep
where endereco='jacarepagua';
*******3*******
select cliente.telefone,carro.placa,carro.ano,carro.marca
from cliente,carro;
*******4*******
select cliente.nome,cliente.cep
from cliente,cep;
*******2*******
select cliente.nome,cliente.cep,cep.endereco
from cliente,cep
where endereco='jacarepagua';
*******3*******
select cliente.telefone,carro.placa,carro.ano,carro.marca
from cliente,carro;
*******4*******
select nome,telefone,placa,codservico
from cliente,servico
where servico.codservico='100';
*******5*******
select pecas,servico.codservico
from pecas,servico
where pecas.codpeca = pecas.servicos
*******6*******


*******7*******
select sum(quantestoque)
from pecas;
*******8*******
select avg(precouni)
from pecas;
*******9*******
select max(valor)
from maoobra;
***************
select * from cep;
select * from cliente;
select * from carro;
select * from servico;
select * from maoobra;
select * from pecas;


