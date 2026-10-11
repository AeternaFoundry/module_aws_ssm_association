output "ssm_associations_id" {
  description = "Map of id values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_associations_apply_only_at_cron_interval" {
  description = "Map of apply_only_at_cron_interval values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.apply_only_at_cron_interval if v.apply_only_at_cron_interval != null }
}
output "ssm_associations_arn" {
  description = "Map of arn values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ssm_associations_association_id" {
  description = "Map of association_id values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.association_id if v.association_id != null && length(v.association_id) > 0 }
}
output "ssm_associations_association_name" {
  description = "Map of association_name values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.association_name if v.association_name != null && length(v.association_name) > 0 }
}
output "ssm_associations_automation_target_parameter_name" {
  description = "Map of automation_target_parameter_name values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.automation_target_parameter_name if v.automation_target_parameter_name != null && length(v.automation_target_parameter_name) > 0 }
}
output "ssm_associations_calendar_names" {
  description = "Map of calendar_names values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.calendar_names if v.calendar_names != null && length(v.calendar_names) > 0 }
}
output "ssm_associations_compliance_severity" {
  description = "Map of compliance_severity values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.compliance_severity if v.compliance_severity != null && length(v.compliance_severity) > 0 }
}
output "ssm_associations_document_version" {
  description = "Map of document_version values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.document_version if v.document_version != null && length(v.document_version) > 0 }
}
output "ssm_associations_max_concurrency" {
  description = "Map of max_concurrency values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.max_concurrency if v.max_concurrency != null && length(v.max_concurrency) > 0 }
}
output "ssm_associations_max_errors" {
  description = "Map of max_errors values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.max_errors if v.max_errors != null && length(v.max_errors) > 0 }
}
output "ssm_associations_name" {
  description = "Map of name values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssm_associations_output_location" {
  description = "Map of output_location values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => one(v.output_location) if v.output_location != null && length(v.output_location) > 0 }
}
output "ssm_associations_parameters" {
  description = "Map of parameters values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "ssm_associations_region" {
  description = "Map of region values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssm_associations_schedule_expression" {
  description = "Map of schedule_expression values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.schedule_expression if v.schedule_expression != null && length(v.schedule_expression) > 0 }
}
output "ssm_associations_sync_compliance" {
  description = "Map of sync_compliance values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.sync_compliance if v.sync_compliance != null && length(v.sync_compliance) > 0 }
}
output "ssm_associations_tags" {
  description = "Map of tags values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ssm_associations_tags_all" {
  description = "Map of tags_all values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ssm_associations_targets" {
  description = "Map of targets values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.targets if v.targets != null && length(v.targets) > 0 }
}
output "ssm_associations_wait_for_success_timeout_seconds" {
  description = "Map of wait_for_success_timeout_seconds values across all ssm_associations, keyed the same as var.ssm_associations"
  value       = { for k, v in aws_ssm_association.ssm_associations : k => v.wait_for_success_timeout_seconds if v.wait_for_success_timeout_seconds != null }
}

