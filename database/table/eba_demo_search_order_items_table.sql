  CREATE TABLE "EBA_DEMO_SEARCH_ORDER_ITEMS" 
   (	"ORDER_ID" NUMBER NOT NULL ENABLE,
	"LINE_ITEM_ID" NUMBER NOT NULL ENABLE,
	"PRODUCT_ID" NUMBER NOT NULL ENABLE,
	"UNIT_PRICE" NUMBER(10,2) NOT NULL ENABLE,
	"QUANTITY" NUMBER NOT NULL ENABLE,
	CONSTRAINT "EBA_DEMO_SEARCH_ORDER_ITEMS_PK" PRIMARY KEY ("ORDER_ID","LINE_ITEM_ID")
  USING INDEX ENABLE,
	CONSTRAINT "EBA_DEMO_SEARCH_ORD_ITEM_PRD_U" UNIQUE ("PRODUCT_ID","ORDER_ID")
  USING INDEX ENABLE,
	CONSTRAINT "EBA_DEMO_SEARCH_ITEM_ORD_ID_FK" FOREIGN KEY ("ORDER_ID")
	 REFERENCES "EBA_DEMO_SEARCH_ORDERS" ("ORDER_ID") ON DELETE CASCADE ENABLE,
	CONSTRAINT "EBA_DEMO_SEARCH_ITEM_PRD_ID_FK" FOREIGN KEY ("PRODUCT_ID")
	 REFERENCES "EBA_DEMO_SEARCH_PRODUCTS" ("PRODUCT_ID") ON DELETE CASCADE ENABLE
   )