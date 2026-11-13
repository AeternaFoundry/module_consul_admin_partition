output "admin_partitions_id" {
  description = "Map of id values across all admin_partitions, keyed the same as var.admin_partitions"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.id }
}
output "admin_partitions_description" {
  description = "Map of description values across all admin_partitions, keyed the same as var.admin_partitions"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.description }
}
output "admin_partitions_disable_gossip" {
  description = "Map of disable_gossip values across all admin_partitions, keyed the same as var.admin_partitions"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.disable_gossip }
}
output "admin_partitions_name" {
  description = "Map of name values across all admin_partitions, keyed the same as var.admin_partitions"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.name }
}

