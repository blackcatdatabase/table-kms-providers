-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
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
