CREATE OR REPLACE TRIGGER MWD.KIT_ITEMS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.KIT_ITEMS 
    FOR EACH ROW 
declare
  kit_item_id number;  
  l_list_price number; 
begin 
  if inserting then
	  if :new.kit_item_id is null then 
		select kit_item_seq.nextval  
		  into kit_item_id  
		  from dual; 
		:new.kit_item_id := kit_item_id; 
	  end if;
  end if; 

  if :new.unit_price is null then 
	if :new.item_id is not null 
			then
		select list_price 
		into l_list_price 
		from items 
		where item_id = :new.item_id; 	
	else
		l_list_price := 0; -- ELSE CLAUSE TO CATCH EMPTY INSERTS.
	end if;

	:new.unit_price := l_list_price;
  end if; 
end; 
/