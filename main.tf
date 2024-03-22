provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Amazon-Instance" {
  count         = 1
  ami           = "i-0d525c0d9976a42d5"
  instance_type = "t2.medium"
  key_name      = "SazidAkeypair"
   tags = {
    Name = "RHEL-Server"
 }
