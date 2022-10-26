resource "aws_lb" "techtask" {
  name               = "techtask-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-0a7cfd01153c18820"]
  subnets            = ["subnet-050109ee57faca0a3" ,"subnet-07012db1f4626e0aa"]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}

