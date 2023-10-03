CREATE OR REPLACE FORCE EDITIONABLE VIEW "EBA_DEMO_SEARCH_PRD_REVIEWS" 
 ( "PRODUCT_NAME", "RATING", "AVG_RATING", "REVIEW"
  )  AS 
  select p.product_name,
       r.rating,
       round (avg (r.rating) over (partition by product_name), 2) avg_rating,
       r.review
from eba_demo_search_products p,
    json_table  
       (p.product_details, '$.reviews[*]'  
        columns (
            rating number path '$.rating',
            review varchar2(4000) path '$.review')  
       ) r
