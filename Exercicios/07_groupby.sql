-- Qual é o produto mais transacionado

SELECT IdProduto, count(*)

FROM transacao_produto

GROUP  BY IdProduto

ORDER BY 2 DESC

LIMIT 10;

-- Qual é o produto menos transacionado

SELECT IdProduto, count(*)

FROM transacao_produto

GROUP  BY IdProduto

ORDER BY count(*) ASC

LIMIT 20; -- Limit 20 porque queria deu empate em vários produtos.

