
  CREATE OR REPLACE EDITIONABLE PACKAGE "EBA_DEMO_SEARCH_TEXT_PKG" authid current_user is
    function text_is_available return boolean;
    
    procedure products_ds_procedure(p_rid  in  rowid,p_tlob in out nocopy varchar2);
    
    procedure create_text_preferences;
    procedure drop_text_preferences;
    procedure create_text_index;
    procedure drop_text_index;
    
    procedure init_oracle_text;
    function convert_text_query( p_enduser_query in varchar2 ) return varchar2;
end eba_demo_search_text_pkg;
