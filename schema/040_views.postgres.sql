-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  kms_providers

-- Contract view for [kms_providers]
CREATE OR REPLACE VIEW vw_kms_providers AS
SELECT
  id,
  name,
  provider,
  location,
  project_tenant,
  created_at,
  is_enabled
FROM kms_providers;
