variable "databricks_version" {
  type        = string
  description = "The preloaded Databricks version."
}

variable "docker_image_url" {
  type        = string
  description = "The Docker image URL"
}

variable "docker_spn_client_id" {
  type        = string
  description = "The SPN client id for ACR authentication"
}

variable "docker_spn_client_secret" {
  type        = string
  description = "The SPN client secret for ACR authentication"
}

variable "environment" {
  type        = string
  description = "The environment trigram."

  validation {
    condition     = upper(var.environment) == var.environment
    error_message = "The environment must be uppercase."
  }
}

variable "spot_pool_name" {
  type        = string
  description = "The spot pool name."
}

variable "warm_pool_name" {
  type        = string
  description = "The warm pool name."
}
