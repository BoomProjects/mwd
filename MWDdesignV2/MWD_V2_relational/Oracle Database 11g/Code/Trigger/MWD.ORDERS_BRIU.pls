CREATE OR REPLACE TRIGGER MWD.ORDERS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.ORDERS 
    FOR EACH ROW 
DECLARE 
  order_id number; 
  value_in_list number;
BEGIN 
  if inserting then   
    if :new.order_id is null then 
      select ordr_seq.nextval 
        INTO order_id 
        FROM dual; 
      :new.order_id := order_id; 
    end if;
  end if; 

 	-- in lieu of check constraint.
	if :new.order_type is not null then
		select nvl(count(*),0)
			into value_in_list
			from domains
			where domain_name = 'ORDER_TYPE'
			and active = 'Y';
		if (value_in_list = 0) then
			:new.order_type := null;
		end if;
	end if;

END; 
/