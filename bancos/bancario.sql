create database bancario;

use bancario;

create table cidade(
codcidade smallint not null primary key auto_increment,
nome varchar(60)not null);

create table cliente(
cpf varchar(20)not null primary key,
nome varchar(60)not null,
endereco varchar(80)not null,
telefone varchar(20)not null);

create table agencia(
codagencia varchar(15)not null primary key,
nome varchar(60)not null,
endereco varchar(60) not null,
codcidade smallint not null,
foreign key(codcidade)references cidade(codcidade));


create table conta(
nro_conta smallint not null primary key,
saldo double not null,
cpf varchar(20)not null,
codagencia varchar(15)not null,
foreign key(cpf)references cliente(cpf),
foreign key(codagencia)references agencia(codagencia));

insert into cidade(nome)values('Nova Iguaçu'),('Belford Roxo'),('Mesquita'),('Nilópolis');

insert into cliente(cpf,nome,endereco,telefone)values
('005.864.437.77','fatima bs Melo','trav elpidio,100','(21)2222-4455'),
('015.824.437.77','gabriel bs Melo','trav elpidio,100','(21)2222-4455'),
('111.864.437.77','gabriele bs Melo','trav elpidio,100','(21)2222-4455');

insert into agencia(codagencia,nome,endereco,codcidade)values
('3453','mesquita','rua mister watkins,45 centro',3),
('3452','nilópolis','rua pedro alvares cabral,5 centro',4),
('3451','nova iguaçu','rua nilo peçanha,45 centro',1);


insert into conta(nro_conta,saldo,cpf,codagencia)values
(1244,1000,'005.864.437.77','3452'),
(14551,2000,'111.864.437.77','3453'),
(1441,520,'015.824.437.77','3453');

select cliente.cpf,cliente.nome,conta.nro_conta
from cliente,conta
where cliente.cpf=conta.cpf;

select codagencia,endereco
from agencia
where nome='mesquta';

insert into conta(nro_conta,saldo,cpf,codagencia)values
(6849,3000,'005.864.437.77','3452');


insert into agencia(codagencia,nome,endereco,codcidade)values
('3510','Nova Iguacu2','Rua Honorio,30',1);

insert into agencia(codagencia,nome,endereco,codcidade)values
('3511','Nova Iguacu3','Rua dr.carvalho dias,50',1);

select agencia.codagencia,agencia.nome,agencia.endereco
from agencia,cidade
where agencia.codcidade=cidade.codcidade
and cidade.nome='nova iguacu';

select cliente.nome,cliente.telefone
from cliente,conta
where cliente.cpf=conta.cpf
and conta.nro_conta>=1500;


  ******* Busca todos os dados de todos os campos em uma tabela***  
select * from cidade;

select * from cliente;

select * from agencia;

select * from conta;

**** Pesquisar campos específicos******

select cpf,nome,telefone from cliente;


****** Apagar banco e tabelas****

drop database nome banco --> apaga um banco

drop table nometabela --> apaga uma tabela***


***** altera a estrutura de um campo na tabela****

alter table cliente modify nome varchar(65)not null;

alter table agencia modify codagencia smallint not null auto_increment;


obs.: quando alteramos um campo chave primária, é necessário desvincular as chaves
estrangeiras.

desc cliente;







