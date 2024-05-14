output "topic" {
  description = "The SNS topic that will be notified when a new IAM or SSO user is created or deleted, a user is added or removed from a group, or a group is created or deleted."
  value       = aws_sns_topic.this
}

output "rule" {
  description = "The EventBridge event rule that will be triggered when a new IAM or SSO user is created or deleted, a user is added or removed from a group, or a group is created or deleted."
  value       = module.example.rule
}

output "target" {
  description = "The EventBridge event target for the rule."
  value       = module.example.target
}
