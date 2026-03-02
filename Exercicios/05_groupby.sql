-- Qual o valor médio de pontos positivos por dia

SELECT  sum(QtdePontos) as TotalPontos,
        COUNT(DISTINCT substr(DtCriacao,1,10)) AS QtdeDiasUnicos,
        sum(QtdePontos) / count (DISTINCT substr(DtCriacao,1,10)) AS MediaPontosPorDia

FROM transacoes

WHERE QtdePontos > 0;

SELECT substr(DtCriacao,1,10) AS dtDia,
        AVG(QtdePontos) AS AvgPontosDia

FROM transacoes

WHERE QtdePontos > 0

GROUP BY 1

ORDER BY 1;