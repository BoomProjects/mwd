CREATE OR REPLACE TRIGGER MWD.WEAVES_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.WEAVES 
    FOR EACH ROW 
DECLARE 
  weav_id number; 
  value_in_list number;
BEGIN 
  if inserting then   
    if :new.weave_id is null then 
      select weav_seq.nextval 
        into weav_id 
        from dual; 
      :new.weave_id := weav_id; 
    end if; 
  end if; 

  	-- in lieu of check constraint.
	if :new.complexity is not null then
		select nvl(count(*),0)
			into value_in_list
			from domains
			where domain_name = 'WEAVE_COMPLEXITY'
			and active = 'Y';
		if (value_in_list = 0) then
			:new.complexity := null;
		end if;
	end if;

END; 
/