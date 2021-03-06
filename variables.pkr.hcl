variable "aws_access_key" {
  type        = string
  description = "AWS access key for creating new AMI image"
  default     = env("AWS_ACCESS_KEY_ID")
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key for creating new AMI image"
  default     = env("AWS_SECRET_ACCESS_KEY")
}

variable "aws_region" {
  type        = string
  description = "AWS region for creating new AMI image"
  default     = env("AWS_REGION")
}

variable "instance_type_amd64" {
  description = "AMD64 (or x86_64) instance type to be used for building AMI"
  type        = string
  default     = "t2.micro"
}

variable "instance_type_arm64" {
  description = "ARM64 instance type to be used for building AMI"
  type        = string
  default     = "c7g.medium"
}

variable "jdk_version" {
  description = "JDK version to set up"
  type        = number
  default     = 11
}

variable "datomic_account_password" {
  description = "User account password at Datomic.com"
  type        = string
}

variable "datomic_account_user" {
  description = "User account at Datomic.com"
  type        = string
}

variable "datomic_version" {
  description = "Datomic version to download and setup"
  type        = string
}

variable "enable_datadog" {
  description = "Install and enable Datadog if true"
  type        = bool
  default     = false
}

variable "datadog_agent_version" {
  description = "Datadog agent version to be installed. Reference: https://us3.datadoghq.com/account/settings?_gl=1*j2n0rx*_ga*MTg4MDE0MjQyMy4xNjQ3MzM3MTg1*_ga_KN80RDFSQK*MTY0NzUxMTg3Ny40LjEuMTY0NzUxMTg5Mi4w#agent/ubuntu"
  type        = string
  default     = ""
}

variable "datadog_api_key" {
  description = "Datadog API key to be used for emitting metrics to. Reference: https://us3.datadoghq.com/account/settings?_gl=1*j2n0rx*_ga*MTg4MDE0MjQyMy4xNjQ3MzM3MTg1*_ga_KN80RDFSQK*MTY0NzUxMTg3Ny40LjEuMTY0NzUxMTg5Mi4w#agent/ubuntu"
  type        = string
  default     = ""
}

variable "datadog_site" {
  type        = string
  description = "Datadog site to be used for emitting metrics to. Reference: https://us3.datadoghq.com/account/settings?_gl=1*j2n0rx*_ga*MTg4MDE0MjQyMy4xNjQ3MzM3MTg1*_ga_KN80RDFSQK*MTY0NzUxMTg3Ny40LjEuMTY0NzUxMTg5Mi4w#agent/ubuntu"
  default     = ""
}

variable "datomic_custom_metric_callback_library_url" {
  type        = string
  description = "Custom metric callback library download URL e.g. https://repo.clojars.org/net/clojars/fr33m0nk/datomic-datadog-reporter/1.1.5/datomic-datadog-reporter-1.1.5.jar"
  default     = null
}

variable "datomic_logstash_encoder_library_url" {
  type        = string
  description = "Logstash encode library download URL e.g. https://repo1.maven.org/maven2/net/logstash/logback/logstash-logback-encoder/7.0.1/logstash-logback-encoder-7.0.1.jar"
  default     = "https://repo1.maven.org/maven2/net/logstash/logback/logstash-logback-encoder/7.0.1/logstash-logback-encoder-7.0.1.jar"
}
