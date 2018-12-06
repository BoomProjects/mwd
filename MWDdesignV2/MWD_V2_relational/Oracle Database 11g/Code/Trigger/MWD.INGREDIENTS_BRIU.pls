CREATE OR REPLACE TRIGGER MWD.INGREDIENTS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.INGREDIENTS 
    FOR EACH ROW 
DECLARE 
  ingr_id number;
  value_in_col_list number;
  value_in_mat_list number;
  value_in_cat_list number;
  value_in_ava_list number;
  value_in_sal_list number;
  cat_id number;
  is_active char(1);
  default_subcat varchar2(30) := 'OTHER';
BEGIN 

	-- IN LIEU OF CHECK CONSTRAINTS
	if :new.material is not null then
		select nvl(count(*),0)
			into value_in_mat_list
			from domains
			where domain_name = 'ITEM_MATERIAL'
			and active = 'Y'
			and domain_value = :new.material;

			if (value_in_mat_list = 0) then -- treat as if null to assign default.
				:new.material := null;
			end if;
	end if;

	if :new.color is not null then
		select nvl(count(*),0)
			into value_in_col_list
			from domains
			where domain_name = 'ITEM_COLOR'
			and active = 'Y'
			and domain_value = :new.color;

			if (value_in_col_list = 0) then -- treat as if null to assign default.
				:new.color := null;
			end if;
	end if;

  	if :new.ingredient_type is not null then
		select domain_value_id, active 
			into cat_id, is_active
			from domains 
			where domain_name = 'INGREDIENT_CATEGORY'
			and domain_value = :new.ingredient_type;

		if (is_active = 'Y') then
			select domain_value
			into default_subcat
			from domains
			group by domain_value
			having sort_order = min(sort_order)  -- take lowest sequence value in domain.
			and domain_name = 'INGREDIENT_SUBCATEGORY'
			and active = 'Y'
			and parent_domain_value_id = cat_id;

		else -- if category <> active, treat as null.
			:new.ingredient_type := null;
		end if;
	end if;

    IF :NEW.WIRE_DIAMETER_MM IS NOT NULL THEN
		SELECT A1.AWG
		INTO :NEW.WIRE_DIAMETER_AWG
		FROM AMERICAN_WIRE_GAUGE A1
		, AMERICAN_WIRE_GAUGE A2
		WHERE :new.wire_diameter_mm 
			BETWEEN A1.DIAMETER_MM AND A2.DIAMETER_MM;

		SELECT S1.SWG
		INTO :NEW.WIRE_DIAMETER_SWG
		FROM STANDARD_WIRE_GAUGE S1
		, STANDARD_WIRE_GAUGE S2
		WHERE :new.wire_diameter_mm 
			BETWEEN S1.DIAMETER_MM AND S2.DIAMETER_MM;

		IF :NEW.INNER_DIAMETER_MM IS NOT NULL THEN
			:NEW.ASPECT_RATIO := :new.inner_diameter_mm / :new.wire_diameter_mm;
			if :new.outer_diameter_mm is not null then
				:NEW.OUTER_DIAMETER_MM := (:new.wire_diameter_mm * 2) + :new.inner_diameter_mm;
			end if;
		END IF;
	END IF;
END; 
/