output "automation_job_schedules_id" {
  description = "Map of id values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_job_schedules_automation_account_name" {
  description = "Map of automation_account_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_job_schedules_job_schedule_id" {
  description = "Map of job_schedule_id values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.job_schedule_id if v.job_schedule_id != null && length(v.job_schedule_id) > 0 }
}
output "automation_job_schedules_parameters" {
  description = "Map of parameters values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "automation_job_schedules_resource_group_name" {
  description = "Map of resource_group_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automation_job_schedules_resource_manager_id" {
  description = "Map of resource_manager_id values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.resource_manager_id if v.resource_manager_id != null && length(v.resource_manager_id) > 0 }
}
output "automation_job_schedules_run_on" {
  description = "Map of run_on values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.run_on if v.run_on != null && length(v.run_on) > 0 }
}
output "automation_job_schedules_runbook_name" {
  description = "Map of runbook_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.runbook_name if v.runbook_name != null && length(v.runbook_name) > 0 }
}
output "automation_job_schedules_schedule_name" {
  description = "Map of schedule_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.schedule_name if v.schedule_name != null && length(v.schedule_name) > 0 }
}

