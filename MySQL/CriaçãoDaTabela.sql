use RH_Serviços;
-- criar uma tabela
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
idade int not null,
salario float not null,
primary key(id)
);
