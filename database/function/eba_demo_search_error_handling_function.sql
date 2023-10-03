
  CREATE OR REPLACE EDITIONABLE FUNCTION "EBA_DEMO_SEARCH_ERROR_HANDLING" ( p_error in apex_error.t_error )
    return apex_error.t_error_result
is
    l_result          apex_error.t_error_result;
    l_message varchar2(255);
begin
    l_result := apex_error.init_error_result (
                    p_error => p_error );
                    
    l_message := APEX_ERROR.GET_FIRST_ORA_ERROR_TEXT (p_error,false);
    if p_error.ora_sqlcode = -20999 and l_message like '%401%' then
        l_result.message := 'Incorrect credentials. Please navigate to "Manage Web Credentials" under "Administration" and provide a valid API Key.';
    end if;
    return l_result;
end eba_demo_search_error_handling;
