-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  kms_providers

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_providers_name ON kms_providers (name);
