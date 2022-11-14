CREATE TABLE STORES (
 storeid char(5) constraint stores_pk PRIMARY KEY,
 storename varchar2(30) constraint store_name UNIQUE,
 operatinghours varchar2(40),
 sizesqft number(5),
 buildingno number(5),
 slocation varchar2(10)
);