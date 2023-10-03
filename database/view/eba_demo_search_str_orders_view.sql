CREATE OR REPLACE FORCE EDITIONABLE VIEW "EBA_DEMO_SEARCH_STR_ORDERS" 
 ( "TOTAL", "STORE_NAME", "ADDRESS", "LATITUDE", "LONGITUDE", "ORDER_STATUS", "ORDER_COUNT", "TOTAL_SALES"
  )  AS 
  select case  
         grouping_id ( store_name, order_status )  
           when 1 then 'STORE TOTAL'  
           when 2 then 'STATUS TOTAL'  
           when 3 then 'GRAND TOTAL'  
       end total,
	         s.store_name,
	         coalesce ( s.web_address, s.physical_address ) address,
	         s.latitude,
	         s.longitude,
	         o.order_status,
	         count ( distinct o.order_id ) order_count,
	         sum ( oi.quantity * oi.unit_price ) total_sales  
from eba_demo_search_stores s  
join eba_demo_search_orders o 
  on s.store_id = o.store_id 
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id 
group by grouping sets (  (s.store_name, coalesce(s.web_address,s.physical_address), s.latitude, s.longitude) ,
							 (s.store_name, coalesce(s.web_address,s.physical_address), s.latitude, s.longitude, o.order_status),
							  o.order_status ,
							 ()  
                       )
