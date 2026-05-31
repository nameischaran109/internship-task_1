-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`authors` (
  `author_id` INT NOT NULL AUTO_INCREMENT,
  `author_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`author_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`books` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `isbn` VARCHAR(45) NULL,
  `publication_year` INT NULL,
  `author_id` INT NULL,
  PRIMARY KEY (`book_id`),
  INDEX `fk_books_authors_idx` (`author_id` ASC) VISIBLE,
  CONSTRAINT `fk_books_authors`
    FOREIGN KEY (`author_id`)
    REFERENCES `mydb`.`authors` (`author_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`members` (
  `member_id` INT NOT NULL AUTO_INCREMENT,
  `member_name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`member_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`borrowings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`borrowings` (
  `borrow_id` INT NOT NULL AUTO_INCREMENT,
  `member_id` INT NULL,
  `book_id` INT NULL,
  `borrow_date` DATE NULL,
  `return_date` DATE NULL,
  PRIMARY KEY (`borrow_id`),
  INDEX `fk_borrowings_members_idx` (`member_id` ASC) VISIBLE,
  INDEX `fk_borrowings_books_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_borrowings_members`
    FOREIGN KEY (`member_id`)
    REFERENCES `mydb`.`members` (`member_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_borrowings_books`
    FOREIGN KEY (`book_id`)
    REFERENCES `mydb`.`books` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
