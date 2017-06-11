CREATE TABLE Cliente (
cod_cliente INTEGER NOT NULL,
nome VARCHAR(45),
sexo VARCHAR(45),
dataNasc VARCHAR(45),
rg VARCHAR(45),
cpf VARCHAR(45),
estado VARCHAR(45),
cidade VARCHAR(45),
cnh VARCHAR(45),
endereco VARCHAR(45),
telefone VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45),
complemento VARCHAR(20),
cep VARCHAR(15),
PRIMARY KEY(cod_cliente));


CREATE TABLE Veiculo (
cod_veiculo INTEGER NOT NULL,
placa VARCHAR(45),
nome_modelo VARCHAR(45),
marca VARCHAR(45),
cor VARCHAR(45),
ano varchar(45),
qtd_disponivel INTEGER  NOT NULL,
valor_diaria INTEGER NOT NULL,
PRIMARY KEY(cod_veiculo));


CREATE TABLE Locacao (
cod_locacao INTEGER NOT NULL,
cod_veiculo INTEGER,
cod_cliente INTEGER,
data_retirada VARCHAR(45),
end_retirada VARCHAR(45),
com_retirada VARCHAR(45),
cep_retirada VARCHAR(45),
qtd_dias VARCHAR(45),
data_devolucao VARCHAR(45),
end_devolucao VARCHAR(45),
com_devolucao VARCHAR(45),
cep_devolucao VARCHAR(45),
valor_total float,
PRIMARY KEY(cod_locacao),
FOREIGN KEY(cod_cliente) REFERENCES Cliente(cod_cliente),
FOREIGN KEY(cod_veiculo) REFERENCES Veiculo(cod_veiculo));


create table multa(
cod_multa integer not null,
descricao varchar(45),
cod_cliente INTEGER NOT NULL,
valor_multa float,
PRIMARY KEY(cod_multa) ,
FOREIGN KEY(cod_cliente) REFERENCES Cliente(cod_cliente));

create table Administrador(
cod_adm integer not null,
nome varchar (45),
login varchar (45),
senha varchar (45),
primary key (cod_adm));


