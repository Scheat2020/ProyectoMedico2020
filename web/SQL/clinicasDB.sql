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

use clinicasdb;
CREATE TABLE `clinicasdb`.`usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(145) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `tipo` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idUsuario`));

CREATE TABLE `clinicasdb`.`doctores` (
  `idDoctor` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(145) NOT NULL,
  `apellidos` VARCHAR(145) NOT NULL,
  `celular` VARCHAR(9) NOT NULL,
  `correo` VARCHAR(145) NOT NULL,
  `credencial` VARCHAR(145) NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idDoctor`));

CREATE TABLE `clinicasdb`.`pacientes` (
  `idPaciente` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(145) NOT NULL,
  `apellidos` VARCHAR(145) NOT NULL,
  `foto` LONGBLOB,
  `fechaNacimiento` DATETIME NOT NULL,
  `DUI` VARCHAR(10) NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `nombreUsuario` VARCHAR(145) NOT NULL,
  `celular` VARCHAR(9) NOT NULL,
  `correo` VARCHAR(145) NOT NULL,
  `sexo` TINYINT(1) NOT NULL,
  `seguro` TINYINT(1) NOT NULL,
  `idDoctor` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idPaciente`));

CREATE TABLE `clinicasdb`.`cuadroMedico` (
  `idCuadroMedico` INT NOT NULL AUTO_INCREMENT,
  `estatura` DOUBLE NOT NULL,
  `tipoSangre` VARCHAR(3) NOT NULL,
  `alergias` VARCHAR(200) NOT NULL,
  `historialFamiliar` VARCHAR(200) NOT NULL,
  `idPaciente` INT NOT NULL,
PRIMARY KEY (`idCuadroMedico`));

CREATE TABLE `clinicasdb`.`enfermedades` (
  `idEnfermedad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(145) NOT NULL,
  `idPaciente` INT NOT NULL,
  PRIMARY KEY (`idEnfermedad`));

CREATE TABLE `clinicasdb`.`citas` (
  `idCita` INT NOT NULL AUTO_INCREMENT,
  `motivo` VARCHAR(145) NOT NULL,
  `fecha` DATETIME NOT NULL,
  `idPaciente` INT NOT NULL,
  `idDoctor` INT NOT NULL,
  PRIMARY KEY (`idCita`));

ALTER TABLE `clinicasdb`.`pacientes` 
ADD INDEX `fk_usuarioP_idx` (`idUsuario` ASC) VISIBLE,
ADD INDEX `fk_doctorP_idx` (`idDoctor` ASC) VISIBLE;
;
ALTER TABLE `clinicasdb`.`pacientes` 
ADD CONSTRAINT `fk_usuarioP`
  FOREIGN KEY (`idUsuario`)
  REFERENCES `clinicasdb`.`usuarios` (`idUsuario`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_doctorP`
  FOREIGN KEY (`idDoctor`)
  REFERENCES `clinicasdb`.`doctores` (`idDoctor`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `clinicasdb`.`doctores` 
ADD INDEX `fk_usuarioD_idx` (`idUsuario` ASC) VISIBLE;
;
ALTER TABLE `clinicasdb`.`doctores` 
ADD CONSTRAINT `fk_usuarioD`
  FOREIGN KEY (`idUsuario`)
  REFERENCES `clinicasdb`.`usuarios` (`idUsuario`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `clinicasdb`.`enfermedades` 
ADD INDEX `fk_pacienteE_idx` (`idPaciente` ASC) VISIBLE;
;
ALTER TABLE `clinicasdb`.`enfermedades` 
ADD CONSTRAINT `fk_pacienteE`
  FOREIGN KEY (`idPaciente`)
  REFERENCES `clinicasdb`.`pacientes` (`idPaciente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

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

ALTER TABLE `clinicasdb`.`cuadromedico` 
ADD INDEX `fk_pacienteCM_idx` (`idPaciente` ASC) VISIBLE;
;
ALTER TABLE `clinicasdb`.`cuadromedico` 
ADD CONSTRAINT `fk_pacienteCM`
  FOREIGN KEY (`idPaciente`)
  REFERENCES `clinicasdb`.`pacientes` (`idPaciente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;