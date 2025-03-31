module "ec2" {
  source        = "git::https://github.com/selelyriq/TF-EC2.git?ref=a88fb52782745d7a92228ddee1f5f7acd5831f51"
  instance_type = var.instance_type
  ami           = var.ami   
  user_data     = var.user_data
  tags          = var.tags
}
