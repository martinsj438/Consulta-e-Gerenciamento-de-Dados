create database produto;

use produto;

create table produto(
 cod INT not null primary key,
 produto VARCHAR(60) not null,
 fornecedor VARCHAR(40) not null,
 quantidade VARCHAR(20) not null,
 precovenda VARCHAR(20) not null,
 precocompra VARCHAR(20) not null);
 
select * from produto;