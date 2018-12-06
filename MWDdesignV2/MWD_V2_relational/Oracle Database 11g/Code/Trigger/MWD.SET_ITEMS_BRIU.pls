CREATE OR REPLACE TRIGGER MWD.SET_ITEMS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.SET_ITEMS 
    FOR EACH ROW 
declare
  set_item_id number;  
  l_list_price number; 
begin 
  if inserting then
	  if :new.set_item_id is null then 
		select set_item_seq.nextval  
		  into set_item_id  
		  from dual; 
		:new.set_item_id := set_item_id; 
	  end if;
  end if; 

  if :new.unit_price is null then 
	if :new.created_item_id is not null
			then
		select list_price 
		into l_list_price 
		from items 
		where item_id = :new.created_item_id;
	else
		l_list_price := 0; -- ELSE CLAUSE TO CATCH EMPTY INSERTS.
	end if;

	:new.unit_price := l_list_price;
  end if; 
end; 
/