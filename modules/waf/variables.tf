variable "policy_file" {
  type        = string
  description = "Path to JSON file for the SNS-topic Policy"
}

variable "waf_rule" {
  type        = string
  description = "Rule of the WAF"
}