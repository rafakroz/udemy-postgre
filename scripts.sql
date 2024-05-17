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

select * from cliente;

-- O comando "alter table" é utilizado para alterar a estrutura da tabela
-- Os comandos "uodate" e "delete" são utilizados com os dados

alter table cliente rename column profissao to idprofissao;

select * from cliente;
-- Algo como: Altere a tabela cliente, renomeie a coluna profissão para idprofissao

alter table cliente alter column idprofissao type integer;
-- Algo como: Altere a tabela cliente, alterando a coluna idprofissao para o tipo integer

-- Neste ponto, ocorrerá um erro, pois já existem dados e não é possível efetuar a conversão
-- Será preciso criar uma nova coluna, que armazenará os ids das profissões

alter table cliente drop idprofissao;
-- Comando "drop" para apagar a coluna idprofissao

select * from cliente;

alter table cliente add idprofissao integer;
-- Comando "add" para adicionar a coluna idprofissao

/*
Será criada uma constraint na coluna idprofissao, com uma chave estrangeira do diprofissao da tabela profissao.
Uma chave estrangeira sempre fará relação com uma chave primária de outra tabela.

foreign key = fk
*/

alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);
-- Algo como: altere a tabela x, adicione a constraint, onde a chave estrangeira é o campo x e relaciona-se com a tabela y, e a chave primária é z.

select * from cliente;

-- Com "in ()" é possível informar vários ids de uma só vez

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente in (2);
update cliente set idprofissao = 3 where idcliente in (3);
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

delete from profissao where idprofissao =1;

-- Devido ao fato da profissão estar relacionada na tabela cliente, não possível excluir na tabela profissão
-- Caso haja interesse em deletar, é preciso desvincular da tabela cliente



-- SEÇÃO 2 - AULA 22: CHAVES ESTRANGEIRAS 2 ----------------------------------------------------

select * from cliente;

-- Alterar nacionalidade
-- Exclui coluna
alter table cliente drop nacionalidade;

-- Adiciona nova coluna
alter table cliente add idnacionalidade integer;

-- Cria chave estrangeira
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);

select * from nacionalidade;

update cliente set idnacionalidade = 1 where idcliente in (1, 2, 3, 4, 6, 10, 11, 14);
update cliente set idnacionalidade = 2 where idcliente in (5, 7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9, 13);

select * from cliente;

-- Alterar complemento

alter table cliente drop complemento;

alter table cliente add idcomplemento integer;

alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7);

-- Alterar Bairro

alter table cliente drop bairro;

alter table cliente add idbairro integer;

alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4, 5);
update cliente set idbairro = 4 where idcliente = 7;



-- SEÇÃO 2 - AULA 23: CHAVES ESTRANGEIRAS 3 ----------------------------------------------------

/*
Haverão níveis de relacionamento:
cliente > municipio
municipio > uf
*/

select * from cliente;

-- Criação da tabela UF

create table uf (
	iduf integer not null,
	nome character varying (30) not null,
	sigla character (2) not null,

	constraint pk_ufd_idunidade primary key (iduf),
	constraint uc_ufd_nome unique (nome),
	constraint uc_ufd_sigla unique (sigla)
);

insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');

select * from uf;

-- Criação da tabela município
-- Como terá a chave estrangeira da tabela uf, foi criada depois, para um processo único

create table municipio (
	idmunicipio integer not null,
	nome character varying (30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint uc_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);

select * from municipio;

select * from uf;

-- Atualizar tabela cliente

alter table cliente drop municipio;
alter table cliente drop uf;

alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cln_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

select * from cliente;

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 7 where idcliente = 8;
update cliente set idmunicipio = 8 where idcliente = 9;
update cliente set idmunicipio = 9 where idcliente in (14, 15);



-- SEÇÃO 2 - AULA 24: EXERCÍCIO ----------------------------------------------------

-- Criação da tabela Fornecedor

create table fornecedor (
	idfornecedor integer not null,
	nome character varying (50) not null,

	constraint pk_fnc_idfornecedor primary key (idfornecedor),
	constraint uc_fnc_nome unique (nome)
);

-- Criação da tabela Vendedor

create table vendedor (
	idvendedor integer not null,
	nome character varying (50) not null,

	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint uc_vnd_nome unique (nome)
);

-- Criação da tabela Transportadora

create table transportadora (
	idtransportadora integer not null,
	idmunicipio integer not null,
	nome character varying (50) not null,
	logradouro character varying  (50),
	numero character varying (10),

	constraint pk_tpt_idtransportadora primary key (idtransportadora),
	constraint uc_tpt_nome unique (nome),
	constraint fk_tpt_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio)
);

-- Criação da tabela Produto

create table produto (
	idproduto integer not null,
	idfornecedor integer not null,
	nome character varying (50) not null,
	valor numeric (10,2) not null, -- na correção, usou float

	constraint pk_pdt_idproduto primary key (idproduto),
	constraint fk_pdt_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)	
);

-- Inserts na tabela Vendedor

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');

-- Inserts na tabela Fornecedor

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');

-- Inserts na tabela Transportadora

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero) values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');
insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero) values (2, 5, 'União Transportes', null, null);

-- Inserts na tabela Produto

insert into produto (idproduto, idfornecedor, nome, valor) values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) values (3, 2, 'Placa Mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) values (5, 2, 'Placa de Vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) values (7, 1, 'Gabinete', 35);



-- SEÇÃO 2 - AULA 24: EXERCÍCIO ----------------------------------------------------

-- Criação da tabela Pedidos

create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor numeric (10,2) not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

update cliente set nome = 'Manoel' where idcliente = 1;

-- Inserts na tabela Pedido

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (1, '2008-04-01', 1300, 1, 1, 1);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (2, '2008-04-01', 500, 1, 1, 1);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (3, '2008-04-02', 300, 11, 2, 5);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (4, '2008-04-05', 1000, 8, 1, 7);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (5, '2008-04-06', 200, 9, 2, 6);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (6, '2008-04-06', 1985, 10, 1, 6);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (7, '2008-04-06', 800, 3, 1, 7);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (8, '2008-04-06', 175, 3, null, 7);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (9, '2008-04-07', 1300, 12, null, 8);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (10, '2008-04-10', 200, 6, 1, 8);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (11, '2008-04-15', 300, 15, 2, 1);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (12, '2008-04-20', 500, 15, 2, 5);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (13, '2008-04-20', 350, 9, 1, 7);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (14, '2008-04-23', 300, 2, 1, 5);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
	values (15, '2008-04-25', 200, 11, null, 5);


------------------------------------------------
