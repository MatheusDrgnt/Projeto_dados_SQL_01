-- Quantos clientes em email cadastrado ?

SELECT COUNT(*) AS QtdeEmails

FROM clientes

WHERE flEmail = 1
