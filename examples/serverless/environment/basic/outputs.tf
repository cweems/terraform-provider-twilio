output "service" {
  description = "The Generated Serverless Service"
  value       = twilio_serverless_service.service
}

output "environment" {
  description = "The Generated Serverless Environment"
  value       = twilio_serverless_environment.environment
}
