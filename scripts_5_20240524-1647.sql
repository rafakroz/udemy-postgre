-- SEÇÃO 2 - AULA 46: SUBCONSULTAS ----------------------------------------------------

-- Selecionar a data do pedido e o valor, onde o valor seja maior que a média dos valores de todos os pedidos.

select
	data_pedido,
	valor
FROM
	pedido
WHERE
	valor > (SELECT avg(valor) from pedido) -- subconsulta


-- Exemplo com count

select
	pdd.data_pedido,
	pdd.valor,
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido) as "Qtd. Vendida"
from
	pedido pdd