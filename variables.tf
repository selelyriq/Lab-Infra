variable "instance_type" {
  type        = string
  description = "The type of instance to create"
  default     = "t2.micro"
}
variable "name" {
  type        = string
  description = "The name of the instance"
}

variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the instance"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID to use for the instance"
  default     = "vpc-054ac35f0874150b5"
}

variable "user_data" {
  type        = string
  description = "The user data to use for the instance"
  default     = "echo 'Hello, World!'"
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID to use for the instance"
}

variable "tags" {
  type        = map(string)
  description = "The tags to use for the instance"
  default = {
    Name        = "terraform-ec2"
    Environment = "Production"
    Project     = "Home-Lab"
    Owner       = "LyriqSele"
  }
}