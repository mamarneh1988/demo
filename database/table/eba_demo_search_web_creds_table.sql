  CREATE TABLE "EBA_DEMO_SEARCH_WEB_CREDS" 
   (	"CREDENTIAL_STATIC_ID" VARCHAR2(50) NOT NULL ENABLE,
	UNIQUE ("CREDENTIAL_STATIC_ID")
  USING INDEX ENABLE
   )