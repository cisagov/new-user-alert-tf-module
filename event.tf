# ------------------------------------------------------------------------------
# Create an EventBridge event rule for when various IAM or SSO user and group
# events occur.  Connect the event rule to an appropriate SNS topic so that the
# correct folks are notified.
# ------------------------------------------------------------------------------

resource "aws_cloudwatch_event_rule" "this" {
  description = "Capture each time someone creates or deletes an IAM or SSO user, adds or removes a user from a group, or creates or deletes a group."
  event_pattern = jsonencode({
    detail-type = ["AWS API Call via CloudTrail"]
    detail = {
      eventName = [
        "AddUserToGroup",
        "CreateGroup",
        "CreateUser",
        "DeleteGroup",
        "DeleteUser",
        "RemoveUserFromGroup",
      ]
      eventSource = [
        "iam.amazonaws.com",
        "sso-directory.amazonaws.com",
      ],
    }
  })
  name = "capture-user-group-events"
}

resource "aws_cloudwatch_event_target" "this" {
  arn       = var.target_arn
  rule      = aws_cloudwatch_event_rule.this.name
  target_id = "SendToSNS"
}
