

module "ec2" {
  source        = "https://github.com/selelyriq/TF-EC2.git"
  version       = "1.0.0"
  instance_type = var.instance_type
  ami           = var.ami
  user_data     = var.user_data
  tags          = var.tags
}
