CREATE OR REPLACE TRIGGER MWD.PERSONS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.PERSONS 
    FOR EACH ROW 
DECLARE 
	pers_id 	number; 
BEGIN 
  if inserting then   
    if :new.person_id is null then 
      select pers_seq.nextval 
        into pers_id 
        from dual; 
      :new.person_id := pers_id; 
    end if; 
  end if; 
END; 
/