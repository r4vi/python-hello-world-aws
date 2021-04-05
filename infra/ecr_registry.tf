resource "aws_ecr_repository" "hello_world_ecr_repository" {
  name                 = "django_hello_world"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = false
  }

}
