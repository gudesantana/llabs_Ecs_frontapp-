###########################
#    Variaveis globais    #
###########################
aws_account_id        = "816069124394"
project_name          = "llabs-appfront"
environment           = "prd"
aws_profile           = "default"
aws_region            = "us-east-1"
vpc_id                = "vpc-0f71f8897cf106f7c"
vpc_subnet_private_1a = "subnet-0539fca403854288a"
vpc_subnet_private_1c = "subnet-02642b3b8b369e7d4"
vpc_subnet_public_1a  = "subnet-06b6f2ff966533c14"
vpc_subnet_public_1c  = "subnet-0794788c08965388e"

###########################
# Variables ECS - FARGATE #
###########################
az_count = "2"
# app_port = 80
app_port             = 3001
app_count            = 1
min_capacity         = 1
max_capacity         = 2
health_check_path    = "/"
fargate_cpu          = "1024"
fargate_memory       = "2048"
deregistration_delay = "300"
image_tag_mutability = "MUTABLE"
app_image            = "816069124394.dkr.ecr.us-east-1.amazonaws.com/ecr-llabs-appfront-prd:llabs-frontapp-v25"
# app_image = "nginx:latest"

###########################
# Security Group - ALB #
###########################
allow_cidr_block = ["0.0.0.0/0"]