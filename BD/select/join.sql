-- Join (1) Cliente x Corrida
SELECT Cliente.CliId, Cliente.Nome, Corrida.CliId, Corrida.Placa, Corrida.DataPedido
       FROM Cliente, Corrida
       WHERE Cliente.CliId = Corrida.CliId;

-- Modelos de taxi tomados por cada cliente
SELECT Cl.Nome, Co.DataPedido, Co.Placa, T.Modelo
       FROM Cliente Cl, Corrida Co, Taxi T
       WHERE Cl.CliId = Co.CliId AND Co.Placa = T.Placa;