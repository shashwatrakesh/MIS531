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


CREATE TABLE DEPARTMENTS  (
 depid char(5) constraint detp_pk PRIMARY KEY,
 deptcontact varchar2(50),
 dlocation varchar2(50),
 depname varchar2(50),
 hod varchar2(205)
);

CREATE TABLE EVENTS  (
 eventid char(5) constraint event_pk PRIMARY KEY,
 elocation varchar2(50),
 eventName varchar2(50),
 etime varchar2(20),
 edate DATE,
 depid char(5),
 constraint depid_fk foreign key (depid) references DEPARTMENTS
);

--For orders
CREATE TABLE ORDERS (
 orderID char(5) constraint orders_pk PRIMARY KEY,
 orderDate varchar(40),
 orderTime varchar2(40),
 paymentMethod varchar2(20)
);


-- Table for WASTE(wasteID, wasteName, isRecyclable, hazardClass, wasteType)
CREATE TABLE WASTE(
    wasteID char(5) constraint waste_pk PRIMARY KEY,
    wasteName varchar(50),
    isRecyclable BOOLEAN, -- This is a boolean value which means : 1-> "Recycleable"
    hazardClass varchar(50),
    wasteType varchar(50)
    );

-- Table for WAREHOUSE(wareHouseID, location, areas)
CREATE TABLE WAREHOUSE(
    wareHouseID char(5) constraint warehouse_pk PRIMARY KEY,
    wareHouseLocation varchar(50),
    wareHousearea varchar(50)
    );

-- Table for TRAINING(trainingID, duration, trainingName, instructor, mode)
CREATE TABLE TRAINING(
    trainingID char(5) constraint training_pk PRIMARY KEY,
    traininduration varchar(20),
    trainingName varchar(30),
    instructor varchar(30),
    trainingmode varchar(30)
    );

-- Table for CUSTOMERS
CREATE TABLE CUSTOMERS(
    custID char(5) constraint customer_pk PRIMARY KEY,
    custname varchar2(50), 
    custstreet varchar2(20),
    custcity varchar2(20),
    custstate varchar2(20)
    );

-- Table for CUSTOMER_ORDERS(custID,orderID)
CREATE TABLE CUSTOMER_PHONENUMBERS(
    custID char(5),
    phonenumber number(15), 
    constraint CUSTOMER_PHONENUMBERS_pk PRIMARY KEY(custID, phonenumber),
    constraint custID_fk foreign key(custID) references CUSTOMERS,
    );

-- Table for CUSTOMER_ORDERS(custID,orderID)
CREATE TABLE CUSTOMER_ORDERS(
    custID char(5),
    orderID char(5), 
    constraint customer_order_pk PRIMARY KEY(custID, orderID),
    constraint orderID_customers_fk foreign key(orderID) references ORDERS,
    constraint cust_orders_fk foreign key(custID) references CUSTOMERS
    );

-- Table for 3rd Party Apps(partnerID, partnerName, rating)
CREATE TABLE ThirdPartyApps(
    partnerID char(5) constraint partnerID_pk PRIMARY KEY,
    partnerName varchar(50),
    rating varchar(10)
    );


-- Table for 3rd  ThirdPartyDeliveryModes
CREATE TABLE ThirdPartyDeliveryModes(
    partnerID char(5),
    deliveryMode varchar(30),
    constraint ThirdParty_pk PRIMARY KEY(partnerID, deliveryMode),
    constraint partnerID_fk foreign key(partnerID) references ThirdPartyApps
    );


-- Table for 3rd Party services(partnerID, service)
CREATE TABLE ThirdPartyServices(
    partnerID char(5),
    services varchar(50),
    constraint ThirdPartyServices_pk PRIMARY KEY(partnerID,services),
    constraint ThirdPartyServices_fk foreign key(partnerID) references ThirdPartyApps);

