/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  sergi
 * Created: 8 abr. 2020
 */

CREATE SCHEMA `clinicasdb` ;

CREATE TABLE `clinicasdb`.`doctores` (
  `idDoctor` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(145) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `nombres` VARCHAR(145) NOT NULL,
  `apellidos` VARCHAR(145) NOT NULL,
  `celular` VARCHAR(9) NOT NULL,
  `correo` VARCHAR(145) NOT NULL,
  `credencial` VARCHAR(145) NOT NULL,
  PRIMARY KEY (`idDoctor`));

CREATE TABLE `clinicasdb`.`pacientes` (
  `idPaciente` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(145) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `nombres` VARCHAR(145) NOT NULL,
  `apellidos` VARCHAR(145) NOT NULL,
  `foto` LONGBLOB,
  `fechaNacimiento` DATETIME NOT NULL,
  `DUI` VARCHAR(10) NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `celular` VARCHAR(9) NOT NULL,
  `correo` VARCHAR(145) NOT NULL,
  `sexo` TINYINT(1) NOT NULL,
  `seguro` TINYINT(1) NOT NULL,
  `estatura` DOUBLE NOT NULL,
  `tipoSangre` VARCHAR(3) NOT NULL,
  `alergias` VARCHAR(200) NOT NULL,
  `historialFamiliar` VARCHAR(200) NOT NULL,
  `idDoctor` INT,
  PRIMARY KEY (`idPaciente`));


CREATE TABLE `clinicasdb`.`citas` (
  `idCita` INT NOT NULL AUTO_INCREMENT,
  `motivo` VARCHAR(145) NOT NULL,
  `fecha` DATETIME NOT NULL,
  `idPaciente` INT NOT NULL,
  `idDoctor` INT NOT NULL,
  PRIMARY KEY (`idCita`));

ALTER TABLE `clinicasdb`.`citas` 
ADD INDEX `fk_doctorC_idx` (`idDoctor` ASC) VISIBLE,
ADD INDEX `fk_pacienteC_idx` (`idPaciente` ASC) VISIBLE;
;
ALTER TABLE `clinicasdb`.`citas` 
ADD CONSTRAINT `fk_doctorC`
  FOREIGN KEY (`idDoctor`)
  REFERENCES `clinicasdb`.`doctores` (`idDoctor`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pacienteC`
  FOREIGN KEY (`idPaciente`)
  REFERENCES `clinicasdb`.`pacientes` (`idPaciente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `clinicasdb`.`pacientes` 
ADD INDEX `fk_pacienteD_idx` (`idDoctor` ASC) VISIBLE;
;
ALTER TABLE `clinicasdb`.`pacientes` 
ADD CONSTRAINT `fk_pacienteD`
  FOREIGN KEY (`idDoctor`)
  REFERENCES `clinicasdb`.`doctores` (`idDoctor`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;