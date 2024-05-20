-- SEÇÃO 2 - AULA 38: RELACIONAMENTO COM JOINS ----------------------------------------------------

/* inner join: Obriga que haja o relacionamento entre tabelas. Caso haja dado em branco, irá suprimir a linha. */

select 	cln.nome as "Cliente", 	prf.nome as "Profissão"
	from cliente as cln
		inner join profissao as prf
			on cln.idprofissao = prf.idprofissao;


/* left outer join: Vai sempre garantir o relacionamento da tabela da esquerda com a da direita. Independente de ter valores nulos ou não. */

select 	cln.nome as "Cliente", 	prf.nome as "Profissão"
	from cliente as cln
		left outer join profissao as prf
			on cln.idprofissao = prf.idprofissao;


/* right outer join: Relacionamento inverso ao left. Pouco [quase nunca] usado. */
/* No exemplo abaixo, está relacionando a tabela profissão com a tabela cliente. */

select 	cln.nome as "Cliente", 	prf.nome as "Profissão"
	from cliente as cln
		right outer join profissao as prf
			on cln.idprofissao = prf.idprofissao;



-- SEÇÃO 2 - AULA 39: EXERCÍCIOS COM JOINS ----------------------------------------------------

-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.

-- 2. O nome do produto, o valor e o nome do fornecedor.

-- 3. O nome da transportadora e o município.

-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.

-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.

-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).

-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).

-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.

-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.

-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).

-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).

-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).

-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).

-- 14.O nome do produto e a quantidade vendida (agrupado por produto).

-- 15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).

16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
