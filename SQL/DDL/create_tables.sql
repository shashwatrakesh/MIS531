CREATE TABLE STORES (
 storeid char(5) constraint stores_pk PRIMARY KEY,
 storename varchar2(30) constraint store_name UNIQUE,
 operatinghours varchar2(40),
 sizesqft number(5),
 buildingno number(5),
 slocation varchar2(10)
);

CREATE TABLE BOOKSTORE (
storeid char(5) NOT NULL, 
    constraint bookstore_stores_fk FOREIGN KEY (storeid) REFERENCES STORES (storeid)
);


CREATE TABLE RESTAURANTS (
storeID char(5) NOT NULL, 
cuisine varchar2(40),
priceRange varchar2(40),
    constraint restaurant_stores_fk FOREIGN KEY (storeID) REFERENCES STORES (storeid)
);


CREATE TABLE DEPATMENTS  (
 depid char(5) constraint detp_pk PRIMARY KEY,
 deptcontact varchar2(15),
 dlocation varchar2(15),
 depname varchar2(5),
 hod varchar2(15)
);

CREATE TABLE EVENTS  (
 eventid char(5) constraint event_pk PRIMARY KEY,
 elocation varchar2(40),
 eventName varchar2(15),
 etime varchar2(5),
 edate DATE,
 depid char(5),
 constraint depid_fk foreign key (depid) references DEPATMENTS
);