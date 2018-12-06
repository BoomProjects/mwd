CREATE OR REPLACE TRIGGER MWD.ITEM_WEAVES_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.ITEM_WEAVES 
    FOR EACH ROW 
declare 
  item_weave_id number; 
begin 
  if inserting then
    if :new.item_weave_id is null then 
		select item_weav_seq.nextval  
			into item_weave_id  
			from dual; 
		:new.item_weave_id := item_weave_id; 
	end if; 
  end if;
end; 
/