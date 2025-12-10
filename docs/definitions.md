# kms_providers

Configured KMS providers. name is UNIQUE.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(100) | NO |  | Display name (UNIQUE). |
| provider | mysql: ENUM('gcp','aws','azure','vault') / postgres: TEXT | NO |  | Provider kind. (enum: gcp, aws, azure, vault) |
| location | VARCHAR(100) | YES |  | Region or location. |
| project_tenant | VARCHAR(150) | YES |  | Project/tenant id. |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| is_enabled | BOOLEAN | NO | TRUE | Whether provider is enabled. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_kms_providers_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_kms_providers_name | name | CREATE UNIQUE INDEX ux_kms_providers_name ON kms_providers (name) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_kms_providers_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_kms_providers_name | name | CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_providers_name ON kms_providers (name) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_kms_providers | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_kms_providers | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
