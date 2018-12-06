CREATE OR REPLACE TRIGGER MWD.SETS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.SETS 
    FOR EACH ROW 
DECLARE 
  set_id number;
  value_in_ava_list number;
  value_in_sal_list number;
BEGIN 

      	-- in lieu of check constraint.
	if :new.availability is not null then
		select nvl(count(*),0)
			into value_in_ava_list
			from domains
			where domain_name = 'ITEM_AVAILABILITY'
			and active = 'Y'
			and domain_value = :new.availability;

		if (value_in_ava_list = 0) then -- treat as if null.
			:new.availability := null;
		end if;
	end if; 

	if :new.sale_status is not null then
		select nvl(count(*),0)
			into value_in_sal_list
			from domains
			where domain_name = 'ITEM_SALE_STATUS'
			and active = 'Y'
			and domain_value = :new.sale_status;

		if (value_in_sal_list = 0) then -- treat as if null.
			:new.sale_status := null;
		end if;
	end if;   
END; 
/