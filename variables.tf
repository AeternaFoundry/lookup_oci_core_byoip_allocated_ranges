variable "core_byoip_allocated_ranges_lookup" {
  description = <<EOT
Map of core_byoip_allocated_ranges_lookup, attributes below
Required:
    - byoip_range_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    byoip_range_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

