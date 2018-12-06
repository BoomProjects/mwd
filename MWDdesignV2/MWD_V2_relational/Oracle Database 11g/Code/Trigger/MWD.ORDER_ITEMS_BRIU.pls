CREATE OR REPLACE TRIGGER MWD.ORDER_ITEMS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.ORDER_ITEMS 
    FOR EACH ROW 
declare
  order_item_id number;  
  l_list_price number; 
begin 
  if inserting then
	  if :new.order_item_id is null then 
		select ordr_item_seq.nextval  
		  into order_item_id  
		  from dual; 
		:new.order_item_id := order_item_id; 
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
		l_list_price := 0; -- ELSE CLAUSE TO LEAVE SPACE FOR NEW ORDER_ITEMS LIKE KITS/SETS.
	end if;
  end if; 
end; 
/