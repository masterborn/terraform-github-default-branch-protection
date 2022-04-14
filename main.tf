resource "github_branch_protection" "develop" {
  count = var.use_develop ? 1 : 0

  repository_id  = var.repository_name
  pattern        = "develop"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = var.develop_context
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "stage" {
  count = var.use_stage ? 1 : 0

  repository_id  = var.repository_name
  pattern        = "stage"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = var.stage_context
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "staging" {
  count = var.use_stage ? 1 : 0

  repository_id  = var.repository_name
  pattern        = "staging"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = var.stage_context
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "master" {
  count = var.use_master ? 1 : 0

  repository_id  = var.repository_name
  pattern        = "master"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = var.master_context
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}

resource "github_branch_protection" "main" {
  count = var.use_main ? 1 : 0

  repository_id  = var.repository_name
  pattern        = "main"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = var.main_context
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }
}
