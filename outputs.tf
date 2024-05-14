output "rule" {
  description = "The EventBridge event rule that will be triggered when a new IAM or SSO user is created or deleted, a user is added or removed from a group, or a group is created or deleted."
  value       = aws_cloudwatch_event_rule.this
}

output "target" {
  description = "The EventBridge event target for the rule."
  value       = aws_cloudwatch_event_target.this
}
