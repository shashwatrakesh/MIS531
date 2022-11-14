CREATE OR REPLACE PROCEDURE add_new_event(eid events.eventid%type,
store1id stores.storeid%type,store2id stores.storeid%type,
eloc events.elocation%type,ename events.eventname%type,eventtime events.etime%type,eventdate events.edate%type,did departments.depid%type) AS 
BEGIN
add_event_pre_req(store1id,store2id);
INSERT INTO EVENTS VALUES(eid,eloc,ename,eventtime,eventdate,did);
INSERT INTO EVENT_STALLS VALUES(eid,store1id);
INSERT INTO EVENT_STALLS VALUES(eid,store2id);
END;
/