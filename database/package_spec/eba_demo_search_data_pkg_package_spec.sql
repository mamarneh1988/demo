
  CREATE OR REPLACE EDITIONABLE PACKAGE "EBA_DEMO_SEARCH_DATA_PKG" authid current_user is
    procedure clear_data;
    -- clears all the data in the database tables
    procedure load_data;
    -- loads data into the database tables
    procedure load_product_images(p_app_id in number, p_file_name in varchar2);
    -- loads images into the eba_demo_search_products table
    procedure reset_data;
    -- reset all the data in the database tables
end eba_demo_search_data_pkg;
