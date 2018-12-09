/*
 * MWD_DOMAINS_PKG is een werkend proof of concept om LOV's binnen een pl/sql package te definieren.
 * Dit zodat niet vele LOV's met bijna gelijke code gedefinieerd hoeven te worden. 
 * Dit creert een single point of reference.
 * Run deze code om de package te creëren. 
 * De aanroep op bijv. pagina 3010 van de APEX applicatie, onder de LOV definitie zou zijn:
 * => RETURN MWD_DOMAINS_PKG.get_domain_values_query(P_DOMAIN_NAME => :P_DOMAIN_NAME_LOV);
 */

create or replace package MWD_DOMAINS_PKG as

	function get_domain_values_query(
		p_domain_name in varchar2 default null
	) return varchar2;
		
end MWD_DOMAINS_PKG;

/ 

create or replace package body MWD_DOMAINS_PKG as

	function get_domain_values_query(
		p_domain_name in varchar2 default null
	) return varchar2
	is
      v_domain_name varchar2(100);
			v_query varchar2(5000);
	begin
	    if (p_domain_name is not null)
			then
				v_domain_name := p_domain_name;
				v_query := 'select 
								d.domain_value as display,
								d.domain_value_id as return
								from domains d
								where d.domain_name = '|| v_domain_name ||'
								order by 1';
		else
				v_query := 'select 
								domain_value as display,
								domain_value_id as return
								from domains
								order by 1';
		end if;
			return v_query;
	end get_domain_values_query;
	
end MWD_DOMAINS_PKG;