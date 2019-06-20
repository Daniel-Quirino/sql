/* Taxi - Cliente - Corrida */

create table Taxi (
	Placa varchar(7) not NULL,
	Marca varchar(30) not NULL,
	Modelo varchar(30) not null,
	AnoFab integer,
	Licenca varchar(9),
	primary key(Placa)
);

create table Cliente (
	CliId varchar(4) not null,
    Nome varchar(80) not null,
    CPF varchar(14) not null,
    primary key (CliId)
);

create table Corrida (
	CliId varchar(4) not null,
    Placa varchar(7) not null,
    DataPedido date not null,
    primary key (CliId, Placa, DataPedido),
    foreign key (CliId)
		references Cliente(CliId)
			on delete no action
            on update no action,
	foreign key (Placa)
		references Taxi (Placa)
			on delete no action
            on update no action
);

describe corrida;
