-- Selecione todos os clientes com mais de 500 pontos

SELECT idCliente, qtdepontos
FROM clientes
WHERE qtdepontos > 500
ORDER BY qtdepontos DESC;