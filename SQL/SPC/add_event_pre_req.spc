CREATE OR REPLACE PROCEDURE add_event_pre_req(store1id stores.storeid%type,store2id stores.storeid%type) AS 
v_store1check number(2) DEFAULT 0;
v_store2check number(2) DEFAULT 0;
v_countstore number(2);
BEGIN
SELECT count(storeid) INTO v_store1check FROM STORES WHERE storeid = store1id;
SELECT count(storeid) INTO v_store2check FROM STORES WHERE storeid = store1id;
IF v_store1check = 0  THEN
    dbms_output.put_line('Store ' || store1id || 'not present in stores table');
    raise_application_error(-20010,'Invalid store');
ELSIF v_store2check = 0  THEN
    dbms_output.put_line('Store ' || store2id || 'not present in stores table');
    raise_application_error(-20010,'Invalid store');
ELSE
    dbms_output.put_line('stores are valid and present in stores table');
END IF;
END;
/