-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  kms_providers

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_providers_name ON kms_providers (name);
