/*
 * MWD_MATERIALS_PKG is een werkend proof of concept om LOV's binnen een pl/sql package te definieren.
 * Dit zodat niet vele LOV's met bijna gelijke code gedefinieerd hoeven te worden. 
 * Dit creert een single point of reference.
 * Run deze code om de package te creëren. 
 * De aanroep op bijv. pagina 3010 van de APEX applicatie, onder de LOV definitie zou zijn:
 * => RETURN MWD_MATERIALS_PKG.GET_MATERIALS_QUERY;
 */

create or replace package MWD_MATERIALS_PKG as

    function get_materials_query
		return varchar2;
        
end MWD_MATERIALS_PKG;
/ 

create or replace package body MWD_MATERIALS_PKG as

    function get_materials_query
		return varchar2
    is
		v_material_name varchar2(100);
        v_query varchar2(5000);
    begin
		v_query := 'select
						CASE WHEN m.processing_material IS NULL THEN '''' ELSE m.processing_material || '' '' END || 
						CASE WHEN m.processing IS NULL THEN '''' ELSE m.processing || '' '' END || 
						nvl(m.base_material,m.abbreviation) as display,
						m.abbreviation as return
						from MATERIALS m
						order by 1';
        return v_query;
    end get_materials_query;

end MWD_MATERIALS_PKG;
/