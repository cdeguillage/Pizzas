CREATE SCHEMA `blogjoin` DEFAULT CHARACTER SET utf8;

CREATE TABLE `blogjoin`.`article` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(45) NULL,
  `auteur` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `blogjoin`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  fk_address_user1fk_address_user1
  
  USE `blogjoin`;
  
  /***********************************************************************/
  
  