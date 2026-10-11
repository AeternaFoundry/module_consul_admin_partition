resource "consul_admin_partition" "admin_partitions" {
  for_each = var.admin_partitions

  name           = each.value.name
  description    = each.value.description
  disable_gossip = each.value.disable_gossip
}

