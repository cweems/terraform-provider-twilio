output "workspace" {
  description = "The Generated TaskRouter Workspace"
  value       = twilio_taskrouter_workspace.workspace
}

output "activity" {
  description = "The Generated TaskRouter Activity"
  value       = twilio_taskrouter_activity.activity
}
