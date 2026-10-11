data "oci_core_byoip_allocated_ranges" "core_byoip_allocated_ranges_lookup" {
  for_each = var.core_byoip_allocated_ranges_lookup

  byoip_range_id = each.value.byoip_range_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

