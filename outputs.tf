output "rule" {
  value       = aws_cloudwatch_event_rule.this
  description = "The EventBridge event rule that will be triggered when a new IAM or SSO user is created."
}

output "target" {
  value       = aws_cloudwatch_event_target.this
  description = "The EventBridge event target for the rule."
}
