--Lista de clientes com zero pontos

SELECT idCliente, QtdePontos
FROM clientes  
WHERE QtdePontos = 0;