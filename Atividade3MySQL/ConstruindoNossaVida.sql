create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria 
(
	id_categoria bigint auto_increment,
    setor varchar (255) not null,
    selo_de_qualidade boolean not null,
    primary key (id_categoria)
);

create table tb_produto
(
	id_produto bigint auto_increment,
    nome_produto varchar (255) not null,
    marca_produto varchar (255) not null,
    valor decimal not null,
    categoria_id bigint,
    primary key (id_produto),
    foreign key (categoria_id) references tb_categoria (id_categoria)
);

insert into tb_categoria (setor, selo_de_qualidade)
	values ("Sala de estar", true);
insert into tb_categoria (setor, selo_de_qualidade)
	values ("Cozinha", true);
insert into tb_categoria (setor, selo_de_qualidade)
	values ("Quarto", true);
insert into tb_categoria (setor, selo_de_qualidade)
	values ("Quintal", true);
insert into tb_categoria (setor, selo_de_qualidade)
	values ("Banheiro", true);
    
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Rejunte para porcelanato", "Cimento Votoran", 23, 1);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Tinta Latex", "LuksColor", 32, 2);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Gesso", "Vedacit", 68, 3);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Cimento", "Quartzolit", 51, 4);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Azulejo", "3M", 8, 5);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Piso", "Portobello", 15, 1);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Argamassa", "Formica", 120, 2);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Cerâmica", "Formica", 54, 3);
insert into tb_produto (nome_produto, marca_produto, valor, categoria_id)
	values ("Impermeabilizantes", "Denver Impermeabilizantes", 63, 4);
    
select * from tb_produto where valor > 50;

select * from tb_produto where valor > 3 and valor < 60;

select * from tb_produto where nome_produto like "%ci%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id_categoria = tb_produto.categoria_id;
    
select tb_produto.nome_produto, tb_produto.marca_produto, tb_produto.valor, tb_categoria.setor from tb_produto
	inner join tb_categoria on tb_categoria.id_categoria = tb_produto.categoria_id;
    