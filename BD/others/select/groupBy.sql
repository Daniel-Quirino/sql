SELECT Zona
       FROM Fila
       GROUP BY Zona;

SELECT zona, COUNT(*)
       FROM Fila
       GROUP BY zona;

SELECT T.Marca, T.Modelo, COUNT(*)
       FROM Taxi T, Motorista M, Fila F 
       WHERE T.Placa = M.Placa AND
             M.CNH = F.CNH
       GROUP BY T.Marca, T.Modelo;
       
SELECT Zona, KmIn, DataHoraIn FROM Fila;
       
SELECT Zona, MIN(KmIn) FROM Fila GROUP BY Zona;

SELECT Zona, MIN(DataHoraIn) FROM Fila
       WHERE DataHoraIn = DataHoraOut
       GROUP BY Zona;
	   
SELECT Zona, MAX(DataHoraIn) FROM Fila
       GROUP BY Zona;

SELECT Zona, MIN(KmIn), AVG(KmIn), MAX(DataHoraIn) FROM Fila
       GROUP BY Zona;
       
SELECT Zona, MAX(DataHoraIn) FROM Fila
       WHERE KmIn <= 5000 GROUP BY Zona;

SELECT Zona, MAX(DataHoraIn) FROM Fila GROUP BY Zona
       HAVING MAX(KmIn) <= 5000;

SELECT Zona FROM Fila GROUP BY Zona HAVING COUNT(*)>1;

CREATE VIEW QuantidadeFila AS
SELECT zona, COUNT(*) quantidade
       FROM Fila
       GROUP BY zona;
       
SELECT * FROM QuantidadeFila;
