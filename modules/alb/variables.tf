variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "public_subnet_ids" {
  type = list
}

variable "vpc_id" {
  type = string
}

variable "deregistration_delay" {
  type = string
}

variable "health_check_path" {
  type = string
}

variable "allow_cidr_block" {
  type = list(string)
}