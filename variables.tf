variable "repository_name" {
  description = "GitHub repository name"
  type        = string
}

variable "develop_context" {
  description = "The list of status checks to require in order to merge into develop. Default: no checks."
  type        = list(string)
  default     = []
}

variable "stage_context" {
  description = "The list of status checks to require in order to merge into stage. Default: no checks."
  type        = list(string)
  default     = []
}

variable "master_context" {
  description = "The list of status checks to require in order to merge into master. Default: no checks."
  type        = list(string)
  default     = []
}

variable "main_context" {
  description = "The list of status checks to require in order to merge into main. Default: no checks."
  type        = list(string)
  default     = []
}

variable "use_develop" {
  description = "Indicate the existence of a develop branch."
  default     = false
}

variable "use_stage" {
  description = "Indicate the existence of a stage branch."
  default     = false
}

variable "use_master" {
  description = "Indicate the existence of a master branch."
  default     = false
}

variable "use_main" {
  description = "Indicate the existence of a main branch."
  default     = true
}
