CREATE OR REPLACE TRIGGER MWD.STORE_ITEMS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.STORE_ITEMS 
    FOR EACH ROW 
DECLARE
	store_item_id	number;
	l_list_price		number;
BEGIN 
   if inserting then 
   	  if :new.store_item_id is null then 
		select stor_item_seq.nextval  
		  into store_item_id  
		  from dual; 
		:new.store_item_id := store_item_id;
	  end if;
   end if; 

   if :new.unit_price is null then 
    -- First, we need to get the current list price of the store item 
	if :new.item_id is not null 
        then
		select list_price 
		into l_list_price 
		from items 
		where item_id = :new.item_id; 
	else
		l_list_price := 0; -- ELSE CLAUSE TO LEAVE SPACE FOR NEW STORE_ITEMS LIKE KITS/SETS.
	end if;
    -- Once we have the correct price, we will update the store item with the correct price 
    :new.unit_price := l_list_price; 
  end if; 
END; 
/