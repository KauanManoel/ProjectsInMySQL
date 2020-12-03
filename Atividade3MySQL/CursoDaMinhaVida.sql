create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria 
(
	id_categoria bigint auto_increment,
    area varchar (255) not null,
    selo_de_qualidade boolean not null,
    primary key (id_categoria)
);

create table tb_curso
(
	id_curso bigint auto_increment,
    nome_curso varchar (255) not null,
    nome_professor varchar (255) not null,
    valor decimal not null,
    categoria_id bigint,
    primary key (id_produto),
    foreign key (categoria_id) references tb_categoria (id_categoria)
);

insert into tb_categoria (area, selo_de_qualidade)
	values ("Programação", true);
insert into tb_categoria (area, selo_de_qualidade)
	values ("Humanas", true);
insert into tb_categoria (area, selo_de_qualidade)
	values ("Exatas", true);
insert into tb_categoria (area, selo_de_qualidade)
	values ("Preparatório", true);
insert into tb_categoria (area, selo_de_qualidade)
	values ("Linguas", true);
    
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Ingles", "Celso Duarte", 23, 5);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Matemática", "Carlos Eduardo", 32, 3);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Preparatório para Vestibular", "Vicente Santos", 68, 4);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Alemão", "Alex Dantas", 51, 5);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Dev Java", "Luiz Roberto", 8, 1);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Dev JavaScript", "Lucas Vieira", 15, 1);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Banco de Dados MySQL", "Marcelo Formiga", 120, 1);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Letras", "Vanessa Hoffman", 54, 2);
insert into tb_produto (nome_curso, nome_professor, valor, categoria_id)
	values ("Dev Java", "Denver Kendrick", 63, 1);
    
select * from tb_produto where valor > 50;

select * from tb_produto where valor > 3 and valor < 60;

select * from tb_produto where nome_produto like "%JAV%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id_categoria = tb_produto.categoria_id;
    
select tb_produto.nome_curso, tb_produto.nome_professor, tb_produto.valor, tb_categoria.setor from tb_produto
	inner join tb_categoria on tb_categoria.id_categoria = tb_produto.categoria_id;