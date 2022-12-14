-- For stores table:
INSERT INTO STORES VALUES(101,'Test Store 2','10 AM TO 7PM',1,2000,'SUMC');

-- For bookstore table:
INSERT INTO BOOKSTORE VALUES('S108');

-- For restaurants table:
-- Price ranges: Inexpensive, Moderately expensive, Expensive, Very Expensive 
INSERT INTO RESTAURANTS VALUES('S110', 'Indian', 'Moderately expensive');


-- For departments table:
INSERT INTO DEPARTMENTS VALUES ('1000','contactmis@eller.arizona.edu','McClelland Hall, 1130 E Helen St, Tucson, AZ 85721','Management Information Systems','Dr. Sue Brown');
INSERT INTO DEPARTMENTS VALUES ('1001','contactCS@eller.arizona.edu','1040 4th St, Tucson, AZ 85721','Computer Science','Dr. Christian Collberg');

-- For orders table:
INSERT INTO ORDERS VALUES('O109',to_char(sysdate,'DD-MON-YYYY'),to_char(sysdate,'HH24:MI:SS'), 'cash');

-- For waste table:
INSERT into WASTE VALUES(101, 'LeftRice', 1, 'FoodHazard', 'Food');

-- For WAREHOUSE table:
INSERT into WAREHOUSE VALUES(101, 'Speedway', 'Downtown');


-- For TRAINING table:
INSERT into TRAINING VALUES(101, '30minutes', 'HRTraining', 'Paul John', 'online');

-- For ThirdPartyApps table:
INSERT into ThirdPartyApps VALUES(101, 'DoorDash', '5');

-- For ThirdPartyDeliveryMode table:
INSERT into ThirdPartyDeliveryMode VALUES(101, 'HomeDelivery');






