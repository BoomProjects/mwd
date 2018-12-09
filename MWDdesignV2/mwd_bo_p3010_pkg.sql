/*
 * MWD_BO_P3010_PKG is the page package for MWD Backoffice application, page 3010: Orders and Order Items.
 * Create a process in page before header, calling as follows:
 * => MWD_BO_P3010_PKG.init_page();
 */

create or replace package MWD_BO_P3010_PKG as

	procedure init_page;
		
end MWD_BO_P3010_PKG;

/ 

create or replace package body MWD_BO_P3010_PKG as

	procedure init_page
	is
      v_domain_name varchar2(100);
	begin
			APEX_UTIL.set_session_state(
				  p_name  => 'P_ORDER_TYPE_LOV'
				, p_value => 'ORDER_TYPE');

	end init_page;
	
end MWD_BO_P3010_PKG;