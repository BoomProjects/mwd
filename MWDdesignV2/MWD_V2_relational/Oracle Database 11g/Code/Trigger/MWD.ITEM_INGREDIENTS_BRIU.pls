CREATE OR REPLACE TRIGGER MWD.ITEM_INGREDIENTS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.ITEM_INGREDIENTS 
    FOR EACH ROW 
declare 
  item_ingredient_id number; 
  l_list_price number; 
begin 
  if inserting then
    if :new.item_ingredient_id is null then 
		select item_ingr_seq.nextval  
			into item_ingredient_id  
			from dual; 
		:new.item_ingredient_id := item_ingredient_id; 
	end if; 
  end if;

  if (:new.unit_price is null OR :new.unit_price = 0) then 
    -- First, we need to get the current list price of the product ingredient 
    select nvl(list_price,0)
    into l_list_price 
    from items 
    where item_id = :new.ingredient_id; 
    -- Once we have the correct price, we will update the product ingredient with the correct price 
    :new.unit_price := l_list_price; 
  end if; 
end; 
/