
 variable "AWS_ACCESS_KEY_ID" {}
 variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws" {
  access_key  =  "${var.AWS_ACCESS_KEY_ID}"
  secret_key  = "${var.AWS_SECRET_ACCESS_KEY}"
  region      = "eu-central-1"
}
  data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]
  }


module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Netology-HW-test"

  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}

