/*
 * MWD_BO_P2110_PKG is the page package for MWD Backoffice application, page 2110: ingredients and item_ingredients.
 * Create a process in page before header, calling as follows:
 * => MWD_BO_P2110_PKG.init_page();
 */

create or replace package MWD_BO_P2110_PKG as

	procedure init_page;
		
end MWD_BO_P2110_PKG;

/ 

create or replace package body MWD_BO_P2110_PKG as

	procedure init_page
	is
      v_domain_name varchar2(100);
	begin
			APEX_UTIL.set_session_state(
				  p_name  => 'P_INGREDIENT_TYPE_LOV'
				, p_value => 'INGREDIENT_TYPE');
			
--			APEX_UTIL.set_session_state(
--				  p_name  => 'P_MATERIAL_LOV'
--				, p_value => 'MATERIAL');

--			APEX_UTIL.set_session_state(
--				  p_name  => 'P_COLOR_LOV'
--				, p_value => 'COLOR');
	end init_page;
	
end MWD_BO_P2110_PKG;