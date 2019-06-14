-- Alias (apelido) com o AS
SELECT Cl.CliId, Cl.Nome, Co.Placa, Co.DataPedido
       FROM Cliente AS Cl, Corrida AS Co
       WHERE Cl.CliId = Co.CliId;

-- Alias dos campos com o AS
SELECT Cl.CliId AS id_cliente, Cl.Nome AS nome_cliente, Co.Placa AS placa, Co.DataPedido AS data_pedido
       FROM Cliente Cl, Corrida Co
       WHERE Cl.CliId = Co.CliId;  

-- Modelo de taxi para cada corrida
SELECT Co.DataPedido, Co.Placa, T.Modelo
       FROM Corrida Co, Taxi T
       WHERE Co.Placa = T.Placa;