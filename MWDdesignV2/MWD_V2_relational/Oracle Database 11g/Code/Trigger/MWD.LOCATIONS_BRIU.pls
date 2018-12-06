CREATE OR REPLACE TRIGGER MWD.LOCATIONS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.LOCATIONS 
    FOR EACH ROW 
DECLARE
	location_id number;
BEGIN 
   if inserting then 
	if :new.location_id is null then 
      select loc_seq.nextval 
        INTO location_id
        FROM dual; 
      :new.location_id := location_id;   
	end if;
   end if; 
END; 
/