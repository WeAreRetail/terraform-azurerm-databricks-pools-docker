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

variable "spot_pool_max_capacity" {
  type        = number
  description = "The maximum number of instances the pool can contain for the spot pool."
}

variable "spot_pool_name" {
  type        = string
  description = "The spot pool name."
}

variable "spot_pool_sku" {
  type        = string
  description = "The spot pool SKU (ex: Standard_DS3_v2)."
}

variable "warm_pool_max_capacity" {
  type        = number
  description = "The maximum number of instances the pool can contain for the warm pool."
}

variable "warm_pool_name" {
  type        = string
  description = "The warm pool name."
}

variable "warm_pool_sku" {
  type        = string
  description = "The warm pool SKU (ex: Standard_DS3_v2)."
}
