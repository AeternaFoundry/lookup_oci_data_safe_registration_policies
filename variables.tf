variable "data_safe_registration_policies_lookup" {
  description = <<EOT
Map of data_safe_registration_policies_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - connection_id
    - connection_type
    - display_name
    - enablement_level
    - registration_policy_id
    - resource_id
    - state
    - time_created_greater_than_or_equal_to
    - time_created_less_than
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                        = string
    access_level                          = optional(string)
    compartment_id_in_subtree             = optional(bool)
    connection_id                         = optional(string)
    connection_type                       = optional(string)
    display_name                          = optional(string)
    enablement_level                      = optional(string)
    registration_policy_id                = optional(string)
    resource_id                           = optional(string)
    state                                 = optional(string)
    time_created_greater_than_or_equal_to = optional(string)
    time_created_less_than                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

