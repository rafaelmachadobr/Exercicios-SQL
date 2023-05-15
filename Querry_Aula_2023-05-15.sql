create database Curso;
use Curso;

create table instrutor (
	Cod_inst int auto_increment primary key,
    nome_inst varchar(50),
    sexo_inst char(1),
    data_nasc date,
    data_admis date,
    sal_inst decimal(10,2)
	);
    
describe instrutor;

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('João da Silva', 'M', '1985-06-20', '2021-01-15', 5000.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Maria Aparecida', 'F', '1990-12-12', '2020-03-01', 3800.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Carlos Alberto', 'M', '1987-03-25', '2019-05-10', 4500.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Fernanda Silva', 'F', '1995-11-01', '2022-02-28', 4200.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Pedro Henrique', 'M', '1992-08-10', '2018-06-15', 6200.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Ana Paula Santos', 'F', '1988-04-05', '2021-07-20', 4800.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Lucas Oliveira', 'M', '1994-11-22', '2019-09-05', 5400.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Julia Martins', 'F', '1991-02-15', '2020-11-10', 4200.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Gabriel Santos', 'M', '1993-09-28', '2022-04-01', 5800.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Carla Oliveira', 'F', '1985-08-02', '2017-12-15', 6500.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Gustavo Silva', 'M', '1990-06-10', '2019-01-01', 4000.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Felipe Pereira', 'M', '1995-02-28', '2020-05-10', 3800.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Aline Souza', 'F', '1989-09-15', '2018-03-05', 4500.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Rafael Santos', 'M', '1997-11-18', '2022-01-15', 5200.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Maria Silva', 'F', '1990-07-02', '2019-08-20', 4100.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Renato Oliveira', 'M', '1987-05-20', '2015-03-10', 7000.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Patrícia Martins', 'F', '1993-01-08', '2020-12-01', 6200.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Ana Paula Rodrigues', 'F', '1992-06-23', '2021-02-10', 4800.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Lucas Santos', 'M', '1998-03-17', '2022-04-05', 3500.00);

INSERT INTO instrutor (nome_inst, sexo_inst, data_nasc, data_admis, sal_inst)
VALUES ('Carla Oliveira', 'F', '1985-11-30', '2017-05-20', 5900.00);

ALTER TABLE instrutor ADD COLUMN email varchar(100);
ALTER TABLE instrutor ADD COLUMN celular varchar(11);
ALTER TABLE instrutor ADD COLUMN nacionalidade varchar(50);

ALTER TABLE instrutor DROP COLUMN data_nasc;

UPDATE instrutor SET nacionalidade = 'Brasileira';

UPDATE instrutor SET sal_inst = sal_inst + 320.00 WHERE data_admis < '2013-01-01';

UPDATE instrutor SET sal_inst = sal_inst + 100.00 WHERE sexo_inst = 'F';

DELETE FROM instrutor WHERE Cod_inst IN (10, 15, 20);

select * from instrutor;
