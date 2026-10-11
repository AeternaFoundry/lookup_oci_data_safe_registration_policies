data "oci_data_safe_registration_policies" "data_safe_registration_policies_lookup" {
  for_each = var.data_safe_registration_policies_lookup

  compartment_id                        = each.value.compartment_id
  access_level                          = each.value.access_level
  compartment_id_in_subtree             = each.value.compartment_id_in_subtree
  connection_id                         = each.value.connection_id
  connection_type                       = each.value.connection_type
  display_name                          = each.value.display_name
  enablement_level                      = each.value.enablement_level
  registration_policy_id                = each.value.registration_policy_id
  resource_id                           = each.value.resource_id
  state                                 = each.value.state
  time_created_greater_than_or_equal_to = each.value.time_created_greater_than_or_equal_to
  time_created_less_than                = each.value.time_created_less_than

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

