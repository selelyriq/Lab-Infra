instance_type = "t2.micro"
name          = "terraform-ec2"
user_data     = "echo 'Hello, World!'"
tags = {
  Name        = "terraform-ec2"
  Environment = "Production"
  Project     = "Home-Lab"
}