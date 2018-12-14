/*
 * MWD_COLORS_PKG is een werkend proof of concept om LOV's binnen een pl/sql package te definieren.
 * Dit zodat niet vele LOV's met bijna gelijke code gedefinieerd hoeven te worden. 
 * Dit creert een single point of reference.
 * Run deze code om de package te creëren. 
 * De aanroep op bijv. pagina 3010 van de APEX applicatie, onder de LOV definitie zou zijn:
 * => RETURN MWD_COLORS_PKG.get_domain_values_query(P_DOMAIN_NAME => :P_DOMAIN_NAME_LOV);
 */

create or replace package MWD_COLORS_PKG as

    function get_domain_values_query(
        p_domain_name in varchar2 default null
    ) return varchar2;
    
    function get_boolean_labels_query
      return varchar2;
        
end MWD_COLORS_PKG;​

/ 

create or replace package body MWD_COLORS_PKG as

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
                                d.domain_value as return
                                from COLORS d
                                where d.domain_name = '''|| UPPER(v_domain_name) ||'''
                                order by 1';
        else
                v_query := 'select 
                                d.domain_value as display,
                                d.domain_value as return
                                from COLORS d
                                order by 1';
        end if;
            return v_query;
    end get_domain_values_query;
	
	function get_boolean_labels_query
		return varchar2
    is
            v_query varchar2(5000);
    begin	
        v_query := 'select 
						d.domain_value as display,
						CASE 
							WHEN d.domain_value = ''TRUE''
								THEN ''Y''
							WHEN d.domain_value = ''FALSE''
								THEN ''N''
						END as return
						from COLORS d
						where d.domain_name = ''BOOLEAN_LABEL''
						order by 1';
        return v_query;
    end get_boolean_labels_query;

end MWD_COLORS_PKG;​