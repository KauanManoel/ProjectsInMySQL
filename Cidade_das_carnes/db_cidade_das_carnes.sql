create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria 
(
	id_categoria bigint auto_increment,
    nome_categoria varchar (255) not null,
    empresa_distribuidora varchar (255) not null,
    primary key (id_categoria)
);


create table tb_produtos
(
	id bigint auto_increment,
    nome_da_carne varchar (255) not null,
    selo_de_qualidade boolean not null,
    preço decimal not null,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id_categoria)
);


insert into tb_categoria (nome_categoria, empresa_distribuidora)
	values ("Bovina", "Friboi");
insert into tb_categoria (nome_categoria, empresa_distribuidora)
	values ("Suína", "Aurora");
insert into tb_categoria (nome_categoria, empresa_distribuidora)
	values ("Aves", "Perdigão");
insert into tb_categoria (nome_categoria, empresa_distribuidora)
	values ("Peixes", "Gomes da Costa");
insert into tb_categoria (nome_categoria, empresa_distribuidora)
	values ("Bovina", "Boi Brasil");


insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Contra-filé", true, 40, 1);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Bisteca", true, 30, 2);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Tulipa de frango", true, 22, 3);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Corvina", true, 89, 4);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Coxão Mole", true, 37, 5);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Sardinha fresca", true, 58, 4);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Coxa Sobrecoxa de Frango", true, 29, 3);
insert into tb_produtos (nome_da_carne, selo_de_qualidade, preço, categoria_id)
	values ("Bacon", true, 56, 2);

select * from tb_produtos where preço > 50;

select * from tb_produtos where preço > 3 and preço < 60;

select * from tb_produtos where nome_da_carne like "%co%";

select * from tb_produtos 
	inner join tb_categoria on tb_categoria.id_categoria = tb_produtos.categoria_id;

select * from tb_produtos where id = 1

