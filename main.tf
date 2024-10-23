module "ecr" {
  source               = "./modules/ecr"
  name                 = "ecr-${var.project_name}-${var.environment}"
  project_name         = var.project_name
  environment          = var.environment
  image_tag_mutability = var.image_tag_mutability
}

module "ecs" {
  source = "./modules/ecs-fargate"

  environment           = var.environment
  project_name          = var.project_name
  aws_region            = var.aws_region
  vpc_id                = var.vpc_id
  vpc_subnet_public_1a  = var.vpc_subnet_public_1a
  vpc_subnet_public_1c  = var.vpc_subnet_public_1c
  vpc_subnet_private_1a = var.vpc_subnet_private_1a
  vpc_subnet_private_1c = var.vpc_subnet_private_1c
  az_count              = var.az_count
  app_image             = var.app_image
  app_port              = var.app_port
  app_count             = var.app_count
  health_check_path     = var.health_check_path
  fargate_cpu           = var.fargate_cpu
  fargate_memory        = var.fargate_memory
  min_capacity          = var.min_capacity
  max_capacity          = var.max_capacity
}