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