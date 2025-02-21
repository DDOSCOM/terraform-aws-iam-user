# Creation of the admin user
resource "aws_iam_user" "admin_user" {
  name          = var.admin_username
  force_destroy = true
  # tags          = var.tags
}

# Inline policy for the admin user that includes deployment permissions and role assumption
resource "aws_iam_user_policy" "admin_policy" {
  name   = "${var.admin_username}-policy"
  user   = aws_iam_user.admin_user.name
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "AllowDeployAccess",
        "Effect": "Allow",
        "Action": [
          "s3:*",
          "lambda:*",
          "cognito-idp:*",         
          "cognito-sync:*",       
          "cognito-identity:*",   
          "cloudwatch:*",
          "logs:*",
          "iam:*",
          "ec2:*"
        ],
        "Resource": "*"
      },
      {
        "Sid": "AllowAssumeRole",
        "Effect": "Allow",
        "Action": "sts:AssumeRole",
        "Resource": local.admin_assume_role_arns
      }
    ]
  })
}

# Generation of access credentials for the admin user
resource "aws_iam_access_key" "admin_access_key" {
  user = aws_iam_user.admin_user.name
}

# Creation of the Atlantis user
resource "aws_iam_user" "atlantis_user" {
  name          = var.atlantis_username
  force_destroy = true
  # tags          = var.tags
}

# Inline policy for the Atlantis user that includes deployment permissions and role assumption
resource "aws_iam_user_policy" "atlantis_policy" {
  name   = "${var.atlantis_username}-policy"
  user   = aws_iam_user.atlantis_user.name
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "AllowDeployAccess",
        "Effect": "Allow",
        "Action": [
          "s3:*",
          "lambda:*",
          "cognito-idp:*",
          "cognito-sync:*",
          "cognito-identity:*",
          "cloudwatch:*",
          "logs:*",
          "iam:*",
          "ec2:*"
        ],
        "Resource": "*"
      },
      {
        "Sid": "AllowAssumeRole",
        "Effect": "Allow",
        "Action": "sts:AssumeRole",
        "Resource": local.atlantis_assume_role_arns
      }
    ]
  })
}

# Generation of access credentials for the Atlantis user
resource "aws_iam_access_key" "atlantis_access_key" {
  user = aws_iam_user.atlantis_user.name
}
