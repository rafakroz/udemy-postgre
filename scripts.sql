create table cliente (
	idcliente integer not null,	
	nome varchar(50) not null, 
	cpf char(11), 
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	constraint pk_cln_idcliente primary key (idcliente)
)

-- not null: não permite campo vazio
-- varchar: limite de x caracteres, mas ocupa apenas a qtd usada
-- char: limite de x caracteres e considera todos, mesmo sem usar
-- constraint: restrição
-- pk: primary key -> chave primária. Será sempre única


	
-- SEÇÃO 2 - AULA 9: INSERÇÃO DE DADOS ----------------------------------------------------

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'Porto União', 'SC')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'Poro União', 'SC')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart.', 'Cto.', 'Canoinhas', 'SC')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'PR')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', '100', null, 'São Pedro', 'General Carneiro', 'PR')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', null, 'Ctr.', 'São Paulo', 'SP')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (7, 'Anderson', null, null, null, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (8, 'Camila', '9998282828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'Uberlândia', 'MG')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (9, 'Cristiano', null, null, null, 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (10, 'Fabrício', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, null, null, 'PU', 'SC')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, null, null, 'Porto União', 'SC')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', null, 'Rua das Laranjeiras', '200', null, 'C. Nova', 'Canoinhas', 'SC')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'Casa', 'Cidade N.', 'São Paulo', 'SP')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (14, 'Jeferson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, null, null, 'União da Vitória', 'PR')

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, null, null, 'União da Vitória', 'PR')

	
	
-- SEÇÃO 2 - AULA 12: CONSULTA SIMPLES 1 ----------------------------------------------------

SELECT * FROM cliente;
-- selecionar a tabela cliente. * exibir todas as colunas

SELECT nome, data_nascimento FROM cliente;

SELECT nome as "Nome", data_nascimento as "Data de Nascimento" FROM cliente;
-- renomeando as colunas

SELECT cpf, rg FROM cliente;

SELECT 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" FROM cliente;
-- Concatenando colunas

SELECT * FROM cliente LIMIT 3;
-- limit: limite de resultados



-- SEÇÃO 2 - AULA 12: CONSULTA SIMPLES 2 ----------------------------------------------------

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01';
-- where: condição da consulta

SELECT nome from cliente where nome like 'C%';
-- like: algo como igual a
-- 'C%' : iniciado com o C % tudo que vier após

SELECT nome from cliente where nome like '%c%';
-- '%c%' : tem a letra c em qualquer posição

SELECT nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';
-- between : condição para resultado entre 2 valores

SELECT nome, rg from cliente where rg is null;
-- is null :  exibir os campos com valores nulos

SELECT nome FROM cliente order by nome asc;
-- order by xx asc : ordenar coluna em ordem crescente

SELECT nome FROM cliente order by nome desc;
-- order by xx desc : ordenar coluna em ordem decrescente