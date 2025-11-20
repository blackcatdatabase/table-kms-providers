<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – kms_providers

Configured KMS providers. name is UNIQUE.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(100) | NO | — | Display name (UNIQUE). |  |
| provider | TEXT | NO | — | Provider kind. | enum: gcp, aws, azure, vault |
| location | VARCHAR(100) | YES | — | Region or location. |  |
| project_tenant | VARCHAR(150) | YES | — | Project/tenant id. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| is_enabled | BOOLEAN | NO | TRUE | Whether provider is enabled. |  |