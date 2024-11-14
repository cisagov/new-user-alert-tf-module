# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "target_arn" {
  description = "The ARN of a target (usually an SNS topic) that should be notified when a new IAM or SSO user is created or deleted, a user is added or removed from a group, or a group is created or deleted (e.g. arn:aws:sns:us-east-1:012345678901:my-sns-topic)."
  nullable    = false
  type        = string
}
