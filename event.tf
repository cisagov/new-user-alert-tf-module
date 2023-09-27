# ------------------------------------------------------------------------------
# Create a EventBridge event rule for when an IAM or SSO user is
# created.  Connect the event rule to an appropriate SNS topic so that the
# correct folks are notified.
# ------------------------------------------------------------------------------

resource "aws_cloudwatch_event_rule" "this" {
  description = "Capture each time someone creates an IAM or SSO user."
  event_pattern = jsonencode({
    detail-type = ["AWS API Call via CloudTrail"]
    detail = {
      eventName = ["CreateUser"]
      eventSource = [
        "iam.amazonaws.com",
        "sso-directory.amazonaws.com",
      ],
    }
  })
  name = "capture-create-user"
}

resource "aws_cloudwatch_event_target" "this" {
  arn       = var.target_arn
  rule      = aws_cloudwatch_event_rule.this.name
  target_id = "SendToSNS"
}
