-- Qual o produto com mais pontos transacionados ? 

SELECT  IdProduto, 
        sum(vlProduto * QtdeProduto) as TotalPontos,
        sum(QtdeProduto) as QtdeVenda

FROM transacao_produto

GROUP BY IdProduto

ORDER BY 2 DESC;
-- Pode ser ORDER BY sum(vlProduto * QtdeProduto) DESC

