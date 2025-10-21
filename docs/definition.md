# Definition – kms_providers

Configured KMS providers.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| name | VARCHAR(100) | NO | — | Display name. |  |
| provider | ENUM('gcp','aws','azure','vault') | NO | — | Provider kind. | enum: gcp, aws, azure, vault |
| location | VARCHAR(100) | YES | — | Region or location. |  |
| project_tenant | VARCHAR(150) | YES | — | Project/tenant id. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| is_enabled | BOOLEAN | NO | TRUE | Whether provider is enabled. |  |
