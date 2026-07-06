output "kusto_iothub_data_connections" {
  description = "All kusto_iothub_data_connection resources"
  value       = azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections
}
output "kusto_iothub_data_connections_cluster_name" {
  description = "List of cluster_name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.cluster_name]
}
output "kusto_iothub_data_connections_consumer_group" {
  description = "List of consumer_group values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.consumer_group]
}
output "kusto_iothub_data_connections_data_format" {
  description = "List of data_format values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.data_format]
}
output "kusto_iothub_data_connections_database_name" {
  description = "List of database_name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.database_name]
}
output "kusto_iothub_data_connections_database_routing_type" {
  description = "List of database_routing_type values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.database_routing_type]
}
output "kusto_iothub_data_connections_event_system_properties" {
  description = "List of event_system_properties values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.event_system_properties]
}
output "kusto_iothub_data_connections_iothub_id" {
  description = "List of iothub_id values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.iothub_id]
}
output "kusto_iothub_data_connections_location" {
  description = "List of location values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.location]
}
output "kusto_iothub_data_connections_mapping_rule_name" {
  description = "List of mapping_rule_name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.mapping_rule_name]
}
output "kusto_iothub_data_connections_name" {
  description = "List of name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.name]
}
output "kusto_iothub_data_connections_resource_group_name" {
  description = "List of resource_group_name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.resource_group_name]
}
output "kusto_iothub_data_connections_retrieval_start_date" {
  description = "List of retrieval_start_date values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.retrieval_start_date]
}
output "kusto_iothub_data_connections_shared_access_policy_name" {
  description = "List of shared_access_policy_name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.shared_access_policy_name]
}
output "kusto_iothub_data_connections_table_name" {
  description = "List of table_name values across all kusto_iothub_data_connections"
  value       = [for k, v in azurerm_kusto_iothub_data_connection.kusto_iothub_data_connections : v.table_name]
}

