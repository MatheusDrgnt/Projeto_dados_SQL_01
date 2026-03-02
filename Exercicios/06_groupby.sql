-- Qual dia da semana tem mais pedidos em 2025 ? 

SELECT  (strftime('%w',substr(DtCriacao,1,10))+1) AS DtSemana,
        -- Adicionei +1 para que o resultado seja de 1 a 7, onde 1 é Domingo e 7 é Sábado, ao invés de 0 a 6.
        COUNT (DISTINCT IdTransacao) AS QtdeTransacao

FROM transacoes

WHERE substr(DtCriacao,1,4) = '2025'
    
GROUP BY 1

ORDER BY COUNT (DISTINCT IdTransacao) DESC;

-- Adicionei essa cláusula CASE para mostrar o nome do dia da semana ao invés do número, mas a lógica é a mesma.

SELECT CASE strftime('%w', substr(DtCriacao, 1, 10))
            WHEN '0' THEN 'Domingo'
            WHEN '1' THEN 'Segunda'
            WHEN '2' THEN 'Terça'
            WHEN '3' THEN 'Quarta'
            WHEN '4' THEN 'Quinta'
            WHEN '5' THEN 'Sexta'
            WHEN '6' THEN 'Sábado'
        END AS DiaDaSemana,
        COUNT (DISTINCT IdTransacao) AS QtdeTransacao

FROM transacoes

WHERE substr(DtCriacao,1,4) = '2025'
    
GROUP BY 1

ORDER BY 2 DESC;