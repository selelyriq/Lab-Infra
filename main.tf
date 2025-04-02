module "ec2" {
  source        = "git::https://github.com/selelyriq/TF-EC2.git?ref=392d48d5c48770c12314dbe7e420dbc0b9959b73"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  name          = var.name
  user_data     = var.user_data
  tags          = var.tags
}
