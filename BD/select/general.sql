-- Toda a tabela de Taxi 
SELECT * FROM Taxi;

-- Marca e Modelo do Taxi
SELECT * FROM Marca, Modelo FROM Taxi;

-- Placas com AnoFab > 2000
SELECT * FROM Taxi WHERE anoFab > 2000

-- Placas que comecem com DK
SELECT * FROM TAXI WHERE LIKE 'DK%' 

-- Placas com '7' na penultima posicao
SELECT * FROM Taxi WHERE placa LIKE '%7_';

-- Join (1) Cliente x Corrida
SELECT Cliente.CliId, Cliente.Nome, Corrida.CliId, Corrida.Placa, Corrida.DataPedido
    FROM Cliente, Corrida
    WHERE Cliente.CliId = Corrida.CliId

-- Clientes (id e nome) e respectivas corridas (placa e data do pedido)
SELECT Cliente.CliId, Cliente.Nome, Corrida.Placa, Corrida.DataPedido
       FROM Cliente, Corrida
       WHERE Cliente.CliId = Corrida.CliId;
       
-- Alias sem o AS
SELECT Cl.CliId, Cl.Nome, Co.Placa, Co.DataPedido
       FROM Cliente Cl, Corrida Co
       WHERE Cl.CliId = Co.CliId;
       
-- Modelo de taxi para cada corrida
SELECT * Taxi.Modelo, Corrida.DataPedido, Corrida.Plaaca
    FROM Taxi, Corrida
    WHERE Taxi.placa = Corrida.placa

       
-- Modelos de taxi tomados por cada cliente
-- (estagio 1)

SELECT Cl.Nome, Ta.Modelo 
    FROM Cliente Cl, Taxi Ta, Corrida Co
    WHERE Cl.CliId = Co.CliId AND Co.Placa = Ta.Placa

-- (estagio 2)
SELECT DISTINCT Cl.Nome, T.Modelo
       FROM Cliente Cl, Corrida Co, Taxi T
       WHERE Cl.CliId = Co.CliId AND Co.Placa = T.Placa;