CREATE SCHEMA IF NOT EXISTS DispFahrer DEFAULT CHARACTER SET utf8mb4;
USE DispFahrer;

CREATE TABLE tbl_fahrer (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(45) NOT NULL,
  Vorname VARCHAR(45) NOT NULL,
  Telefonnummer VARCHAR(45)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE tbl_disponent (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(45) NOT NULL,
  Vorname VARCHAR(45) NOT NULL,
  Telefonnummer VARCHAR(45)
) DEFAULT CHARSET=utf8mb4;

DROP TABLE tbl_fahrer;

CREATE TABLE tbl_fahrer (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(45) NOT NULL,
  Vorname VARCHAR(45) NOT NULL,
  Telefonnummer VARCHAR(45)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE tbl_Mitarbeiter (
  MA_ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Vorname VARCHAR(30),
  Geburtsdatum DATETIME,
  Telefonnummer VARCHAR(12),
  Einkommen FLOAT(10,2)
) DEFAULT CHARSET=utf8mb4;

ALTER TABLE tbl_Mitarbeiter
  MODIFY Name VARCHAR(50) CHARACTER SET latin1,
  MODIFY Vorname VARCHAR(30) CHARACTER SET latin1;

ALTER TABLE tbl_fahrer
  DROP Name, DROP Vorname, DROP Telefonnummer;

ALTER TABLE tbl_disponent
  DROP Name, DROP Vorname, DROP Telefonnummer;

ALTER TABLE tbl_fahrer
  ADD CONSTRAINT fk_fahrer FOREIGN KEY (ID) REFERENCES tbl_Mitarbeiter(MA_ID);

ALTER TABLE tbl_disponent
  ADD CONSTRAINT fk_disponent FOREIGN KEY (ID) REFERENCES tbl_Mitarbeiter(MA_ID);
