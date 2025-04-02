instance_type = "t2.micro"
ami_id        = "ami-07f63a768d21af353"
name          = "terraform-ec2"
user_data     = "echo 'Hello, World!'"
subnet_id     = "subnet-0bc327f8cbac2169e"
tags = {
  Name        = "terraform-ec2"
  Environment = "Production"
  Project     = "Home-Lab"
}