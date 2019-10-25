create database SAlES_3
DEFAULT CHARACTER SET utf8;

use SALES_3;
CREATE TABLE cliente (
    CustNo varchar(8) NOT NULL,
    CustFirstName varchar(125) NULL,
    CustLastName varchar(125) NULL,
    CustCity varchar(100) NULL,
    CustState varchar(100) NULL,
    CustZip decimal(50,0) NULL,
    CustBal decimal(50,0) NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (CustNo)
);

CREATE TABLE empleado (
    EmpNo varchar(8) NOT NULL,
    EmpFirstName varchar(150) NULL,
    EmpLastName varchar(150) NULL,
    EmpPhone varchar(20) NULL,
    EmpEmail varchar(50) NULL,
    CONSTRAINT empleado_pk PRIMARY KEY (EmpNo)
);

CREATE TABLE ordenes (
    OrdNo varchar(8) NOT NULL,
    OrdDate timestamp NULL,
    CustNo varchar(8) NOT NULL,
    EmpNo varchar(8) NOT NULL,
    CONSTRAINT ordenes_pk PRIMARY KEY (OrdNo)
);

ALTER TABLE ordenes ADD CONSTRAINT ordenes_cliente FOREIGN KEY ordenes_cliente (CustNo)
    REFERENCES cliente (CustNo);

ALTER TABLE ordenes ADD CONSTRAINT ordenes_empleado FOREIGN KEY ordenes_empleado (EmpNo)
    REFERENCES empleado (EmpNo);