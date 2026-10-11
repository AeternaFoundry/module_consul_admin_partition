variable "admin_partitions" {
  description = <<EOT
Map of admin_partitions, attributes below
Required:
    - name
Optional:
    - description
    - disable_gossip
EOT

  type = map(object({
    name           = string
    description    = optional(string)
    disable_gossip = optional(bool)
  }))
}

