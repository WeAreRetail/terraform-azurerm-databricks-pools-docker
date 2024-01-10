locals {
  production = var.environment == "PRD" || var.environment == "PRE"
}

resource "databricks_instance_pool" "spot_pool" {
  instance_pool_name = var.spot_pool_name
  min_idle_instances = 0
  max_capacity       = local.production ? 60 : 16
  node_type_id       = "Standard_DS3_v2"

  preloaded_docker_image {
    url = var.docker_image_url
    basic_auth {
      username = var.docker_spn_client_id
      password = var.docker_spn_client_secret
    }
  }

  azure_attributes {
    availability       = "SPOT_AZURE"
    spot_bid_max_price = -1
  }

  idle_instance_autotermination_minutes = 10
  preloaded_spark_versions              = [var.databricks_version]
  custom_tags = {
    "D_CATEGORY" = "backfill"
  }
}

resource "databricks_instance_pool" "warm_pool" {
  instance_pool_name = var.warm_pool_name
  min_idle_instances = 0
  max_capacity       = local.production ? 60 : 16
  node_type_id       = local.production ? "Standard_DS4_v2" : "Standard_DS3_v2"

  preloaded_docker_image {
    url = var.docker_image_url
    basic_auth {
      username = var.docker_spn_client_id
      password = var.docker_spn_client_secret
    }
  }

  azure_attributes {
    availability       = "ON_DEMAND_AZURE"
    spot_bid_max_price = 0
  }
  idle_instance_autotermination_minutes = 10
  preloaded_spark_versions              = [var.databricks_version]
  custom_tags = {
    "D_CATEGORY" = "live"
  }
}
