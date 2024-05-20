-- Arquivo: 19/05/2024

-- SEÇÃO 2 - AULA 29: EXERCÍCIOS - FUNÇÕES AGREGADAS ----------------------------------------------------

/*
• Média: select avg(coluna) from tabela

• Contagem de Registros (não not null): select count(coluna) from tabela

• Contagem de Registros (com not null): select count(*) from tabela

• Maior valor: select max(coluna) from tabela

• Menor valor: select min(coluna) from tabela

• Menor e Maior valor: select min(coluna x), max(coluna x) from tabela

• Somatório: select sum(coluna) from tabela

• Se houver 2 pedidos do mesmo id, irá agrupar. Necessário usar função agregada, como sum, por exemplo.
Agrupamento: select idcliente, sum(valor) from pedido group by idcliente

• Para trabalhar com condições, em conjunto com agrupamento, é preciso utilizar o filtro having:
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500

*/

-- AULA 34 
-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.

select * from pedido;

select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200


-- 2. Os vendedores que venderam mais que R$ 1500,00.

select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500


-- 3. O somatório das vendas de cada vendedor.

select idvendedor as "ID do Vendedor", sum(valor) as "Total Vendido" from pedido group by idvendedor


-- 4. A quantidade de municípios.

select * from municipio

select count(idmunicipio) from municipio


-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.

select count(idmunicipio) from municipio where iduf = 1 or iduf = 2


-- 6. A quantidade de municípios por estado.

select iduf, count(idmunicipio) from municipio group by iduf


-- 7. A quantidade de clientes que informaram o logradouro.

select count(logradouro) from cliente where logradouro is not null


-- 8. A quantidade de clientes por município.

select idmunicipio, count(idcliente) from cliente group by idmunicipio

	
-- 9. A quantidade de fornecedores.

select * from fornecedor

select count(idfornecedor) as "Qtd. Fornecedor" from fornecedor


-- 10. A quantidade de produtos por fornecedor.

select * from produto

select idfornecedor, count(idproduto) as "Qtd. de Produto" from produto group by idfornecedor order by idfornecedor asc


-- AULA 35
-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.

select * from produto

select * from fornecedor

select avg(valor) as "Média de Preços" from produto where idfornecedor = 1


-- 12. O somatório dos preços de todos os produtos.

select * from produto

select sum(valor) as "Somatório de todos os produtos" from produto


-- 13. O nome do produto e o preço somente do produto mais caro.

select nome, valor from produto order by valor desc limit 1


-- 14. O nome do produto e o preço somente do produto mais barato.

select nome, valor from produto order by valor asc limit 1


-- 15. A média de preço de todos os produtos.

select avg(valor) from produto


-- 16. A quantidade de transportadoras.

select count(idtransportadora) from transportadora


-- 17. A média do valor de todos os pedidos.

select * from pedido

select avg(valor) as "Média de Vendas" from pedido


-- 18. O somatório do valor do pedido agrupado por cliente.

select idcliente, sum(valor) as "Total de Pedido" from pedido group by idcliente order by "Total de Pedido" asc

select idcliente, sum(valor) as "Total de Pedido" from pedido group by idcliente order by sum(valor) asc

select idcliente, sum(valor) as "Total de Pedido" from pedido group by idcliente order by 2 asc --Ordenando pelo n° da coluna


-- 19. O somatório do valor do pedido agrupado por vendedor.

select * from pedido

select idvendedor, sum(valor) as "Total de Vendas" from pedido group by idvendedor order by 1


-- 20. O somatório do valor do pedido agrupado por transportadora.

select * from pedido

select idtransportadora, sum(valor) as "Valor pedidos por Transportadora" from pedido group by idtransportadora


--AULA 36
-- 21. O somatório do valor do pedido agrupado pela data.

Select * from pedido

select data_pedido as "Data", sum(valor) as "Total vendas do dia" from pedido group by data_pedido order by data_pedido asc


-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.

select idcliente, idvendedor, idtransportadora, sum(valor) from pedido group by idcliente, idvendedor, idtransportadora order by idcliente


-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.

select * from pedido

select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200


-- 24. A média do valor do pedido do vendedor André.

select * from pedido

select * from vendedor

select idvendedor, avg(valor) from pedido group by idvendedor having idvendedor = 1

select avg(valor) from pedido where idvendedor = 1


-- 25. A média do valor do pedido da cliente Jéssica.

select * from cliente

select * from pedido

select idcliente, avg(valor) from pedido group by idcliente having idcliente = 15

select avg(valor) from pedido where idcliente = 15

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.

select * from pedido

select * from transportadora

select idtransportadora, count(idpedido) from pedido group by idtransportadora having idtransportadora = 1

-- select count(idpedido) from pedido where idtransportadora = 1


-- 27. A quantidade de pedidos agrupados por vendedor.

select idvendedor, count(idpedido) from pedido group by idvendedor


-- 28. A quantidade de pedidos agrupados por cliente.

select idcliente, count(idpedido) from pedido group by idcliente


-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.

select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25'

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.

select count(idpedido) from pedido where valor > 1000


-- AULA 37
-- 31. A quantidade de microcomputadores vendida.


-- 32. A quantidade de produtos vendida agrupado por produto.


-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.


-- 34. A quantidade de produtos agrupados por pedido.


-- 35. O somatório do valor total de todos os produtos do pedido.


-- 36. A média dos produtos do pedido 6.


-- 37. O valor do maior produto do pedido.


-- 38. O valor do menor produto do pedido.


-- 39. O somatório da quantidade de produtos por pedido.


-- 40. O somatório da quantidade de todos os produtos do pedido.