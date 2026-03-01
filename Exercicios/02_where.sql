-- Lista de transações realizadas no final de semana

SELECT idtransacao, dtcriacao,
    strftime('%w', datetime(substr(Dtcriacao, 1, 19))) AS DiaSemana
FROM transacoes
WHERE DiaSemana IN ('6', '0')