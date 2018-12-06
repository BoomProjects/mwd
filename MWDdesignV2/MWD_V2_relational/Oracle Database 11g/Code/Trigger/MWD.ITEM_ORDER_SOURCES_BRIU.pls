CREATE OR REPLACE TRIGGER MWD.ITEM_ORDER_SOURCES_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.ITEM_ORDER_SOURCES 
    FOR EACH ROW 
DECLARE 
  item_order_source_id number; 
BEGIN 
  if inserting then   
    if :new.item_order_source_id is null then 
      select item_ordr_srce_seq.nextval 
        into item_order_source_id 
        from dual; 
      :new.item_order_source_id := item_order_source_id; 
    end if; 
  end if; 

END; 
/