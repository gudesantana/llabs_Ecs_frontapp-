#################
# Global variables #
#################
variable "aws_account_id" {
  type = string
}

variable "aws_profile" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "health_check_path" {
  type = string
}

#################
# ALB variables #
#################

# variable "alb_name" {
#   type = string
# }

# variable "public_subnet_ids" {
#   type        = list
# }

variable "deregistration_delay" {
  type = string
}

variable "allow_cidr_block" {
  type = list(string)
}

# variable "name" {
#   type        = string
# }

#################
# ECR variables #
#################

# variable "image_scanning_configuration" {
#   type = object({
#     scan_on_push = bool,
#   })
# }

variable "image_tag_mutability" {
  type = string
}

# variable "custom_lifecycle_policy" {
#   type        = string
# }

# variable "enable_default_lifecycle_policy" {
#   type        = bool
# }

# variable "tags" {
#   type        = map(string)
# }

#################
# ECS variables #
#################

variable "vpc_subnet_private_1a" {
  type = string
}

variable "vpc_subnet_private_1c" {
  type = string
}

variable "vpc_subnet_public_1a" {
  type = string
}

variable "vpc_subnet_public_1c" {
  type = string
}

# variable "ecs_task_execution_role_name" {
#   type = string
# }

variable "az_count" {
  type = string
}

variable "app_image" {
  type = string
}

variable "app_port" {
  type = string
}

variable "app_count" {
  type = string
}

variable "fargate_cpu" {
  type = string
}

variable "fargate_memory" {
  type = string
}

variable "min_capacity" {
  type = string
}

variable "max_capacity" {
  type = string
}