CREATE DATABASE derdnik;
USE derdnik;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);


/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

create table building (
	idMedida INT PRIMARY KEY AUTO_INCREMENT,
	ad int,
	atkspd int,
	ap int,
	hp int,
	crit int,
    cdr int,
    fkUsuário int, foreign key (fkUsuário) 
		references usuario (id)
);

desc building;
drop table building;

create table smites(
idVotos int primary key auto_increment,
Voto char(5),
	constraint chkSla check (Voto in ('red', 'blue', 'green')),
fkUsuário int,
	foreign key (fkUsuário)
		references usuario (id)
);

desc smites;
select * from smites;


/*
comando para sql server - banco remoto - ambiente de produção
*/

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

create table building (
	idMedida INT PRIMARY KEY AUTO_INCREMENT,
	ad int,
	atkspd int,
	ap int,
	hp int,
	crit int,
    cdr int,
    fkUsuário int, foreign key (fkUsuário) 
		references usuario (id)
);

desc building;
drop table building;

create table smites(
idVotos int primary key auto_increment,
Voto char(5),
	constraint chkSla check (Voto in ('red', 'blue', 'green')),
fkUsuário int,
	foreign key (fkUsuário)
		references usuario (id)
);

/*
comandos para criar usuário em banco de dados azure, sqlserver,
com permissão de insert + update + delete + select
*/

CREATE USER [usuarioParaAPIWebDataViz_datawriter_datareader]
WITH PASSWORD = '#Gf_senhaParaAPIWebDataViz',
DEFAULT_SCHEMA = dbo;

EXEC sys.sp_addrolemember @rolename = N'db_datawriter',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';

EXEC sys.sp_addrolemember @rolename = N'db_datareader',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';



select * from usuario;