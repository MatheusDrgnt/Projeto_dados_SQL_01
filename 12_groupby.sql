SELECT IdCliente,
	sum(QtdePontos),
    count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' 
And DtCriacao < '2025-08-01'

GROUP by IdCliente
HAVING sum(QtdePontos) >= 4000

order by sum(QtdePontos) DESC

limit 10