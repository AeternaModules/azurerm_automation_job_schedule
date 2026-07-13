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
  # --- Unconfirmed validation candidates, derived from azurerm_automation_job_schedule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: automation_account_name
  #   source:    validate.AutomationAccount: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: runbook_name
  #   source:    validate.RunbookName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: schedule_name
  #   source:    validate.ScheduleName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: parameters
  #   source:    [from validate.ParameterNames] k != strings.ToLower(k)
  # path: job_schedule_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

