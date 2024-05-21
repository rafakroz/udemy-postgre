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

select
	cln.nome as "Nome",
	prf.nome as "Profissão",
	ncn.nome as "Nacionalidade",
	cln.logradouro as "Endereço",
	cln.numero as "N°",
	cmp.nome as "Complemento",
	brr.nome as "Bairro",
	mnc.nome as "Cidade"
from cliente as cln
left outer join profissao as prf
	on cln.idprofissao = prf.idprofissao
left outer join nacionalidade as ncn
	on cln.idnacionalidade = ncn.idnacionalidade	
left outer join complemento as cmp
	on cln.idcomplemento = cmp.idcomplemento
left outer join bairro as brr
	on cln.idbairro = brr.idbairro
left outer join municipio as mnc
	on cln.idmunicipio = mnc.idmunicipio

	
-- 2. O nome do produto, o valor e o nome do fornecedor.

select * from produto

select
	prd.nome as "Produto",
	prd.valor as "Valor",
	fnc.nome as "Fornecedor"
from produto as prd
left outer join fornecedor as fnc
	on prd.idfornecedor = fnc.idfornecedor


-- 3. O nome da transportadora e o município.

select * from transportadora

select 
	trp.nome as "Transportadora",
	mnc.nome as "Cidade"
from transportadora as trp
left outer join municipio as mnc
	on trp.idmunicipio = mnc.idmunicipio


-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.

select * from pedido

SELECT
	pdd.data_pedido as "Data do Pedido",
	pdd.valor as "Valor do Pedido",
	cli.nome as "Nome Cliente",
	trp.nome as "Transportadora",
	vnd.nome as "Vendedor"
from pedido as pdd
left outer join cliente as cli
	on pdd.idcliente = cli.idcliente
left outer join transportadora as trp
	on pdd.idtransportadora = trp.idtransportadora
left outer join vendedor as vnd
	on pdd.idvendedor = vnd.idvendedor


-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.

select * from pedido_produto

select 
	prod.nome as "Produto",
	pdp.quantidade as "Qtd.",
	pdp.valor_unitario as "Valor Unitário"
from pedido_produto as pdp
left outer join produto as prod
	on pdp.idproduto = prod.idproduto


-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).

select * from cliente

select * from pedido

select 
	cli.nome as "Nome",
	pdd.data_pedido as "Data do Pedido"
from cliente as cli
inner join pedido as pdd
	on cli.idcliente = pdd.idcliente
order by cli.nome


-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).

select 
	cli.nome as "Nome",
	pdd.data_pedido as "Data do Pedido"
from cliente as cli
left outer join pedido as pdd
	on cli.idcliente = pdd.idcliente
order by cli.nome

	
-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.

select * from cliente
select * from municipio

-- Correção

select
	mnc.nome,
	count(cli.idcliente)
from cliente cli
left outer join municipio mnc
	on cli.idmunicipio = mnc.idmunicipio
group by mnc.nome


-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.

select * from produto

select
	forn.nome as "Fornecedor",
	count(prod.idproduto) as "Qtd. Produtos"
from produto as prod
left outer join fornecedor as forn
	on prod.idfornecedor = forn.idfornecedor
group by forn.idfornecedor
	

-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).

select * from pedido

select 
	cli.nome as "Cliente",
	sum(ped.valor) as "Total Comprado"
from pedido as ped
left outer join cliente as cli
	on ped.idcliente = cli.idcliente
group by cli.nome


-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).

select * from vendedor
select * from pedido

select 
	ven.nome,
	sum(ped.valor)
from pedido as ped
left outer join vendedor as ven
	on ped.idvendedor = ven.idvendedor
group by ven.nome

--Alternativo
select 
	ven.nome as "Vendedor",
	count(ped.idpedido) as "Qtd. Vendas",
	sum(ped.valor) as "Total de Vendas"
from pedido as ped
left outer join vendedor as ven
	on ped.idvendedor = ven.idvendedor
group by ven.nome


-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).

select * from pedido

select 
	transp.nome as "Transportadora",
	sum(ped.valor) as "Total"
from pedido as ped
left outer join transportadora as transp
	on ped.idtransportadora = transp.idtransportadora
group by transp.nome
order by "Total"


-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).

select * from pedido

select 
	cli.nome as "Nome Cliente",
	count(ped.idpedido) as "Qtd. Pedidos"
from pedido as ped
left outer join cliente as cli
	on ped.idcliente = cli.idcliente
group by cli.nome

-- 14.O nome do produto e a quantidade vendida (agrupado por produto).

select * from pedido_produto

select 
	prod.nome as "Produto",
	sum(pprod.quantidade) as "Qtd. Vendida"
from pedido_produto as pprod
left outer join produto prod
	on pprod.idproduto = prod.idproduto
group by prod.nome


-- 15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).

select * from pedido


-- 16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
