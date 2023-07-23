Create database db;

use db;

Create table carro(
	Marca varchar(12) not null,
    Cor varchar(12) not null,
    Modelo varchar(15) not null,
    Placa varchar(7) not null,
    Cliente_cpf int,
    foreign key (Cliente_cpf) references cliente(Cpf)
);

create table cliente(
	Nome varchar(100) not null,
    Cpf int(11) not null,
    Idade int(2) not null,
    Genero varchar(12) not null,
    Rua varchar(20) not null,
    NumeroCasa int(3) not null,
    Cep varchar(8) not null,
    Cidade varchar (15) not null,
	primary key (Cpf)
);

create table estacionamento(
	Nome varchar(100),
    Vagas int(3),
    Rua varchar(15),
    Numero int(4),
    Cep int(8)
);

create table ticket(
	Entrada date,
    Numero int,
	Cliente_cpf int,
    Placa_carro int,
    NomeEstacionamento varchar(100),
    foreign key (Cliente_cpf) references cliente(Cpf)
);

select * from estacionamento;

alter table ticket
add constraint fk_ticket_estacionamento
foreign key (NomeEstacionamento) references estacionamento(Nome);

alter table cliente add column telefone int(11);

alter table cliente modify column NumeroCasa int;

