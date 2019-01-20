/*
 * MWD_BO_P2010_PKG is the page package for MWD Backoffice application, page 2010: items and item ingredients.
 * Create a process in page before header, calling as follows:
 * => MWD_BO_P2010_PKG.init_page();
 */

create or replace package MWD_BO_P2010_PKG as

	procedure init_page;
		
end MWD_BO_P2010_PKG;

/ 

create or replace package body MWD_BO_P2010_PKG as

	procedure init_page
	is
      v_domain_name varchar2(100);
	begin
			APEX_UTIL.set_session_state(
				  p_name  => 'P_ITEM_TYPE_LOV'
				, p_value => 'ITEM_TYPE');
			
			APEX_UTIL.set_session_state(
				  p_name  => 'P_ITEM_AVAILABILITY_LOV'
				, p_value => 'ITEM_AVAILABILITY');

			APEX_UTIL.set_session_state(
				  p_name  => 'P_ITEM_SALE_STATUS_LOV'
				, p_value => 'ITEM_SALE_STATUS');
	end init_page;
	
end MWD_BO_P2010_PKG;