SELECT * FROM Taxi;

SELECT Marca, Modelo FROM Taxi;

SELECT * FROM Taxi WHERE AnoFab > 2000;

-- Produto cartesiano Cliente x Corrida
SELECT Cliente.CliId, Cliente.Nome, Corrida.CliId, Corrida.Placa, Corrida.DataPedido
       FROM Cliente, Corrida;

-- Join (1) Cliente x Corrida
SELECT Cliente.CliId, Cliente.Nome, Corrida.CliId, Corrida.Placa, Corrida.DataPedido
       FROM Cliente, Corrida
       WHERE Cliente.CliId = Corrida.CliId;

-- Clientes (id e nome) e respectivas corridas (placa e data do pedido)
SELECT Cliente.CliId, Cliente.Nome, Corrida.Placa, Corrida.DataPedido
       FROM Cliente, Corrida
       WHERE Cliente.CliId = Corrida.CliId;

       
-- Alias sem o AS
SELECT Cl.CliId, Cl.Nome, Co.Placa, Co.DataPedido
       FROM Cliente Cl, Corrida Co
       WHERE Cl.CliId = Co.CliId;

-- Alias dos campos sem o AS
SELECT Cl.CliId id_cliente, Cl.Nome nome_cliente, Co.Placa placa, Co.DataPedido data_pedido
       FROM Cliente Cl, Corrida Co
       WHERE Cl.CliId = Co.CliId;       
       
-- Modelo de taxi para cada corrida
SELECT Co.DataPedido, Co.Placa, T.Modelo
       FROM Corrida Co, Taxi T
       WHERE Co.Placa = T.Placa;
       
-- Modelos de taxi tomados por cada cliente
SELECT Cl.Nome, Co.DataPedido, Co.Placa, T.Modelo
       FROM Cliente Cl, Corrida Co, Taxi T
       WHERE Cl.CliId = Co.CliId AND Co.Placa = T.Placa;


-- CNH e Nome dos motoristas que estao na fila
SELECT M.CNH, M.Nome
       FROM Motorista M, Fila F 
       WHERE M.CNH = F.CNH AND DataHoraIn = DataHoraOut;
       
-- Placa dos taxis que jah estiveram e estao na fila
SELECT M.Placa
       FROM Motorista M, Fila F 
       WHERE M.CNH = F.CNH;

-- Data/Hora entrada, nome e modelo dos taxis
-- que jah estiveram e estao na fila
SELECT Fila.DataHoraIn, Motorista.Nome, Taxi.Modelo
       FROM Fila, Motorista, Taxi
       WHERE Motorista.CNH = Fila.CNH AND
             Motorista.Placa = Taxi.Placa;
       
-- Marca e modelo dos taxis que jah estiveram e estao na fila
SELECT T.Marca, T.Modelo
       FROM Taxi T, Motorista M, Fila F 
       WHERE T.Placa = M.Placa AND
             M.CNH = F.CNH;
