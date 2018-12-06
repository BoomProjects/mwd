CREATE OR REPLACE TRIGGER MWD.PURCHASES_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.PURCHASES 
    FOR EACH ROW 
DECLARE
    value_in_list number;
BEGIN
	if :new.order_status is not null then
		select nvl(count(*),0)
			into value_in_list
			from domains
			where domain_name = 'PURCHASE_STATUS'
			and active = 'Y';
		if (value_in_list = 0) then
			:new.order_status := null;
		end if;
	end if;
END; 
/