/*
Listar todas as transações adicionando uma coluna nova sinalizando "alto","medio", "baixo" para o valor dos pontos [<10, < 500, >= 500]
*/

SELECT IdTransacao, QtdePontos, 
CASE 
    WHEN QtdePontos < 10 THEN 'baixo'
    WHEN QtdePontos < 500 THEN 'medio'
    ELSE 'alto'
END AS Sinalizacao
FROM transacoes
WHERE QtdePontos < 500