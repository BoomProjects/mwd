/*
 * CB - 21/6/2018 - DIT BESTAND NIET TE VERPLAATSEN NAAR DBSERVER!
 * Dit is een werkend conceptvoorbeeld als argument om LOV's binnen een pl/sql package te definieren.
 * Momenteel zijn alle LOV's binnen de apex applicaties gedefinieerd, en zijn er binnen FO en BO meerdere bijna of geheel duplicate LOV's.
 * Dit zou een single point of reference creëren voor alle LOV's van het Bridgemuseum.
 * Momenteel staat deze niet in de dev applicatie. 
 * Run deze code om de package te creëren. 
 * De aanroep op bijv. pagina 3010 van de FO, onder de LOV definitie zou zijn:
 * => RETURN bri_lovs.get_lov_functie_query(:P3010_CATEGORIE_ID);
 */

create or replace package BRI_LOVS as

	function get_lov_functie_query(
		p_categorie_id in number default null
	) return varchar2;
		
end BRI_LOVS;

/ 

create or replace package body BRI_LOVS as

	function get_lov_functie_query(
		p_categorie_id in varchar2 default null
	) return varchar2
	is
      v_category varchar2(100);
			v_query varchar2(5000);
	begin
	    if (p_categorie_id is not null)
			then
				v_category := p_categorie_id;
				v_query := 'select distinct 
								bm_vertaling.get_functie(c2.id) as d,
								c2.id as r
							from bm_categorieen c1
							, 	 bm_categorieen c2
							, 	 bm_collection o
							where c1.id = o.categorie_id
							and c2.id = o.functie_id
							and c1.id = '|| v_category ||'
							order by 1';
		else
				v_query := 'select 
								bm_vertaling.get_functie(id) as d,
								id as r
								from bm_categorieen
								order by 1';
		end if;
			return v_query;
	end get_lov_functie_query;
	
end BRI_LOVS;