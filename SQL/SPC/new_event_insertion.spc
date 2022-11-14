CREATE OR REPLACE TRIGGER new_event_insertion
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