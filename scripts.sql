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



-- SEÇÃO 2 - AULA 14: EXERCÍCIOS CONSULTA SIMPLES ----------------------------------------------------

select * from cliente;

-- 1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente.
SELECT nome, genero, profissao from cliente order by nome desc; -- ok

-- 2. Os clientes que tenham a letra “R” no nome.
SELECT nome from cliente where nome like '%r%'; -- ok

-- 3. Os clientes que o nome inicia com a letra “C”.
SELECT nome from cliente where nome like 'C%'; -- ok

-- 4. Os clientes que o nome termina com a letra “A”.
SELECT nome from cliente where nome like '%a'; -- ok

-- 5. Os clientes que moram no bairro “Centro”.
SELECT nome, bairro from cliente where bairro like 'Centro';

select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.'; -- correção

-- 6. Os clientes que moram em complementos que iniciam com a letra “A”.
select nome, logradouro, numero, complemento from cliente where complemento like 'A%'; -- ok

-- 7. Somente os clientes do sexo feminino.
SELECT nome, genero from cliente where genero like 'F'; -- ok

SELECT nome, genero from cliente where genero = 'F'; -- outra opção

-- 8. Os clientes que não informaram o CPF.
SELECT nome, cpf from cliente where cpf is null; -- ok

-- 9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão.
SELECT nome, profissao from cliente order by profissao asc; -- ok

-- 10. Os clientes de nacionalidade “Brasileira”.
SELECT nome, nacionalidade from cliente where nacionalidade like 'Brasileira';

SELECT nome, nacionalidade from cliente where nacionalidade like 'Brasil%'; -- correção

-- 11. Os clientes que informaram o número da residência.
select nome as "Nome", logradouro as "Endereço", numero as "N°" from cliente where numero is not null; -- ok

-- 12. Os clientes que moram em Santa Catarina.
SELECT nome as "Nome", municipio as "Cidade", uf as "UF" from cliente where uf like 'SC'; -- ok

-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002.
SELECT nome as "Nome", data_nascimento as "Data de Nascimento" FROM cliente where data_nascimento between '2000-01-01' and '2002-01-01'; -- ok

-- 14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes.
SELECT 'Nome: ' || nome || ' Endereço: ' || logradouro || ', N°: ' || numero || ' Complemento: ' || complemento
	|| ' Bairro: ' || bairro || ' Cidade: ' || municipio || ' UF: ' || uf as "Dados do Cliente" from cliente;

SELECT 'Nome: ' || COALESCE (nome, '-----') || ' Endereço: ' || COALESCE (logradouro, '-----') || ', N°: ' || COALESCE (numero, '-----') || ' Complemento: '
	|| COALESCE (complemento, '-----') || ' Bairro: ' || COALESCE (bairro, '-----') || ' Cidade: ' || COALESCE (municipio, '-----')
	|| ' UF: ' || COALESCE (uf, '-----') as "Dados do Cliente" from cliente;

/*
Os campos com valor null estão impactando em não exibir resultados.
Benilson me deu a dica de usar coalesce, onde, caso o campo seja null, irá substituir pelo valor informado.
*/



-- SEÇÃO 2 - AULA 17: COMANDOS UPDATE E DELETE ----------------------------------------------------

SELECT * FROM cliente;

/*
Updade para atualizar uma tabela
Defina a tabela
Defina o campo e novo dado
E indique o ID do cliente.

Atenção: Caso não seja definido o ID, toda tabela será alterada, todos os clientes.
*/

UPDATE cliente set nome = 'Teste' where idcliente = 1;

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values (16, 'João');

DELETE from cliente where idcliente = 16;

-- Sempre especificar o id / pk a ser excluída.



-- SEÇÃO 2 - AULA 18: EXERCÍCIOS ----------------------------------------------------

SELECT * FROM cliente order by idcliente asc;

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf)
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', 'Florianópolis', 'PR');

insert into cliente (idcliente, nome, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, numero, complemento)
values (18, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A');

-- 2. Altere os dados do cliente Maicon
-- a. O CPF para 45390569432
-- b. O gênero para M
-- c. A nacionalidade para Brasileira
-- d. O UF para SC

update cliente set cpf = '45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16;

-- 3. Altere os dados do cliente Getúlio
-- a. A data de nascimento para 01/04/1978
-- b. O gênero para M

update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17;

-- 4. Altere os dados da cliente Sandra
-- a. O gênero para F
-- b. A profissão para Professora
-- c. O número para 123

update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18;

-- 5. Apague o cliente Maicon

delete from cliente where idcliente = 16;

-- 6. Apague a cliente Sandra

delete from cliente where idcliente = 18;


-- SEÇÃO 2 - AULA 20: CRIAÇÃO DE MAIS TRABELAS ----------------------------------------------------

-- O correto é a criação de tabelas específicas para determinadas informações

-- Tabela profissão. Padroniza os dados, de modo que não haja erros de preenchimento.

CREATE TABLE profissao (
	idprofissao integer not null,
	nome character varying (30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

select * from profissao;

-- Tabela acionalidade

create table nacionalidade (
	idnacionalidade integer not null,
	nome character varying (30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

select nacionalidade from cliente;

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-Americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

-- Tabela de Complementos

create table complemento (
	idcomplemento integer not null,
	nome character varying (30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint uc_cpl_nome unique (nome)
);

select complemento from cliente;

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;

-- Tabela Bairro

create table bairro (
	idbairro integer not null,
	nome character varying (30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

select bairro from cliente;

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;



-- SEÇÃO 2 - AULA 21: CHAVES ESTRANGEIRAS 1 ----------------------------------------------------

