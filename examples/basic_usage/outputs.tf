output "topic" {
  description = "The SNS topic that will be notified when a new IAM or SSO user is created."
  value       = aws_sns_topic.this
}

output "rule" {
  description = "The EventBridge event rule that will be triggered when a new IAM or SSO user is created."
  value       = module.example.rule
}

output "target" {
  description = "The EventBridge event target for the rule."
  value       = module.example.target
}
