-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  kms_providers

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_providers_name ON kms_providers (name);
