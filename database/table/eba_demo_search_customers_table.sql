  CREATE TABLE "EBA_DEMO_SEARCH_CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER DEFAULT ON NULL to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') NOT NULL ENABLE,
	"FULL_NAME" VARCHAR2(255) NOT NULL ENABLE,
	"EMAIL_ADDRESS" VARCHAR2(255) NOT NULL ENABLE,
	CONSTRAINT "EBA_DEMO_SEARCH_CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX ENABLE,
	CONSTRAINT "EBA_DEMO_SEARCH_CUST_EMAIL_U" UNIQUE ("EMAIL_ADDRESS")
  USING INDEX ENABLE
   )