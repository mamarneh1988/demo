
  CREATE OR REPLACE EDITIONABLE TRIGGER "TEXT_INDEX_PENDING" 
    before update on eba_demo_search_products
    for each row
begin
    :new.text_index_column := nvl(to_number(:old.text_index_column)+1, '0');
end;

ALTER TRIGGER "TEXT_INDEX_PENDING" ENABLE