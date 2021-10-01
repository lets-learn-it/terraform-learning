resource "aws_elastic_beanstalk_application" "app" {
  name        = var.app_name
  description = "description of ${var.app_name} application"
}

resource "aws_elastic_beanstalk_environment" "env" {
  name                = var.app_name
  application         = aws_elastic_beanstalk_application.app.name
  solution_stack_name = var.stack_name
  tier                = var.tier

  # wait for this time before timeout
  wait_for_ready_timeout = var.creation_timeout

  tags = var.tags

}