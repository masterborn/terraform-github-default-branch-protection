# Github default branch protection

<!-- START_OF_AUTO_GENERATED_SECTION -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_github"></a> [github](#requirement\_github) | < 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | < 5.0 |
## Resources

| Name | Type |
|------|------|
| [github_branch_protection.develop](https://registry.terraform.io/providers/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.main](https://registry.terraform.io/providers/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.master](https://registry.terraform.io/providers/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.stage](https://registry.terraform.io/providers/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.staging](https://registry.terraform.io/providers/github/latest/docs/resources/branch_protection) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | n/a | `string` | n/a | yes |
| <a name="input_develop_context"></a> [develop\_context](#input\_develop\_context) | The list of status checks to require in order to merge into develop. Default: no checks. | `list(string)` | `[]` | no |
| <a name="input_stage_context"></a> [stage\_context](#input\_stage\_context) | The list of status checks to require in order to merge into stage. Default: no checks. | `list(string)` | `[]` | no |
| <a name="input_master_context"></a> [master\_context](#input\_master\_context) | The list of status checks to require in order to merge into master. Default: no checks. | `list(string)` | `[]` | no |
| <a name="input_main_context"></a> [main\_context](#input\_main\_context) | The list of status checks to require in order to merge into main. Default: no checks. | `list(string)` | `[]` | no |
| <a name="input_use_develop"></a> [use\_develop](#input\_use\_develop) | Indicate the existence of a develop branch. | `bool` | `false` | no |
| <a name="input_use_stage"></a> [use\_stage](#input\_use\_stage) | Indicate the existence of a stage branch. | `bool` | `true` | no |
| <a name="input_use_master"></a> [use\_master](#input\_use\_master) | Indicate the existence of a master branch. | `bool` | `true` | no |
| <a name="input_use_main"></a> [use\_main](#input\_use\_main) | Indicate the existence of a main branch. | `bool` | `false` | no |


## Examples

### Basic example
```hcl

```

### Example with main
```hcl
module "some-project-branch-protection" {
  source = "git@github.com:masterborn/terraform-github-default-branch-protection.git?ref=v0.0.0"

  repository_name = module.some-project.repository_name
  use_develop     = true
  use_stage       = true
  use_master      = false
  use_main        = true
}
```
<!-- END_OF_AUTO_GENERATED_SECTION -->
