create database bancario;

use bancario;

create table cidade(
codcidade smallint not null primary key,
nome varchar(60)not null);

insert into cidade(nome, codcidade)values('Nova Iguaçu',1),('Belford Roxo',2),('Mesquita',3),('Nilópolis',4);

create table cliente(
cpf varchar(20)not null primary key,
nome varchar(60)not null,
endereco varchar(80)not null,
telefone varchar(20)not null);

insert into cliente(cpf,nome,endereco,telefone)values
('005.864.437.77','fatima bs Melo','trav elpidio,100','(21)2222-4455'),
('015.824.437.77','gabriel bs Melo','trav elpidio,100','(21)2222-4455'),
('111.864.437.77','gabriele bs Melo','trav elpidio,100','(21)2222-4455');


create table agencia(
codagencia varchar(15)not null primary key,
nome varchar(60)not null,
endereco varchar(60) not null,
codcidade smallint not null,
foreign key(codcidade)references cidade(codcidade));

insert into agencia(codagencia,nome,endereco,codcidade)values
('3453','mesquita','rua mister watkins,45 centro',3),
('3452','nilópolis','rua pedro alvares cabral,5 centro',4),
('3451','nova iguaçu','rua nilo peçanha,45 centro',1);


create table conta(
nro_conta smallint not null primary key,
saldo real not null,
cpf varchar(20)not null,
codagencia varchar(15)not null,
foreign key(cpf)references cliente(cpf),
foreign key(codagencia)references agencia(codagencia));

insert into conta(nro_conta,saldo,cpf,codagencia)values
(1244,1000,'005.864.437.77','3452'),
(14551,2000,'111.864.437.77','3453'),
(1441,520,'015.824.437.77','3453');
										  
select count(*)	from cidade;
select sum (saldo) from conta;
select sum(saldo) from conta where codagencia=3452;
select avg(saldo) from conta;
select max(saldo) from conta;										
select codagencia,max(saldo)from conta group by codagencia;										  
Select codagencia,max(saldo) from conta group by codagencia having max(saldo)>1800;										  
										  