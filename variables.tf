# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "target_arn" {
  description = "The ARN of a target (usually an SNS topic) that should be notified when someone creates or deletes an IAM or SSO user, adds or removes a user from a group, or creates or deletes a group (e.g. arn:aws:sns:us-east-1:012345678901:my-sns-topic)."
  type        = string
}
