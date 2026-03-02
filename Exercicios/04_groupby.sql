-- Quantos produtos são de rpg ?

SELECT count(*)

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

-- Outra forma com todos os produtos agrupados por categoria

SELECT DescCategoriaProduto, 
        count(*) 

FROM produtos

GROUP BY DescCategoriaProduto;
