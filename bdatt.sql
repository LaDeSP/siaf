-- MySQL Script generated by MySQL Workbench
-- Sáb 01 Dez 2018 09:49:35 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------


-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema siaf
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `siaf` DEFAULT CHARACTER SET latin1 ;
USE `siaf` ;

-- -----------------------------------------------------
-- Table `siaf`.`estados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`estados` (
  `id` INT(2) NOT NULL AUTO_INCREMENT,
  `nome_estado` VARCHAR(30) NULL DEFAULT NULL,
  `sigla` CHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = latin1;

INSERT INTO `estados` (`id`, `nome_estado`, `sigla`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amazonas', 'AM'),
(4, 'Amapá', 'AP'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Minas Gerais', 'MG'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Mato Grosso', 'MT'),
(14, 'Pará', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Pernambuco', 'PE'),
(17, 'Piauí', 'PI'),
(18, 'Paraná', 'PR'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rondônia', 'RO'),
(22, 'Roraima', 'RR'),
(23, 'Rio Grande do Sul', 'RS'),
(24, 'Santa Catarina', 'SC'),
(25, 'Sergipe', 'SE'),
(26, 'São Paulo', 'SP'),
(27, 'Tocantins', 'TO');

-- -----------------------------------------------------
-- Table `siaf`.`municipios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`municipios` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `nome_municipio` VARCHAR(60) NULL DEFAULT NULL,
  `estados_id` INT(2) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_municipios_estados1_idx` (`estados_id` ASC),
  CONSTRAINT `fk_municipios_estados1`
    FOREIGN KEY (`estados_id`)
    REFERENCES `siaf`.`estados` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 80
DEFAULT CHARACTER SET = latin1;


INSERT INTO `municipios` (`nome_municipio`, `estados_id`) VALUES
('Água Clara', 12),
('Alcinópolis', 12),
('Amambaí', 12),
('Anastácio', 12),
('Anaurilândia', 12),
('Angélica', 12),
('Antônio João', 12),
('Aparecida do Taboado', 12),
('Aquidauana', 12),
('Aral Moreira', 12),
('Bandeirantes', 12),
('Bataguassu', 12),
('Bataiporã', 12),
('Bela Vista', 12),
('Bodoquena', 12),
('Bonito', 12),
('Brasilândia', 12),
('Caarapó', 12),
('Camapuã', 12),
('Campo Grande', 12),
('Caracol', 12),
('Cassilândia', 12),
('Chapadão do Sul', 12),
('Corguinho', 12),
('Coronel Sapucaia', 12),
('Corumbá', 12),
('Costa Rica', 12),
('Coxim', 12),
('Deodápolis', 12),
('Dois Irmãos do Buriti', 12),
('Douradina', 12),
('Dourados', 12),
('Eldorado', 12),
('Fátima do Sul', 12),
('Figueirão', 12),
('Glória de Dourados', 12),
('Guia Lopes da Laguna', 12),
('Iguatemi', 12),
('Inocência', 12),
('Itaporã', 12),
('Itaquiraí', 12),
('Ivinhema', 12),
('Japorã', 12),
('Jaraguari', 12),
('Jardim', 12),
('Jateí', 12),
('Juti', 12),
('Ladário', 12),
('Maracaju', 12),
('Miranda', 12),
('Mundo Novo', 12),
('Naviraí', 12),
('Nioaque', 12),
('Nova Alvorada do Sul', 12),
('Nova Andradina', 12),
('Novo Horizonte do Sul', 12),
('Paranaíba', 12),
('Paranhos', 12),
('Pedro Gomes', 12),
('Ponta Porã', 12),
('Porto Murtinho', 12),
('Ribas do Rio Pardo', 12),
('Rio Brilhante', 12),
('Rio Negro', 12),
('Rio Verde de Mato Grosso', 12),
('Rochedo', 12),
('Santa Rita do Pardo', 12),
('São Gabriel do Oeste', 12),
('Selvíria', 12),
('Sete Quedas', 12),
('Sidrolândia', 12),
('Sonora', 12),
('Tacuru', 12),
('Taquarussu', 12),
('Terenos', 12),
('Três Lagoas', 12),
('Vicentina', 12),
('Belo Horizonte ', 11),
('Cuiabá', 13),
('Acorizal', 13),
('Água Boa', 13),
('Alta Floresta', 13),
('Alto Araguaia', 13),
('Alto Boa Vista', 13),
('Alto Garças', 13),
('Alto Paraguai', 13),
('Alto Taquari', 13),
('Apiacás', 13),
('Araguaiana', 13),
('Araguainha', 13),
('Araputanga', 13),
('Arenápolis', 13),
('Aripuanã', 13),
('Barão de Melgaço', 13),
('Barra do Bugres', 13),
('Barra do Garças', 13),
('Bom Jesus do Araguaia', 13),
('Brasnorte', 13),
('Cáceres', 13),
('Campinápolis', 13),
('Campo Novo do Parecis', 13),
('Campo Verde', 13),
('Campos de Júlio', 13),
('Canabrava do Norte', 13),
('Canarana', 13),
('Carlinda', 13),
('Castanheira', 13),
('Chapada dos Guimarâes', 13),
('Cláudia', 13),
('Cocalinho', 13),
('Colíder', 13),
('Colniza', 13),
('Comodoro', 13),
('Confresa', 13),
('Conquista D´Oeste', 13),
('Cotriguaçu', 13),
('Curvelândia', 13),
('Denise', 13),
('Diamantino', 13),
('Dom Aquino', 13),
('Feliz Natal', 13),
('Figueirópolis D Oeste', 13),
('Gaúcha do Norte', 13),
('General Carneiro', 13),
('Glória D´Oeste', 13),
('Guarantã do Norte', 13),
('Guiratinga', 13),
('Indiavaí', 13),
('Ipiranga do Norte', 13),
('Itanhagá', 13),
('Itaúba', 13),
('Itiquira', 13),
('Jaciara', 13),
('Jangada', 13),
('Jauru', 13),
('Juara', 13),
('Juína', 13),
('Juruena', 13),
('Juscimeira', 13),
('Lambari D´Oeste', 13),
('Lucas do Rio Verde', 13),
('Luciara', 13),
('Marcelândia', 13),
('Matupá', 13),
('Mirassol D´Oeste', 13),
('Nobres', 13),
('Nortelândia', 13),
('Nossa Senhora do Livramento', 13),
('Nova Bandeirantes', 13),
('Nova Brasilândia', 13),
('Nova Canaã do Norte', 13),
('Nova Guarita', 13),
('Nova Lacerda', 13),
('Nova Marilândia', 13),
('Nova Maringá', 13),
('Nova Monte Verde', 13),
('Nova Mutum', 13),
('Nova Nazaré', 13),
('Nova Olímpia', 13),
('Nova Santa Helena', 13),
('Nova Ubiratã', 13),
('Nova Xavantina', 13),
('Novo Horizonte do Norte', 13),
('Novo Mundo', 13),
('Novo Santo Antonio', 13),
('Novo São Joaquim', 13),
('Paranaíta', 13),
('Paranatinga', 13),
('Pedra Preta', 13),
('Peixoto de Azevedo', 13),
('Planalto da Serra', 13),
('Poconé', 13),
('Pontal do Araguaia', 13),
('Ponte Branca', 13),
('Pontes e Lacerda', 13),
('Porto Alegre do Norte', 13),
('Porto dos Gaúchos', 13),
('Porto Esperidião', 13),
('Porto Estrela', 13),
('Poxoréu', 13),
('Primavera do Leste', 13),
('Querência', 13),
('Reserva do Cabaçal', 13),
('Ribeirão Cascalheira', 13),
('Ribeirãozinho', 13),
('Rio Branco', 13),
('Rondolândia', 13),
('Rondonópolis', 13),
('Rosário Oeste', 13),
('Salto do Céu', 13),
('Santa Carmem', 13),
('Santa Cruz do Xingu', 13),
('Santa Rita do Trivelato', 13),
('Santa Terezinha', 13),
('Santo Afonso', 13),
('Santo Antônio de Leverger', 13),
('Santo Antonio do Leste', 13),
('São Felix do Araguaia', 13),
('São José do Povo', 13),
('São José do Rio Claro', 13),
('São José do Xingu', 13),
('São José dos Quatro Marcos', 13),
('São Pedro da Cipa', 13),
('Sapezal', 13),
('Serra Nova Dourada', 13),
('Sinop', 13),
('Sorriso', 13),
('Tabaporâ', 13),
('Tangará da Serra', 13),
('Tapurah', 13),
('Terra Nova do Norte', 13),
('Tesouro', 13),
('Torixoréu', 13),
('União do Sul', 13),
('Vale de São Domingos', 13),
('Várzea Grande', 13),
('Vera', 13),
('Vila Bela da Santíssima Trindade', 13),
('Vila Rica', 13);

-- -----------------------------------------------------
-- Table `siaf`.`proprietarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`proprietarios` (
  `email` VARCHAR(40) NULL DEFAULT NULL,
  `telefone` INT(11) NULL DEFAULT NULL,
  `senha` VARCHAR(32) NULL DEFAULT NULL,
  `nome_propriedade` VARCHAR(30) NULL DEFAULT NULL,
  `localizacao` VARCHAR(30) NULL DEFAULT NULL,
  `nome_proprietario` VARCHAR(30) NULL DEFAULT NULL,
  `municipios_id` INT(10) NOT NULL,
  PRIMARY KEY (`email`),
  INDEX `fk_proprietarios_municipios1_idx` (`municipios_id` ASC),
  CONSTRAINT `fk_proprietarios_municipios1`
    FOREIGN KEY (`municipios_id`)
    REFERENCES `siaf`.`municipios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mydb`.`plantiomensal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`plantiomensal` (
  `idplantiomensal` INT NOT NULL AUTO_INCREMENT,
  `cultura` VARCHAR(45) NULL,
  `variedade` VARCHAR(45) NULL,
  `observação` VARCHAR(45) NULL,
  `proprietarios_email` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idplantiomensal`),
  INDEX `fk_plantiomensal_proprietarios1_idx` (`proprietarios_email` ASC),
  CONSTRAINT `fk_plantiomensal_proprietarios1`
    FOREIGN KEY (`proprietarios_email`)
    REFERENCES `siaf`.`proprietarios` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`semeadura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`semeadura` (
  `idsemeadura` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `num_mudas` INT NOT NULL,
  `plantiomensal_idplantiomensal` INT NOT NULL,
  INDEX `fk_semeadura_plantiomensal1_idx` (`plantiomensal_idplantiomensal` ASC),
  PRIMARY KEY (`idsemeadura`),
  CONSTRAINT `fk_semeadura_plantiomensal1`
    FOREIGN KEY (`plantiomensal_idplantiomensal`)
    REFERENCES `siaf`.`plantiomensal` (`idplantiomensal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`plantio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`plantio` (
  `idplanto` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `num_talhao` INT NOT NULL,
  `area` FLOAT NOT NULL,
  `num_plantas` INT NOT NULL,
  `plantiomensal_idplantiomensal` INT NOT NULL,
  INDEX `fk_plantio_plantiomensal1_idx` (`plantiomensal_idplantiomensal` ASC),
  PRIMARY KEY (`idplanto`),
  CONSTRAINT `fk_plantio_plantiomensal1`
    FOREIGN KEY (`plantiomensal_idplantiomensal`)
    REFERENCES `siaf`.`plantiomensal` (`idplantiomensal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `siaf` ;

-- -----------------------------------------------------
-- Table `siaf`.`despesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`despesas` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `nome_despesa` VARCHAR(30) NULL DEFAULT NULL,
  `descricao` VARCHAR(30) NULL DEFAULT NULL,
  `quantidade` INT(6) NULL DEFAULT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  `data` DATE NOT NULL,
  `proprietarios_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_despesas_proprietarios1_idx` (`proprietarios_email` ASC),
  CONSTRAINT `fk_despesas_proprietarios1`
    FOREIGN KEY (`proprietarios_email`)
    REFERENCES `siaf`.`proprietarios` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `siaf`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`produtos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(30) NULL DEFAULT NULL,
  `unidade` CHAR(3) NULL DEFAULT NULL,
  `proprietarios_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_proprietarios1_idx` (`proprietarios_email` ASC),
  CONSTRAINT `fk_produtos_proprietarios1`
    FOREIGN KEY (`proprietarios_email`)
    REFERENCES `siaf`.`proprietarios` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `siaf`.`estoques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`estoques` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `quantidade` INT(6) NULL DEFAULT NULL,
  `produtos_id` INT(10) NULL DEFAULT NULL,
  `proprietarios_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `produtos_id` (`produtos_id` ASC),
  INDEX `fk_estoques_proprietarios1_idx` (`proprietarios_email` ASC),
  CONSTRAINT `estoques_ibfk_2`
    FOREIGN KEY (`produtos_id`)
    REFERENCES `siaf`.`produtos` (`id`),
  CONSTRAINT `fk_estoques_proprietarios1`
    FOREIGN KEY (`proprietarios_email`)
    REFERENCES `siaf`.`proprietarios` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `siaf`.`investimentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`investimentos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `nome_investimento` VARCHAR(30) NULL DEFAULT NULL,
  `descricao` VARCHAR(30) NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  `proprietarios_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_investimentos_proprietarios1_idx` (`proprietarios_email` ASC),
  CONSTRAINT `fk_investimentos_proprietarios1`
    FOREIGN KEY (`proprietarios_email`)
    REFERENCES `siaf`.`proprietarios` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `siaf`.`perda_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`perda_produtos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `quantidade` INT(6) NULL DEFAULT NULL,
  `motivo` VARCHAR(30) NULL DEFAULT NULL,
  `data` DATE NOT NULL,
  `estoques_id` INT(10) NULL DEFAULT NULL,
  `produtos_id` INT(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `estoques_id` (`estoques_id` ASC),
  INDEX `produtos_id` (`produtos_id` ASC),
  CONSTRAINT `perda_produtos_ibfk_1`
    FOREIGN KEY (`estoques_id`)
    REFERENCES `siaf`.`estoques` (`id`),
  CONSTRAINT `perda_produtos_ibfk_2`
    FOREIGN KEY (`produtos_id`)
    REFERENCES `siaf`.`produtos` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `siaf`.`vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `siaf`.`vendas` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `data` DATE NULL DEFAULT NULL,
  `quantidade` INT(6) NULL DEFAULT NULL,
  `preco` FLOAT NULL DEFAULT NULL,
  `total` FLOAT NOT NULL,
  `destino` VARCHAR(30) NOT NULL,
  `produtos_id` INT(10) NULL DEFAULT NULL,
   `proprietarios_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `produtos_id` (`produtos_id` ASC),
  CONSTRAINT `vendas_ibfk_2`
    FOREIGN KEY (`produtos_id`)
    REFERENCES `siaf`.`produtos` (`id`),
  INDEX `fk_vendas_proprietarios1_idx` (`proprietarios_email` ASC),
  CONSTRAINT `fk_vendas_proprietarios1`
    FOREIGN KEY (`proprietarios_email`)
    REFERENCES `siaf`.`proprietarios` (`email`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `siaf` ;


DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `plantiomensal_del`(`id` INT)
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      DELETE FROM semeadura WHERE semeadura.plantiomensal_idplantiomensal = id;
      DELETE FROM plantio WHERE plantio.plantiomensal_idplantiomensal = id;
      DELETE FROM plantiomensal  WHERE plantiomensal.idplantiomensal=id;
      SELECT "suscesso" as suscesso;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;


DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `plantiomensal`(`cultura` VARCHAR(45), `variedade` VARCHAR(45), `observacao` VARCHAR(45) , `proprietarios_email` VARCHAR(40))
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      INSERT INTO plantiomensal(`cultura`, `variedade`, `observacao`, `proprietarios_email`) VALUES (cultura, variedade, observacao, proprietarios_email);
      SELECT "suscesso" AS suscesso; 
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `semeadura`(`data` DATE, `num_mudas` INT, `idplantiomensal` INT)
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      INSERT INTO semeadura(`data`, `num_mudas`, `plantiomensal_idplantiomensal`) VALUES (data, num_mudas, idplantiomensal);
      SELECT "suscesso" AS suscesso; 
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure plantio
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `plantio`(`data` DATE, `num_talhao` INT,   `area` FLOAT,  `num_plantas` INT ,`idplantiomensal` INT)
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      INSERT INTO plantio(`data`, `num_talhao`, `area`, `num_plantas`,`plantiomensal_idplantiomensal`) VALUES (data, num_talhao, area, num_plantas, idplantiomensal);
      SELECT "suscesso" AS suscesso; 
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;
-- -----------------------------------------------------
-- procedure despesas
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `despesas`(`nome_despesa` VARCHAR(30), `descricao` VARCHAR(30), `quantidade` INT, `data` date, `valor` FLOAT, `proprietarios_email` VARCHAR(40))
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      INSERT INTO despesas(`nome_despesa`, `descricao`, `quantidade`, `data`, `valor`, `proprietarios_email`) VALUES (nome_despesa, descricao, quantidade, data, valor, proprietarios_email);
      SELECT "suscesso" AS suscesso; 
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure despesas_edt
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `despesas_edt`(`nome_despesa` VARCHAR(30), `descricao` VARCHAR(30), `quantidade` INT, `data` date, `valor` FLOAT, `cod` INT)
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
        UPDATE despesas SET `nome_despesa` = nome_despesa, `descricao` = descricao, `quantidade` = quantidade, `data` = data, `valor` = valor WHERE `id` = cod;
        SELECT 'suscesso' as suscesso;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure estoque
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `estoque`(`quantidade` INT, `proprietarios_email` VARCHAR(40), `produtos_id` INT)
BEGIN
	SET SESSION AUTOCOMMIT=0;
	SET AUTOCOMMIT =0;
    START TRANSACTION; 
    		UPDATE estoques SET estoques.quantidade=(estoques.quantidade+quantidade) WHERE estoques.produtos_id=produtos_id and estoques.proprietarios_email=proprietarios_email;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
	SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure investimentos
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `investimentos`(`nome` VARCHAR(30), `descricao` VARCHAR(30), `data` DATE, `valor` FLOAT, `email` VARCHAR(40))
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
        INSERT INTO investimentos(`nome_investimento`, `descricao`, `data`, `valor`, `proprietarios_email`) VALUES(nome, descricao, data, valor, email);
        SELECT "suscesso" AS suscesso;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure investimentos_edt
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `investimentos_edt`(`nome` VARCHAR(30), `descricao` VARCHAR(30), `data` DATE, `valor` FLOAT, `cod` INT)
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
        UPDATE investimentos SET `nome_investimento` = nome, `descricao` = descricao, `data` = data, `valor` = valor WHERE `id` = cod;
        SELECT "suscesso" AS suscesso;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure perdas
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `perdas`(`quantidade` INT, `motivo` VARCHAR(255), `data1` DATE, `perda` INT, `produto` INT)
BEGIN
	DECLARE qtdEstoque INTEGER;
	SET SESSION AUTOCOMMIT=0;
	SET AUTOCOMMIT =0;
    START TRANSACTION;
    	SELECT estoques.quantidade FROM estoques  WHERE estoques.produtos_id=produto and estoques.id=perda INTO qtdEstoque;
    	if qtdEstoque >= quantidade THEN  
    		insert into perda_produtos(quantidade, motivo, data, estoques_id, produtos_id) values(quantidade, motivo, data1, perda,produto);
    		UPDATE estoques SET estoques.quantidade=(estoques.quantidade-quantidade) WHERE estoques.produtos_id=produto and estoques.id=perda;
    		SELECT "suscesso" AS suscesso;
        END IF;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
	SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure produtos
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `produtos`(`nome` VARCHAR(255), `unidade` VARCHAR(15), `email` VARCHAR(40))
BEGIN
  DECLARE produto_id INTEGER;
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      insert into produtos(`nome_produto`, `unidade`, `proprietarios_email`) values (nome, unidade, email);
      SELECT LAST_INSERT_ID() INTO produto_id;  
      insert into estoques(`quantidade`, `proprietarios_email`, `produtos_id`) values (0, email, produto_id);
      SELECT "suscesso" AS suscesso; 
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure produtos_del
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `produtos_del`(`id` INT)
BEGIN
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      DELETE FROM vendas WHERE vendas.produtos_id = id;
      DELETE FROM perda_produtos WHERE perda_produtos.produtos_id = id;
      DELETE FROM estoques  WHERE estoques.produtos_id=id;
      DELETE FROM produtos WHERE produtos.id = id;
      SELECT "suscesso" as suscesso;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure produtos_edt
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `produtos_edt`(`nome` VARCHAR(255), `unidade` VARCHAR(15), `cod` INT)
BEGIN
  DECLARE produto_id INTEGER;
  SET SESSION AUTOCOMMIT=0;
  SET AUTOCOMMIT =0;
    START TRANSACTION;
      UPDATE produtos SET `nome_produto` = nome, `unidade` = unidade WHERE `id` = cod;  
      SELECT "suscesso" AS suscesso; 
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
  SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure vendas
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `vendas`(`data1` DATE, `quantidade` INT, `preco` FLOAT, `email` VARCHAR(40), `codproduto` INT, `destino` VARCHAR(15))
BEGIN
	DECLARE qtdEstoque INTEGER;
	SET SESSION AUTOCOMMIT=0;
	SET AUTOCOMMIT =0;
    START TRANSACTION;
    	SELECT estoques.quantidade FROM estoques  WHERE estoques.produtos_id=codproduto  INTO qtdEstoque;
    	if qtdEstoque >= quantidade THEN  
    		INSERT INTO vendas(`data`, `quantidade`, `preco`, `total`, `proprietarios_email`, `produtos_id`, `destino`) VALUES (data1, quantidade, preco, (quantidade * preco), email, codproduto, destino);
    		UPDATE estoques SET estoques.quantidade=(estoques.quantidade-quantidade) WHERE estoques.produtos_id=codproduto ;
    		SELECT "suscesso" AS suscesso;
        END IF;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
	SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure vendas_del
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `vendas_del`(`id` INT)
BEGIN
	SET SESSION AUTOCOMMIT=0;
	SET AUTOCOMMIT =0;
    START TRANSACTION;
    		UPDATE estoques SET estoques.quantidade=(estoques.quantidade+( SELECT vendas.quantidade FROM vendas WHERE vendas.id=id) ) WHERE estoques.produtos_id=(SELECT vendas.produtos_id FROM vendas WHERE vendas.id=id) ;
    		DELETE FROM `vendas` WHERE vendas.id = id;
    		SELECT 'suscesso' as suscesso;
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
	SET AUTOCOMMIT =1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure vendas_edt
-- -----------------------------------------------------

DELIMITER $$
USE `siaf`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `vendas_edt`(`data1` DATE, `quantidade` INT, `preco` FLOAT, `id` INT)
BEGIN
	DECLARE qtdEstoque INTEGER;
	DECLARE qtdanterior INTEGER;
	SET SESSION AUTOCOMMIT=0;
	SET AUTOCOMMIT =0;
    START TRANSACTION;
    	SELECT vendas.quantidade FROM vendas WHERE vendas.id=id INTO qtdanterior;
    	IF qtdanterior < quantidade  THEN
	  		SELECT estoques.quantidade FROM estoques  WHERE estoques.produtos_id=(SELECT vendas.produtos_id FROM vendas WHERE vendas.id=id)  INTO qtdEstoque;
    		IF qtdEstoque >= (quantidade-qtdanterior) THEN  
    			UPDATE vendas SET  `preco` = preco, `quantidade` = quantidade, `data` = data1, total = (preco * quantidade) WHERE vendas.id = id;
    			UPDATE estoques SET estoques.quantidade=(estoques.quantidade+(qtdanterior-quantidade)) WHERE estoques.produtos_id=(SELECT vendas.produtos_id FROM vendas WHERE vendas.id=id) ;
    			SELECT "suscesso - " AS suscesso;
    		END IF; 
        else
     		UPDATE vendas SET  `preco` = preco, `quantidade` = quantidade, `data` = data1, total = (preco * quantidade) WHERE vendas.id = id;
     		UPDATE estoques SET estoques.quantidade=(estoques.quantidade-(quantidade-qtdanterior)) WHERE estoques.produtos_id=(SELECT vendas.produtos_id FROM vendas WHERE vendas.id=id) ;
    		SELECT "suscesso + " AS suscesso;
        END IF;	
    COMMIT;
    SET SESSION AUTOCOMMIT=1;
	SET AUTOCOMMIT =1;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
