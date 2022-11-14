create or replace TRIGGER new_store_id_gen
  BEFORE INSERT 
  ON STORES 
  FOR EACH ROW
DECLARE
v_storeid stores.storeid%type;
BEGIN
       v_storeid := concat('S',to_char(store_id_seq.NEXTVAL));
       :new.storeid := v_storeid;
END;
/

CREATE OR REPLACE TRIGGER new_event_id_gen
  BEFORE INSERT 
  ON EVENTS 
  FOR EACH ROW
DECLARE
v_eventid events.eventid%type;
BEGIN
       v_eventid := concat('E',to_char(event_id_seq.NEXTVAL));
       :new.eventid := v_eventid;
END;
/