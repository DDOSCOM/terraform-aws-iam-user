## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.admin_access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_access_key.atlantis_access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.admin_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user.atlantis_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.admin_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_user_policy.atlantis_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_role_name"></a> [admin\_role\_name](#input\_admin\_role\_name) | The name of the role in the target accounts that the administrator user can assume. | `string` | `""` | no |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | The username for the administrator user in the master account. | `string` | `""` | no |
| <a name="input_atlantis_role_name"></a> [atlantis\_role\_name](#input\_atlantis\_role\_name) | The name of the role in the target accounts that the Atlantis user can assume. | `string` | `""` | no |
| <a name="input_atlantis_username"></a> [atlantis\_username](#input\_atlantis\_username) | The username for the Atlantis user in the master account. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the created resources. | `map(string)` | `{}` | no |
| <a name="input_target_account_ids"></a> [target\_account\_ids](#input\_target\_account\_ids) | A list of target account IDs where roles will be assumed. | `list(string)` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_access_key_id"></a> [admin\_access\_key\_id](#output\_admin\_access\_key\_id) | Access Key ID of the admin user |
| <a name="output_admin_user_arn"></a> [admin\_user\_arn](#output\_admin\_user\_arn) | ARN of the admin user |
| <a name="output_atlantis_access_key_id"></a> [atlantis\_access\_key\_id](#output\_atlantis\_access\_key\_id) | Access Key ID of the Atlantis user |
| <a name="output_atlantis_user_arn"></a> [atlantis\_user\_arn](#output\_atlantis\_user\_arn) | ARN of the Atlantis user |
