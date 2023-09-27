output "topic" {
  value       = aws_sns_topic.this
  description = "The SNS topic that will be notified when a new IAM or SSO user is created."
}

output "rule" {
  value       = module.example.rule
  description = "The EventBridge event rule that will be triggered when a new IAM or SSO user is created."
}

output "target" {
  value       = module.example.target
  description = "The EventBridge event target for the rule."
}
