SELECT sum(QtdePontos),
		
	sum(CASE
    	WHEN QtdePontos > 0  Then QtdePontos
    END) AS QtdePontosPositivos,
    
    sum(CASE
    	WHEN QtdePontos < 0  Then QtdePontos
    END) AS QtdePontosNegativos,
    
    COUNT(CASE
    	WHEN QtdePontos < 0  Then QtdePontos
    END) AS QtdTransaçõesNegativas
    
FROM transacoes

WHERE DtCriacao >= '2025-07-01' 
AND DtCriacao < '2025-08-01'