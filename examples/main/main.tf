module "some-project-branch-protection" {
  source = "git@github.com:masterborn/terraform-github-default-branch-protection.git?ref={{ provider_version }}"

  repository_name = module.some-project.repository_name
}
