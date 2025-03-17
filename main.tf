provider "aws" {
  region = "us-east-1"
}

# Public S3 bucket (Bad Practice)
resource "aws_s3_bucket" "test_bucket" {
  bucket = "wiz-terraform-test-bucket"
  acl    = "public-read"
}

# Public EC2 Instance (Bad Practice)
resource "aws_instance" "bad_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (Update as needed)
  instance_type = "t2.micro"

  security_groups = [aws_security_group.bad_sg.name]

  tags = {
    Name = "PublicInstance"
  }
}

# Security Group with Open Ingress Rule (Bad Practice)
resource "aws_security_group" "bad_sg" {
  name        = "bad_sg"
  description = "Allows public SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allows SSH from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allows HTTP from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# IAM User with Administrator Access (Bad Practice)
resource "aws_iam_user" "bad_user" {
  name = "wiz-test-user"
}

resource "aws_iam_policy_attachment" "admin_access" {
  name       = "admin-access-attachment"
  users      = [aws_iam_user.bad_user.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
