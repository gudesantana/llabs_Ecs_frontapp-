variable "name" {
  type      = string
}

variable "project_name" {
  type      = string
}

variable "environment" {
  type      = string
}

variable "image_scanning_configuration" {
  type      = object({
    scan_on_push = bool,
  })

  default   = {
    scan_on_push = true
  }
}

variable "image_tag_mutability" {
  type      = string
}

variable "custom_lifecycle_policy" {
  default   = null
  type      = string
}

variable "enable_default_lifecycle_policy" {
  default   = false
  type      = bool
}

variable "tags" {
  default   = {}
  type      = map(string)
}