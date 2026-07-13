variable "kusto_iothub_data_connections" {
  description = <<EOT
Map of kusto_iothub_data_connections, attributes below
Required:
    - cluster_name
    - consumer_group
    - database_name
    - iothub_id
    - location
    - name
    - resource_group_name
    - shared_access_policy_name
Optional:
    - data_format
    - database_routing_type
    - event_system_properties
    - mapping_rule_name
    - retrieval_start_date
    - table_name
EOT

  type = map(object({
    cluster_name              = string
    consumer_group            = string
    database_name             = string
    iothub_id                 = string
    location                  = string
    name                      = string
    resource_group_name       = string
    shared_access_policy_name = string
    data_format               = optional(string)
    database_routing_type     = optional(string)
    event_system_properties   = optional(set(string))
    mapping_rule_name         = optional(string)
    retrieval_start_date      = optional(string)
    table_name                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        length(v.name) <= 40
      )
    ])
    error_message = "[from validate.DataConnectionName: invalid when len(value) > 40]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        length(v.database_name) <= 260
      )
    ])
    error_message = "[from validate.DatabaseName: invalid when len(value) > 260]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        v.table_name == null || (length(v.table_name) <= 1024)
      )
    ])
    error_message = "[from validate.EntityName: invalid when len(value) > 1024]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        v.mapping_rule_name == null || (length(v.mapping_rule_name) <= 1024)
      )
    ])
    error_message = "[from validate.EntityName: invalid when len(value) > 1024]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_iothub_data_connections : (
        v.event_system_properties == null || (alltrue([for x in v.event_system_properties : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 20 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

