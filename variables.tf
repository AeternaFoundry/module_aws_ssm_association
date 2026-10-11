variable "ssm_associations" {
  description = <<EOT
Map of ssm_associations, attributes below
Required:
    - name
Optional:
    - apply_only_at_cron_interval
    - association_name
    - automation_target_parameter_name
    - calendar_names
    - compliance_severity
    - document_version
    - max_concurrency
    - max_errors
    - parameters
    - region
    - schedule_expression
    - sync_compliance
    - tags
    - tags_all
    - wait_for_success_timeout_seconds
    - output_location (block):
        - s3_bucket_name (required)
        - s3_key_prefix (optional)
        - s3_region (optional)
    - targets (block):
        - key (required)
        - values (required)
EOT

  type = map(object({
    name                             = string
    apply_only_at_cron_interval      = optional(bool)
    association_name                 = optional(string)
    automation_target_parameter_name = optional(string)
    calendar_names                   = optional(set(string))
    compliance_severity              = optional(string)
    document_version                 = optional(string)
    max_concurrency                  = optional(string)
    max_errors                       = optional(string)
    parameters                       = optional(map(string))
    region                           = optional(string)
    schedule_expression              = optional(string)
    sync_compliance                  = optional(string)
    tags                             = optional(map(string))
    tags_all                         = optional(map(string))
    wait_for_success_timeout_seconds = optional(number)
    output_location = optional(object({
      s3_bucket_name = string
      s3_key_prefix  = optional(string)
      s3_region      = optional(string)
    }))
    targets = optional(list(object({
      key    = string
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.targets == null || (length(v.targets) <= 5)
      )
    ])
    error_message = "Each targets list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.association_name == null || ((length(v.association_name) >= 3 && length(v.association_name) <= 128) && (can(regex("^[0-9A-Za-z_.-]{3,128}$", v.association_name))))
      )
    ])
    error_message = "all of: must be between 3 and 128 characters; must contain only alphanumeric, underscore, hyphen, or period characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.automation_target_parameter_name == null || (length(v.automation_target_parameter_name) >= 1 && length(v.automation_target_parameter_name) <= 50)
      )
    ])
    error_message = "must be between 1 and 50 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.document_version == null || (can(regex("^([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)$", v.document_version)))
      )
    ])
    error_message = ""
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.max_concurrency == null || (can(regex("^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$", v.max_concurrency)))
      )
    ])
    error_message = "must be a valid number (e.g. 10) or percentage including the percent sign (e.g. 10%)"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.max_errors == null || (can(regex("^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$", v.max_errors)))
      )
    ])
    error_message = "must be a valid number (e.g. 10) or percentage including the percent sign (e.g. 10%)"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_associations : (
        v.output_location == null || (v.output_location.s3_region == null || (length(v.output_location.s3_region) >= 3 && length(v.output_location.s3_region) <= 20))
      )
    ])
    error_message = "must be between 3 and 20 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

