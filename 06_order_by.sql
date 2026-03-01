SELECT idCliente,qtdePontos, DtCriacao
FROM clientes
WHERE qtdePontos > 0
ORDER BY DtCriacao ASC, qtdePontos DESC
LIMIT 10;

