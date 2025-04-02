instance_type = "t2.micro"
ami_id        = "ami-0917fb53cdfdd8a53"
name          = "terraform-ec2"
user_data     = "echo 'Hello, World!'"
subnet_id     = "subnet-0bc327f8cbac2169e"
tags = {
  Name        = "terraform-ec2"
  Environment = "Production"
  Project     = "Home-Lab"
}