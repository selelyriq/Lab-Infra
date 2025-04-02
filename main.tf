module "ec2" {
  source        = "git::https://github.com/selelyriq/TF-EC2.git?ref=4a0558b9616c6bbbc99ac870a1f0f2929ffe8c7a"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  name          = var.name
  user_data     = var.user_data
  tags          = var.tags
}
