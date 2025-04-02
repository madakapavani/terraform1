data "aws_ami" "joindevops" {
  most_recent = true
  owners      = ["joindevops"]
  filter {
    name   = "name"
    values = ["RHEL-9-DevOpe-practice"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_vpc" "default" {
  default = true
}

output "ami_id" {
  value = data.aws_ami.joindevops.id
}

output "default_vpc_id" {
  value = data.aws_vpc.default.id
}




