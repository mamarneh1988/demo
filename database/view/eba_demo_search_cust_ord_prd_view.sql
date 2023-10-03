CREATE OR REPLACE FORCE EDITIONABLE VIEW "EBA_DEMO_SEARCH_CUST_ORD_PRD" 
 ( "ORDER_ID", "ORDER_STATUS", "ORDER_DATETIME", "CUSTOMER_ID", "EMAIL_ADDRESS", "FULL_NAME", "ORDER_TOTAL", "ITEMS"
  )  AS 
  select o.order_id,
      o.order_status,
      o.order_datetime,
      c.customer_id,
      c.email_address,
      c.full_name,
      sum ( oi.quantity * oi.unit_price ) order_total,
      listagg (p.product_name, ', ' on overflow truncate '...' with count)   
         within group ( order by oi.line_item_id ) items  
from eba_demo_search_orders o  
join eba_demo_search_order_items oi 
  on o.order_id = oi.order_id  
join eba_demo_search_customers c
  on o.customer_id = c.customer_id  
join eba_demo_search_products p
  on oi.product_id = p.product_id
group by o.order_id,
        o.order_datetime,
        o.order_status,
        c.customer_id,
        c.email_address,
        c.full_name
