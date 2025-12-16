-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  kms_providers

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_providers_name ON kms_providers (name);
