-- Lista de trabsações com apenas 1 ponto.ABORT

SELECT IdTransacao, idCliente, QtdePontos
FROM transacoes
WHERE QtdePontos = 1