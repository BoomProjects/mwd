CREATE OR REPLACE TRIGGER MWD.NATURAL_PERSONS_BRIU 
    BEFORE INSERT OR UPDATE ON MWD.NATURAL_PERSONS 
    FOR EACH ROW 
BEGIN 
  if inserting then   
	if (:new.first_name is null 
		OR :new.first_name = 'ANONYMOUS')
		AND :new.last_name is null
		then
			select d1.domain_value, d2.domain_value
			into :new.first_name, :new.last_name
			from domains d1 , domains d2
			where d1.domain_name = 'DEFAULT_CUST_FN'
			and d2.domain_name = 'DEFAULT_CUST_LN'
			;
	end if;
  end if; 
END; 
/