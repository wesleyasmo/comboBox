USE master;
DROP DATABASE combobox;
CREATE DATABASE combobox;
GO

USE combobox;
CREATE TABLE estados(
	pk_id INT PRIMARY KEY IDENTITY(1,1),
	nome NVARCHAR(2)
);

CREATE TABLE clientes(
	pk_id INT PRIMARY KEY IDENTITY(1,1),
	nome NVARCHAR(30),
	endereco NVARCHAR(50),
	fk_estado INT REFERENCES estados(pk_id)
);

update clientes set nome = 'wae', endereco = 'awe', fk_estado = fk_estado+1 where pk_id = 1


insert into estados values ('AC'),
							   ('AL'),
							   ('AP'),
							   ('AM'),
							   ('BA'),
							   ('CE'),
							   ('DF'),
							   ('ES'),
							   ('GO'),
							   ('MA'),
							   ('MT'),
							   ('MS'),
							   ('MG'),
							   ('PA'),
							   ('PB'),
							   ('PR'),
							   ('PE'),
							   ('PI'),
							   ('RJ'),
							   ('RN'),
							   ('RS'),
							   ('RO'),
							   ('RR'),
							   ('SC'),
							   ('SP'),
							   ('SE'),
							   ('TO');

GO							   
create procedure busca
AS
SELECT clientes.pk_id, clientes.nome, clientes.endereco, estados.nome AS 'nome do estado'
FROM clientes join estados on clientes.fk_estado = estados.pk_id