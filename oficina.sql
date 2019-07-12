create database oficina;
use oficina;

drop database oficina;
drop table cliente;

create table cep(
cep varchar(20) not null primary key,
rua varchar(60) not null,
endereco varchar(60) not null,
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
modelo varchar (40)not null,
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

insert into usa(codpeca,codservico)values
('456','234');

insert into executa(codservico,codmaoobra)values
('234','12');

insert into cep(cep,rua,endereco,cidade,uf)values
('26285511','rua algusta','nova iguaçu','rio de janeiro','rj');

insert into cliente(codcliente,nome,telefone,cep)values
(6,'carlos','(21)2345-2356','37385345');

insert into carro(modelo,marca,ano,cor,placa,descricao)values
('hyundai','hb20','2014','zinza','2570btw','capo');

insert into servico(codservico,dataentrada,placa,defeito)values
('234','15-01-2019','3453BTW','lataria');

insert into maoobra(valor,codmaoobra,especialidade)values
('R$350,00','12','Mecanico lataria');

insert into pecas(codpeca,nome,precouni,quantestoque)values
('456','lataria','R$500,00','4');


select nome
from pecas group by nome
having min(quantestoque)<3;


select c.nome, c.telefone, v.ano 
from cliente c inner join carro v
on c.codcliente = v.codcliente
and v.ano=2014;


select m.especialidade
from maoobra m inner join executa sm
on m.codmaoobra = sm.codmaoobra
inner join servico s
on s.codservico = sm.codservico
and s.codservico=3;


select c.nome, c.telefone
from carro v inner join servico s
on v.placa = s.placa
inner join cliente c
on c.codcliente = v.codcliente
and s.dataentrada = '15-01-2019';


select c.nome, c.telefone, v.marca
from cliente c inner join carro v
on c.codcliente = v.codcliente
and v.marca = 'hyundai';


select s.placa, m.especialidade
from maoobra m inner join executa sm
on m.codmaoobra = sm.codmaoobra
inner join servico s
on s.codservico = sm.codservico
and s.codservico=1;




select * from cep;
select * from usa;
select * from cliente;
select * from carro;
select * from servico;
select * from maoobra;
select * from pecas;


