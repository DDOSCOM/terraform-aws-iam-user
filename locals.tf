locals {
  # ARNs are generated for the roles that each user will be able to assume
  admin_assume_role_arns = [
    for account in var.target_account_ids : "arn:aws:iam::${account}:role/${var.admin_role_name}"
  ]
  atlantis_assume_role_arns = [
    for account in var.target_account_ids : "arn:aws:iam::${account}:role/${var.atlantis_role_name}"
  ]
}
