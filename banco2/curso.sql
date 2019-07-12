CREATE TABLE Curso; 

use Curso;

CREATE TABLE disciplina(ID integer NOT NULL, DESCRICAO varchar(255)NOT NULL, PRIMARY KEY(ID));


INSERT INTO disciplina VALUES (1,'Paradigmas');
INSERT INTO disciplina VALUES (2,'Sistema Operacionais');
INSERT INTO disciplina VALUES (3,'Redes de Computadores');
INSERT INTO disciplina VALUES (4,'Sistemas Distribuição');

select * from disciplina; 