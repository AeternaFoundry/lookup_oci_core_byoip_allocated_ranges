output "core_byoip_allocated_ranges_lookup_id" {
  description = "Map of id values across all core_byoip_allocated_ranges_lookup, keyed the same as var.core_byoip_allocated_ranges_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_byoip_allocated_ranges.core_byoip_allocated_ranges_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_byoip_allocated_ranges_lookup_byoip_allocated_range_collection" {
  description = "Map of byoip_allocated_range_collection values across all core_byoip_allocated_ranges_lookup, keyed the same as var.core_byoip_allocated_ranges_lookup except keys with no byoip_allocated_range_collection are omitted"
  value       = { for k, v in data.oci_core_byoip_allocated_ranges.core_byoip_allocated_ranges_lookup : k => v.byoip_allocated_range_collection if v.byoip_allocated_range_collection != null && length(v.byoip_allocated_range_collection) > 0 }
}
output "core_byoip_allocated_ranges_lookup_byoip_range_id" {
  description = "Map of byoip_range_id values across all core_byoip_allocated_ranges_lookup, keyed the same as var.core_byoip_allocated_ranges_lookup except keys with no byoip_range_id are omitted"
  value       = { for k, v in data.oci_core_byoip_allocated_ranges.core_byoip_allocated_ranges_lookup : k => v.byoip_range_id if v.byoip_range_id != null && length(v.byoip_range_id) > 0 }
}
output "core_byoip_allocated_ranges_lookup_filter" {
  description = "Map of filter values across all core_byoip_allocated_ranges_lookup, keyed the same as var.core_byoip_allocated_ranges_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_byoip_allocated_ranges.core_byoip_allocated_ranges_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

