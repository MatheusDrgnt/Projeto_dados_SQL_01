SELECT idCliente, QtdePontos,
        QtdePontos * 10 AS PontosComBonus,
        DtCriacao,
        substr(DtCriacao,1,19) AS DtSubstring,
        datetime(substr(DtCriacao,1,19)) AS DateTimeCriacao,
        strftime('%w', datetime(substr(DtCriacao,1,19)))+1 AS DiaDaSemana
FROM clientes
WHERE diadasemana = 7