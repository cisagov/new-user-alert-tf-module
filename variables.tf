# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "target_arn" {
  type        = string
  description = "The ARN of a target (usually an SNS topic) that should be notified when certain IAM/SSO user or group events occur (e.g. arn:aws:sns:us-east-1:012345678901:my-sns-topic)."
}
