output "admin_partitions_id" {
  description = "Map of id values across all admin_partitions, keyed the same as var.admin_partitions except keys with no id are omitted"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "admin_partitions_description" {
  description = "Map of description values across all admin_partitions, keyed the same as var.admin_partitions except keys with no description are omitted"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "admin_partitions_disable_gossip" {
  description = "Map of disable_gossip values across all admin_partitions, keyed the same as var.admin_partitions except keys with no disable_gossip are omitted"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.disable_gossip if v.disable_gossip != null }
}
output "admin_partitions_name" {
  description = "Map of name values across all admin_partitions, keyed the same as var.admin_partitions except keys with no name are omitted"
  value       = { for k, v in consul_admin_partition.admin_partitions : k => v.name if v.name != null && length(v.name) > 0 }
}

