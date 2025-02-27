output "admin_user_arn" {
  value       = aws_iam_user.admin_user.arn
  description = "ARN of the admin user"
}

output "admin_access_key_id" {
  value       = aws_iam_access_key.admin_access_key.id
  description = "Access Key ID of the admin user"
}

output "atlantis_user_arn" {
  value       = aws_iam_user.atlantis_user.arn
  description = "ARN of the Atlantis user"
}

output "atlantis_access_key_id" {
  value       = aws_iam_access_key.atlantis_access_key.id
  description = "Access Key ID of the Atlantis user"
}
