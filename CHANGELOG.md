# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.1.0] - 2026-10-07

### Added

- Variables `spot_pool_idle_instance_autotermination_minutes` and `warm_pool_idle_instance_autotermination_minutes` (default 10, between 10 and 10080).
- Variables `spot_pool_min_idle_instances` and `warm_pool_min_idle_instances` (default 0, at least 0).
- Defaults keep the previous hard-coded values, so existing consumers are unaffected.

## [2.0.0] - 2024-26-07

### Deleted

- The argument `environment` is not used anymore.

### Added

- Force user to defined Databricks pool configuration removing default values.
| Variable                 | Previous default value for production | Previous default value for non production |
|--------------------------|---------------------------------------|-------------------------------------------|
| `spot_pool_max_capacity` | 60                                    | 16                                        |
| `spot_pool_sku`          | `Standard_DS3_v2`                     | `Standard_DS3_v2`                         |
| `warm_pool_max_capacity` | 60                                    | 16                                        |
| `warm_pool_sku`          | `Standard_DS4_v2`                     | `Standard_DS3_v2`                         |

## [1.0.0] - 2024-10-01

### Added

- Initial Release to open source
