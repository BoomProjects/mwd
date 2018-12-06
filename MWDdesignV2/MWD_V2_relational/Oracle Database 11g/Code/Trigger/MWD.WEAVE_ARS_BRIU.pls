CREATE OR REPLACE TRIGGER MWD.WEAVE_ARS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.WEAVE_ARS 
    FOR EACH ROW 
DECLARE 
  weave_ar_order number; 
  weav_ars_id number; 
BEGIN 
  if inserting then   
    if :new.weave_ars_id is null then 
      select weav_ars_seq.nextval 
        into weav_ars_id 
        from dual; 
      :new.weave_ars_id := weav_ars_id; 
    end if; 

    if :new.ar_sort_order is null then 
      select nvl(max(ar_sort_order), 0)
	  into weave_ar_order
	  from weave_ars
	  where weave_id=:new.weave_id;

      :new.ar_sort_order := weave_ar_order +1; 
    end if; 
  end if; 
END; 
/