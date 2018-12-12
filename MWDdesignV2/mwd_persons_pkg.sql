/*
 * MWD_PERSONS_PKG is een proof of concept package voor alle DML operations op Persons. 
 * Dit creert een single point of reference.
 * Run deze code om de package te creëren. 
 * De aanroepin process save zou dan zijn
 * => BEGIN MWD_PERSONS_PKG.insert(P_PERSON => :P_PERSON);
 */

create or replace package MWD_PERSONS_PKG as

    procedure insert(
        p_person in persons%rowtype,
		p_natural_person in persons%rowtype default null,
		p_legal_person in persons%rowtype default null
    );
    
    procedure update(
	    p_person in persons%rowtype,
		p_natural_person in persons%rowtype default null,
		p_legal_person in persons%rowtype default null
	);
	
	procedure delete(
		p_person_id in persons.person_id%type
	);
	
	function get_person_id_by_ak(
		p_email in persons.email%type,
		p_person_type in persons.person_type%type
	) return persons.person_id%type;
        
end MWD_PERSONS_PKG;​

/ 

create or replace package body MWD_PERSONS_PKG as


    procedure insert(
        p_person in persons%rowtype,
		p_natural_person in persons%rowtype default null,
		p_legal_person in persons%rowtype default null
    );
    
    procedure update(
	    p_person in persons%rowtype,
		p_natural_person in persons%rowtype default null,
		p_legal_person in persons%rowtype default null
	);
	
	procedure delete(
		p_person_id in persons.person_id%type
	);
	
	function get_person_id_by_ak(
		p_email in persons.email%type,
		p_person_type in persons.person_type%type
	) return persons.person_id%type;
        

end MWD_PERSONS_PKG;​