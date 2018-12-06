CREATE OR REPLACE TRIGGER MWD.LOCATION_ADDRESSES_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.LOCATION_ADDRESSES 
    FOR EACH ROW 
DECLARE 
  location_address_id number; 
BEGIN 
  if inserting then   
    if :new.location_address_id is null then 
      select loc_addr_seq.nextval 
        into location_address_id 
        from dual; 
      :new.location_address_id := location_address_id; 
    end if; 
  end if; 

END; 
/