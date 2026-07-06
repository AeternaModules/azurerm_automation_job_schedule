output "automation_job_schedules" {
  description = "All automation_job_schedule resources"
  value       = azurerm_automation_job_schedule.automation_job_schedules
}
output "automation_job_schedules_automation_account_name" {
  description = "List of automation_account_name values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.automation_account_name]
}
output "automation_job_schedules_job_schedule_id" {
  description = "List of job_schedule_id values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.job_schedule_id]
}
output "automation_job_schedules_parameters" {
  description = "List of parameters values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.parameters]
}
output "automation_job_schedules_resource_group_name" {
  description = "List of resource_group_name values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.resource_group_name]
}
output "automation_job_schedules_resource_manager_id" {
  description = "List of resource_manager_id values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.resource_manager_id]
}
output "automation_job_schedules_run_on" {
  description = "List of run_on values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.run_on]
}
output "automation_job_schedules_runbook_name" {
  description = "List of runbook_name values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.runbook_name]
}
output "automation_job_schedules_schedule_name" {
  description = "List of schedule_name values across all automation_job_schedules"
  value       = [for k, v in azurerm_automation_job_schedule.automation_job_schedules : v.schedule_name]
}

