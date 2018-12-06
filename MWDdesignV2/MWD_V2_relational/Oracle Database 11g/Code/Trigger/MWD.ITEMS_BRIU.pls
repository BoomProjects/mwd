CREATE OR REPLACE TRIGGER MWD.ITEMS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.ITEMS 
    FOR EACH ROW 
DECLARE 
  prod_id number;
  is_active char(1);
  default_subcat varchar2(30) := 'OTHER';
  cat_id number;
  value_in_cat_list number;
  value_in_ava_list number;
  value_in_sal_list number;
BEGIN 
  if inserting then   
    if :new.item_id is null then 
      select item_seq.nextval 
        into prod_id 
        from dual; 
      :new.item_id := prod_id; 
    end if; 
  end if; 

  	-- in lieu of check constraint.
	if :new.availability is not null then
		select nvl(count(*),0)
			into value_in_ava_list
			from domains
			where domain_name = 'ITEM_AVAILABILITY'
			and active = 'Y'
			and domain_value = :new.availability;

		if (value_in_ava_list = 0) then -- treat as if null.
			:new.availability := null;
		end if;
	end if; 

	if :new.sale_status is not null then
		select nvl(count(*),0)
			into value_in_sal_list
			from domains
			where domain_name = 'ITEM_SALE_STATUS'
			and active = 'Y'
			and domain_value = :new.sale_status;

		if (value_in_sal_list = 0) then -- treat as if null.
			:new.sale_status := null;
		end if;
	end if;   

  if :new.item_type is not null then
		select domain_value_id, active 
			into cat_id, is_active
			from domains 
			where domain_name = 'ITEM_CATEGORY' 
			and domain_value = :new.item_type;

		if (is_active = 'Y') then
			select domain_value
			into default_subcat
			from domains
			group by domain_value
			having sort_order = min(sort_order)  -- take lowest sequence value in domain.
			and domain_name = 'ITEM_SUBCATEGORY'
			and active = 'Y'
			and parent_domain_value_id = cat_id;

		else -- if category <> active, treat as null.
			:new.item_type := null;
		end if;
	end if;
END; 
/