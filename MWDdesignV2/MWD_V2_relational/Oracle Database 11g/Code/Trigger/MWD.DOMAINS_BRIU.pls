CREATE OR REPLACE TRIGGER MWD.DOMAINS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.DOMAINS 
    FOR EACH ROW 
DECLARE 
  domn_value_id number; 
  name_count number;
  value_in_list number;
BEGIN 
  if inserting then   
    if :new.domain_value_id is null then 
      select domn_seq.nextval 
        into domn_value_id 
        from dual; 
      :new.domain_value_id := domn_value_id; 
    end if; 

	if :new.sort_order is null then
		select nvl(max(domain_value_id),0)
			into name_count
			from domains
			where domain_name = :new.domain_name;		
		:new.sort_order := name_count + 1;
	end if;

	-- in lieu of check constraint.
	if :new.domain_type is not null then
		select nvl(count(*),0)
			into value_in_list
			from domains
			where domain_name = 'DOMAIN_TYPE'
			and domain_value = :new.domain_type;
		if (value_in_list = 0) then -- treat as if null to assign default.
			:new.domain_type := null;
		end if;
	end if;

	:new.user_created := user;
    :new.date_created := SYSDATE;
    :new.user_modified := user;
    :new.date_modified := SYSDATE;
  elsif updating THEN
    :new.user_modified := user;
    :new.date_modified := SYSDATE;
  end if;

END; 
/