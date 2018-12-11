/*
 * MWD_BO_P1010_PKG is the page package for MWD Backoffice application, page 1010: Persons and Location Addresses.
 * Create a process in page before header, calling as follows:
 * => MWD_BO_P1010_PKG.init_page();
 */
	
create or replace package MWD_BO_P1010_PKG as

	procedure init_page;
    
end MWD_BO_P1010_PKG;

/ 

create or replace package body MWD_BO_P1010_PKG as

-- DECLARE PRIVATE SPECIFICATIONS
    procedure fetch_rows;

-- PUBLIC BODY
	procedure init_page
	is
	begin
			APEX_UTIL.set_session_state(
				  p_name  => 'P_PERSON_TYPE_LOV'
				, p_value => 'PERSON_TYPE');
			
			APEX_UTIL.set_session_state(
				  p_name  => 'P_ADDRESS_TYPE_LOV'
				, p_value => 'ADDRESS_TYPE');
                     
            
			fetch_rows();
	end init_page;
	
-- PRIVATE BODY
    procedure fetch_rows
    is
        v_exists            number;
	    v_person_id 		persons.person_id%type;
        v_person_type		persons.person_type%type;
		v_natural_person 	natural_persons%rowtype;
		v_legal_person		legal_persons%rowtype;
		v_location_id		locations.location_id%type;
    begin
		v_person_id := APEX_UTIL.get_session_state('P1010_PERSON_ID');
		
		IF (v_person_id is not null)
			THEN
                 SELECT person_type
					INTO v_person_type
					FROM persons
					WHERE person_id = v_person_id;
                 
				-- Manual Fetch Row Natural Persons or Legal Persons
				IF (v_person_type = 'NATURAL_PERSON')
					THEN
                        SELECT count(*)
                        into v_exists
            			FROM NATURAL_PERSONS 
			            WHERE person_id = v_person_id;
                        
                        if v_exists <> 0
                            then
                                SELECT *
                                INTO v_natural_person
                                FROM NATURAL_PERSONS 
                                WHERE PERSON_ID = v_person_id;

                                APEX_UTIL.set_session_state(
                                    p_name  => 'P1010_FIRST_NAME'
                                  , p_value => v_natural_person.first_name);
                                APEX_UTIL.set_session_state(
                                    p_name  => 'P1010_LAST_NAME'
                                  , p_value => v_natural_person.last_name);
                         end if;
				ELSIF (v_person_type = 'LEGAL_PERSON')
					THEN
						SELECT count(*)
                        into v_exists
   						FROM LEGAL_PERSONS 
               			WHERE person_id = v_person_id;
                        
                        if v_exists <> 0
                            then                            
                                SELECT *
                                INTO v_legal_person
                                FROM LEGAL_PERSONS 
                                WHERE person_id = v_person_id;   

                                APEX_UTIL.set_session_state(
                                    p_name  => 'P1010_LEGAL_NAME'
                                  , p_value => v_legal_person.legal_name);
                                APEX_UTIL.set_session_state(
                                    p_name  => 'P1010_WEBSITE'
                                  , p_value => v_legal_person.website);
                       end if;
                   END IF;
				
			-- Manual Fetch Row Locations		
			SELECT count(*)
            INTO v_exists
            FROM LOCATIONS 
			WHERE person_id = v_person_id;
            
            if v_exists <> 0
                then   
                    SELECT location_id
                    into v_location_id
                    from locations
                    where person_id = v_person_id;

                    APEX_UTIL.set_session_state(
                        p_name  => 'P1010_LOCATION_ID'
                      , p_value => v_location_id);
           end if;
		END IF;
    end fetch_rows;

end MWD_BO_P1010_PKG;