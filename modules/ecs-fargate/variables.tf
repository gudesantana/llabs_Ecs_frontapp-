variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

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

variable "health_check_path" {
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