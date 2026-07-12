output "automation_job_schedules_automation_account_name" {
  description = "Map of automation_account_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.automation_account_name }
}
output "automation_job_schedules_job_schedule_id" {
  description = "Map of job_schedule_id values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.job_schedule_id }
}
output "automation_job_schedules_parameters" {
  description = "Map of parameters values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.parameters }
}
output "automation_job_schedules_resource_group_name" {
  description = "Map of resource_group_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.resource_group_name }
}
output "automation_job_schedules_resource_manager_id" {
  description = "Map of resource_manager_id values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.resource_manager_id }
}
output "automation_job_schedules_run_on" {
  description = "Map of run_on values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.run_on }
}
output "automation_job_schedules_runbook_name" {
  description = "Map of runbook_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.runbook_name }
}
output "automation_job_schedules_schedule_name" {
  description = "Map of schedule_name values across all automation_job_schedules, keyed the same as var.automation_job_schedules"
  value       = { for k, v in azurerm_automation_job_schedule.automation_job_schedules : k => v.schedule_name }
}

