variable "automation_job_schedules" {
  description = <<EOT
Map of automation_job_schedules, attributes below
Required:
    - automation_account_name
    - resource_group_name
    - runbook_name
    - schedule_name
Optional:
    - job_schedule_id
    - parameters
    - run_on
EOT

  type = map(object({
    automation_account_name = string
    resource_group_name     = string
    runbook_name            = string
    schedule_name           = string
    job_schedule_id         = optional(string)
    parameters              = optional(map(string))
    run_on                  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_job_schedules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_job_schedules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_job_schedules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_job_schedules : (
        v.job_schedule_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.job_schedule_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

