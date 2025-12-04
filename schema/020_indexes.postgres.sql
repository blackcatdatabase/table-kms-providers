-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  kms_providers

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_providers_name ON kms_providers (name);
