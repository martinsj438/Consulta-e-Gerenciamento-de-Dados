create database oficina;
use oficina;

drop database oficina;
drop table maoobra;

create table cep(
cep varchar(20) not null primary key,
bairro varchar (20) not null,
rua varchar(60) not null,
cidade varchar(60) not null,
uf varchar (20) not null);

create table usa(
codpeca varchar(20)not null primary key,
codservico varchar(20)not null);				

create table executa(
codservico varchar(20)not null primary key,
codmaoobra varchar(20)not null);

create table cliente(
codcliente varchar(40) not null primary key,
nome varchar (60)not null,
telefone varchar (20) not null,
cep varchar (20) not null,
foreign key(cep)references cep(cep));

create table carro(
placa varchar(40)not null primary key,
modelo varchar (40)not null,
marca varchar(40)not null,
ano varchar(20)not null,
cor varchar(20)not null,
descricao varchar(60)not null);

create table servico(
codservico smallint not null primary key,
dataentrada varchar(20)not null,
datasaida varchar(20)not null,
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

insert into usa(codpeca,codservico)values('1','100'),
										 ('4','105');

insert into executa(codservico,codmaoobra)values('100','3'),
												('105','7');

insert into cep(cep,bairro,rua,cidade,uf)values
('23456789','nova iguacu','ubirajara','rio de janeiro','rj'),
('23456710','nova iguacu','poti','rio de janeiro','rj');

insert into cliente(codcliente,nome,telefone,cep)values
('32','jefferson','(21)2570-1972','23456789'),
('34','mario','(21)2570-1974','23456710');
                                                        
insert into carro(modelo,marca,ano,cor,placa,descricao)values
('Chevrolet','Corvette','2014','vermelho','4356BAX','farol'),
('Fiat','Palio','2009','cinza','luw5554','lataria');

insert into servico(codservico,dataentrada,datasaida,placa,defeito)values
('100','1-01-2019','10-01-2019','3453BTW','farol'),
('105','24-01-2019','25-01-2019','luw5554','lataria');

insert into maoobra(valor,codmaoobra,especialidade)values
('R$350,00','3','Mecanico farol'),
('R$100,00','7','Mecanico lataria');

insert into pecas(codpeca,nome,precouni,quantestoque)values
('1','farol','R$135,00','4'),
('4','lataria','R$235,00','6');

select cliente.nome,cliente.cep
from cliente,cep;

select cliente.nome,cliente.cep
from cliente,cep
where bairro='nova iguaçu';

select cliente.telefone,carro.placa,carro.ano,carro.marca
from cliente,carro;

select nome,telefone,servicosplaca,codservico
from cliente,servico
where servico.codservico=3;

select pecas,servico.codservico
from pecas,servico,pecasxservico
where servico.codservico=3
and pecas.codpeca = pecasxservico.codpeca
and servico.codservico = pecasxservico.codservico;

select pecas.nome,servico.codservico,maoobra.especialidade,servico.placa,servico.dataentrada
from pecas,servico,pecasxservico,servicoxmaoobra,maoobra
where servico.placa='3453BTW'
and servico.dataentrada='24-01-2019'
and pecas.codpeca = pecasxservico.codpeca
and servico.codservico = pecasxservico.codservico
and servico.codservico = servicoxmaoobra.codservico
and maoobra.codmaoobra = servicoxmaoobra.codmaoobra;

select sum(precouni) as total 
from pecas;

select avg(precouni) as media 
from pecas;

select * from maoobra 
where valor = (select max(valor) 
from maoobra);

Select * from pecas where nome like 'f%';

Select * from pecas where nome like '%l';

Select * from pecas where nome like '%ro%';

select * from pecas where codpeca in (1);

select * from pecas where codpeca between 1 and 2;

1
select * from cliente where nome like 'm%';
2
select * from servico where dataentrada between '1-01-2019' and '10-01-2019';
3
select * from servico where codservico between 100 and 105;
4
select * from maoobra where valor between '100,00' and '250,00';
5
select * from servico where codservico in (105) ;




select * from cep;
select * from usa;
select * from executa;
select * from cliente;
select * from carro;
select * from servico;
select * from maoobra;
select * from pecas;
