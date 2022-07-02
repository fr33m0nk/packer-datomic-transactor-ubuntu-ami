# Packer module to build Datomic Transactor Ubuntu (AMD64 & ARM64) AMI

### Input variables
| Module variable            | Description                                                                                                                                                                                                               | Value type | Default value                  |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|--------------------------------|
| `aws_access_key`           | AWS Access key for building and uploading AMI                                                                                                                                                                             | `string`   | `env("AWS_ACCESS_KEY_ID")`     |
| `aws_secret_key`           | AWS Secret access key for building and uploading AMI                                                                                                                                                                      | `string`   | `env("AWS_SECRET_ACCESS_KEY")` |
| `aws_region`               | AWS region for creating new AMI image                                                                                                                                                                                     | `string`   | `env("AWS_REGION")`            |
| `instance_type_amd64`      | AMD64 (or x86_64) instance type to be used for building AMI                                                                                                                                                               | `string`   | `t2.micro`                     |
| `instance_type_arm64`      | ARM64 instance type to be used for building AMI                                                                                                                                                                           | `string`   | `c7g.medium`                   |
| `jdk_version`              | JDK version to set up                                                                                                                                                                                                     | `number`   | `11`                           |
| `datomic_account_user`     | User account at Datomic.com                                                                                                                                                                                               | `string`   | NA                             |
| `datomic_account_password` | User account password at Datomic.com                                                                                                                                                                                      | `string`   | NA                             |
| `datomic_version`          | Datomic version to download and setup                                                                                                                                                                                     | `string`   | NA                             |
| `enable_datadog`           | Install and enable Datadog if `true`                                                                                                                                                                                      | `bool`     | `false`                        |
| `datadog_agent_version`    | Datadog agent version to be installed. [Reference](https://us3.datadoghq.com/account/settings?_gl=1*j2n0rx*_ga*MTg4MDE0MjQyMy4xNjQ3MzM3MTg1*_ga_KN80RDFSQK*MTY0NzUxMTg3Ny40LjEuMTY0NzUxMTg5Mi4w#agent/ubuntu)             | `string`   | `""`                           |
| `datadog_api_key`          | Datadog API key to be used for emitting metrics to [Reference](https://us3.datadoghq.com/account/settings?_gl=1*j2n0rx*_ga*MTg4MDE0MjQyMy4xNjQ3MzM3MTg1*_ga_KN80RDFSQK*MTY0NzUxMTg3Ny40LjEuMTY0NzUxMTg5Mi4w#agent/ubuntu) | `string`   | `""`                           |
| `datadog_site`             | Datadog site to be used for emitting metrics to. [Reference](https://us3.datadoghq.com/account/settings?_gl=1*j2n0rx*_ga*MTg4MDE0MjQyMy4xNjQ3MzM3MTg1*_ga_KN80RDFSQK*MTY0NzUxMTg3Ny40LjEuMTY0NzUxMTg5Mi4w#agent/ubuntu)   | `string`   | `""`                           |

### Sample [values.pkrvars.hcl](./ami_build.values.pkrvars.hcl) for reference

## License
##### Copyright © 2022 Prashant Sinha Distributed under the Eclipse Public License version 1.0.
