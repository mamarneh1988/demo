CREATE OR REPLACE FORCE EDITIONABLE VIEW "EBA_DEMO_SEARCH_PRD_ORDERS" 
 ( "PRODUCT_NAME", "ORDER_STATUS", "TOTAL_SALES", "ORDER_COUNT"
  )  AS 
  select p.product_name,
       o.order_status,
       sum ( oi.quantity * oi.unit_price ) total_sales,
       count (*) order_count 
from eba_demo_search_orders o  
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id  
join eba_demo_search_customers c
  on o.customer_id = c.customer_id  
join eba_demo_search_products p
  on oi.product_id = p.product_id
group by p.product_name  
,        o.order_status
