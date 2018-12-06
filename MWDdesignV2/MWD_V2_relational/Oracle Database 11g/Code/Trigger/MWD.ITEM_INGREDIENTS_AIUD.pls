CREATE OR REPLACE TRIGGER MWD.ITEM_INGREDIENTS_AIUD 
    AFTER INSERT OR UPDATE OR DELETE ON MWD.ITEM_INGREDIENTS 
begin 
  -- Update the Product Cost Total when any product ingredient is changed 
  update items set cost_total = 
  (select sum(unit_price*quantity) from item_ingredients 
    where item_ingredients.item_id = items.item_id); 
end; 
/