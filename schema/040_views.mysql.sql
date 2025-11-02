-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  kms_providers
-- Contract view for [kms_providers]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_kms_providers AS
SELECT
  id,
  name,
  provider,
  location,
  project_tenant,
  created_at,
  is_enabled
FROM kms_providers;
