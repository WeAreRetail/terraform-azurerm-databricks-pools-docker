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

variable "spot_pool_idle_instance_autotermination_minutes" {
  type        = number
  description = "Minutes an idle instance of the spot pool is kept before termination (10 to 10080). Idle spot instances cost VM time only, no DBU."
  default     = 10

  validation {
    condition     = var.spot_pool_idle_instance_autotermination_minutes >= 10 && var.spot_pool_idle_instance_autotermination_minutes <= 10080
    error_message = "spot_pool_idle_instance_autotermination_minutes must be between 10 and 10080."
  }
}

variable "spot_pool_min_idle_instances" {
  type        = number
  description = "Number of instances of the spot pool kept idle (warm) at all times. Must be >= 0."
  default     = 0

  validation {
    condition     = var.spot_pool_min_idle_instances >= 0
    error_message = "spot_pool_min_idle_instances must be >= 0."
  }
}

variable "warm_pool_idle_instance_autotermination_minutes" {
  type        = number
  description = "Minutes an idle instance of the warm pool is kept before termination (10 to 10080). Idle on-demand instances cost VM time only, no DBU."
  default     = 10

  validation {
    condition     = var.warm_pool_idle_instance_autotermination_minutes >= 10 && var.warm_pool_idle_instance_autotermination_minutes <= 10080
    error_message = "warm_pool_idle_instance_autotermination_minutes must be between 10 and 10080."
  }
}

variable "warm_pool_min_idle_instances" {
  type        = number
  description = "Number of instances of the warm pool kept idle (warm) at all times. Must be >= 0."
  default     = 0

  validation {
    condition     = var.warm_pool_min_idle_instances >= 0
    error_message = "warm_pool_min_idle_instances must be >= 0."
  }
}
