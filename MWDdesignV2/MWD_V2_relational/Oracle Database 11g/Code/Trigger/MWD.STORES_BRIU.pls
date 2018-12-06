CREATE OR REPLACE TRIGGER MWD.STORES_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.STORES 
    FOR EACH ROW 
DECLARE
	value_in_list number;
	store_id number;
BEGIN 
   if inserting then 
	if :new.store_id is null then 
      select stor_seq.nextval 
        INTO store_id 
        FROM dual; 
      :new.store_id := store_id;   
	end if;
   end if; 

 	-- in lieu of check constraint.
	if :new.store_type is not null then
		select nvl(count(*),0)
			into value_in_list
			from domains
			where domain_name = 'STORE_TYPE'
			and active = 'Y';
		if (value_in_list = 0) then
			:new.store_type := null;
		end if;
	end if;   
END; 
/