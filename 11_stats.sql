SELECT round(avg(QtdePontos),2) As MediaCarteira,
	1.* sum(QtdePontos) / count (IdCliente) As MediaFloat,
    min(QtdePontos) as MinCarteira,
    max(QtdePontos) As MaxPontos,
    sum(FlTwitch),
    sum(FlYoutube)

FROM Clientes