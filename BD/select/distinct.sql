SELECT DISTINCT Cl.Nome, T.Modelo
       FROM Cliente Cl, Corrida Co, Taxi T
       WHERE Cl.CliId = Co.CliId AND Co.Placa = T.Placa;

-- CNH e Nome dos motoristas que jah estiveram e estao na fila
SELECT DISTINCT M.CNH, M.Nome
       FROM Motorista M, Fila F 
       WHERE M.CNH = F.CNH;