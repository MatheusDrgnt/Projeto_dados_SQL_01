-- Selecione todas as transações com 50 pontos
SELECT idcliente, idtransacao, qtdepontos
FROM transacoes
WHERE qtdepontos = 50;