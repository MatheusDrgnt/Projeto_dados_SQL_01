-- Selecione produtos que contêm 'churn' no nome

/*
É importante usar:
WHERE descNomeProduto = 'churn_model'
pois é menos custosa ao banco
mas é necessário conhecer o banco previamente
*/

SELECT IdProduto, DescNomeProduto, DescCategoriaProduto
FROM produtos
WHERE DescNomeProduto LIKE '%churn%';