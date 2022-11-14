-- For stores table:
INSERT INTO STORES VALUES(101,'Test Store 2','10 AM TO 7PM',1,2000,'SUMC');

-- For bookstore table:
INSERT INTO BOOKSTORE VALUES('S108');

-- For restaurants table:
-- Price ranges: Inexpensive, Moderately expensive, Expensive, Very Expensive 
INSERT INTO RESTAURANTS VALUES('S110', 'Indian', 'Moderately expensive');

INSERT INTO ORDERS VALUES('O109',to_char(sysdate,'DD-MON-YYYY'),to_char(sysdate,'HH24:MI:SS'), 'cash');