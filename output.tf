output "pool_spot_id" {
  value = databricks_instance_pool.spot_pool.id
}

output "pool_warm_id" {
  value = databricks_instance_pool.warm_pool.id
}
