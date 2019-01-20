/*
 * MWD_COLORS_PKG is een werkend proof of concept om LOV's binnen een pl/sql package te definieren.
 * Dit zodat niet vele LOV's met bijna gelijke code gedefinieerd hoeven te worden. 
 * Dit creert een single point of reference.
 * Run deze code om de package te creëren. 
 * De aanroep op bijv. pagina 3010 van de APEX applicatie, onder de LOV definitie zou zijn:
 * => RETURN MWD_COLORS_PKG.GET_COLORS_QUERY;
 */

create or replace package MWD_COLORS_PKG as

    function get_colors_query
		return varchar2;
        
end MWD_COLORS_PKG;
/ 

create or replace package body MWD_COLORS_PKG as

    function get_colors_query
		return varchar2
    is
        v_query varchar2(5000);
    begin
		v_query := 'select 
						nvl(
						CASE WHEN (c.color_type IS NULL OR c.color_type = ''MATTE'') THEN '''' ELSE c.color_type || '' '' END || 
						CASE WHEN (c.tint IS NULL or c.tint = ''NORMAL'') THEN '''' ELSE c.tint || '' '' END ||
						CASE WHEN c.base_color IS NULL THEN '''' ELSE c.base_color || '' '' END ||
						CASE WHEN c.added_color IS NULL THEN '''' ELSE c.added_color || '' '' END,
						c.name) as display,            
						c.name as return
						from COLORS c
						order by 1';
		return v_query;
    end get_colors_query;

end MWD_COLORS_PKG;

/