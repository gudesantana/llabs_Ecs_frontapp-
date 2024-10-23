resource "aws_ecr_repository" "this" {
  name                 = "ecr-${var.project_name}-${var.environment}"
  image_tag_mutability = var.image_tag_mutability
  tags                 = var.tags

  image_scanning_configuration {
    scan_on_push = var.image_scanning_configuration.scan_on_push
  }
}

resource "aws_ecr_lifecycle_policy" "custom_lifecycle_policy" {
  count      = var.custom_lifecycle_policy != null && !var.enable_default_lifecycle_policy ? 1 : 0
  repository = var.name

  policy = var.custom_lifecycle_policy
}

resource "aws_ecr_lifecycle_policy" "default_lifecycle_policy" {
  count      = var.enable_default_lifecycle_policy ? 1 : 0
  repository = var.name

  policy = jsonencode({
    rules : [
      {
        rulePriority : 1,
        description : "Keep last 30 images",
        selection : {
          tagStatus : "any",
          countType : "imageCountMoreThan",
          countNumber : 30
        },
        action : {
          type : "expire"
        }
      }
    ]
  })
}

resource "aws_ecr_repository_policy" "repo-policy" {
  repository = aws_ecr_repository.this.name
  policy     = <<EOF
  {
    "Version": "2008-10-17",
    "Statement": [
      {
        "Sid": "adds full ecr access to the repository",
        "Effect": "Allow",
        "Principal": "*",
        "Action": [
          "ecr:BatchCheckLayerAvailability",
          "ecr:BatchGetImage",
          "ecr:CompleteLayerUpload",
          "ecr:GetDownloadUrlForLayer",
          "ecr:GetLifecyclePolicy",
          "ecr:InitiateLayerUpload",
          "ecr:PutImage",
          "ecr:UploadLayerPart"
        ]
      }
    ]
  }
  EOF
}