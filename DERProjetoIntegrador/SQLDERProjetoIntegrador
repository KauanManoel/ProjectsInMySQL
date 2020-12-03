CREATE TABLE `Categoria` (
	`IdCategoria` INT NOT NULL AUTO_INCREMENT,
	`NomeCategoria` varchar(255) NOT NULL,
	`TipoCategoria` varchar(255) NOT NULL,
	`Presencial/EAD` BOOLEAN(255) NOT NULL,
	PRIMARY KEY (`IdCategoria`)
);

CREATE TABLE `Usuário` (
	`IdUsuário` INT NOT NULL AUTO_INCREMENT,
	`NomeCompleto` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Senha` varchar(255) NOT NULL,
	PRIMARY KEY (`IdUsuário`)
);

CREATE TABLE `Produto` (
	`IdProduto` INT NOT NULL AUTO_INCREMENT,
	`Id_Categoria` INT NOT NULL,
	`NomeProduto` varchar(255) NOT NULL,
	`Preço` DECIMAL(10,2) NOT NULL,
	`Duração` FLOAT NOT NULL,
	`Professor` varchar(255) NOT NULL,
	PRIMARY KEY (`IdProduto`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`Id_Categoria`) REFERENCES `Categoria`(`IdCategoria`);

