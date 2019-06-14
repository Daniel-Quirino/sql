INSERT INTO Cliente VALUES ('1532', 'Asdrúbal', '448.754.253-65');
INSERT INTO Cliente VALUES ('1755', 'Doriana', '567.387.387-44');
INSERT INTO Cliente VALUES ('1780', 'Quincas', '546.373.762-02');

INSERT INTO Taxi VALUES ('DAE6534', 'Ford', 'Fiesta', 1999, 'MN572345');
INSERT INTO Taxi VALUES ('DKL4598', 'Wolkswagen', 'Gol', 2001, 'AU876543');
INSERT INTO Taxi VALUES ('DKL7878', 'Ford', 'Fiesta', 2001, 'OP102938');
INSERT INTO Taxi VALUES ('JDM8776', 'Wolkswagen', 'Santana', 2002, 'QM365923');
INSERT INTO Taxi VALUES ('JJM3692', 'Chevrolet', 'Corsa', 1999, 'UU335577');

INSERT INTO Corrida VALUES ('1755', 'DAE6534', '2003-02-15');
INSERT INTO Corrida VALUES ('1780', 'JDM8776', '2003-02-18');
INSERT INTO Corrida VALUES ('1755', 'DKL7878', '2003-02-16');
INSERT INTO Corrida VALUES ('1780', 'DKL4598', '2003-02-17');
INSERT INTO Corrida VALUES ('1532', 'DKL4598', '2003-02-18');
INSERT INTO Corrida VALUES ('1780', 'DAE6534', '2003-02-16');

INSERT INTO Taxi VALUES ('DXF5263', 'Ford', 'Escort', 2001, 'GG5263526');
INSERT INTO Taxi VALUES ('MJN6578', 'Wolkswagen', 'Santana', 1998, 'KL856326');
INSERT INTO Taxi VALUES ('MLA4545', 'Wolkswagen', 'Gol', 2000, 'YK6574837');
INSERT INTO Taxi VALUES ('DXA7878', 'Ford', 'Escort', 2000, 'GG5263526');
INSERT INTO Taxi VALUES ('DXF6767', 'Wolkswagen', 'Santana', 1998, 'YK7890081');

INSERT INTO Motorista VALUES ('657483', 'Asdrubal', 1, 'DXF5263');
INSERT INTO Motorista VALUES ('567892', 'Quincas', 1, 'MLA4545');
INSERT INTO Motorista VALUES ('452635', 'Zandor', 1, 'DXA7878');
INSERT INTO Motorista VALUES ('452452', 'Alcebiades', 1, 'DXF6767');
INSERT INTO Motorista VALUES ('555555', 'Bonerges', 1, 'DAE6534');
INSERT INTO Motorista VALUES ('987654', 'Doriana', 1, 'JDM8776');

INSERT INTO Zona VALUES ('Barão Geraldo');
INSERT INTO Zona VALUES ('Cambuí');
INSERT INTO Zona VALUES ('Taquaral');
INSERT INTO Zona VALUES ('Unicamp');

INSERT INTO Fila VALUES ('Barão Geraldo', '567892', '2002-06-05 09:00:00', '2002-06-05 09:30:00', 4630);
INSERT INTO Fila VALUES ('Barão Geraldo', '657483', '2002-06-05 07:30:00', '2002-06-05 07:45:00', 1567);
INSERT INTO Fila VALUES ('Taquaral', '452452', '2002-06-05 09:00:00', '2002-06-05 09:50:00', 5000);
INSERT INTO Fila VALUES ('Taquaral', '657483', '2002-06-06 08:00:00', '2002-06-06 08:07:00', 7900);
INSERT INTO Fila VALUES ('Unicamp', '452635', '2002-06-02 08:00:00', '2002-06-02 08:00:00', 4800);
INSERT INTO Fila VALUES ('Unicamp', '567892', '2002-06-06 06:00:00', '2002-06-06 06:00:00', 5263);
INSERT INTO Fila VALUES ('Unicamp', '657483', '2002-06-06 23:00:00', '2002-06-06 23:00:00', 4541);
INSERT INTO Fila VALUES ('Unicamp', '452452', '2002-06-05 10:30:00', '2002-06-05 10:30:00', 7800);
INSERT INTO Fila VALUES ('Taquaral', '555555', '2002-06-06 08:10:00', '2002-06-06 08:10:00', 7910);
INSERT INTO Fila VALUES ('Unicamp', '987654', '2002-06-05 10:30:00', '2002-06-05 10:35:00', 7850);