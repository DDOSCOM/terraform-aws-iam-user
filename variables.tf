variable "admin_username" {
  type        = string
  default     = ""
  description = "The username for the administrator user in the master account."
}

variable "atlantis_username" {
  type        = string
  default     = ""
  description = "The username for the Atlantis user in the master account."
}

variable "target_account_ids" {
  type        = list(string)
  default     = []
  description = "A list of target account IDs where roles will be assumed."
}

variable "admin_role_name" {
  type        = string
  default     = ""
  description = "The name of the role in the target accounts that the administrator user can assume."
}

variable "atlantis_role_name" {
  type        = string
  default     = ""
  description = "The name of the role in the target accounts that the Atlantis user can assume."
}

variable "tags" {
  description = "Map of tags to assign to the created resources."
  type        = map(string)
  default     = {}
}
