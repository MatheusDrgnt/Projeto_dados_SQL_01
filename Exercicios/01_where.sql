-- Lista de trabsações com apenas 1 ponto.

SELECT IdTransacao, idCliente, QtdePontos
FROM transacoes
WHERE QtdePontos = 1