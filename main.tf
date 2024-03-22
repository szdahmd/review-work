provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Amazon-Instance" {
  count         = 1
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.medium"
  key_name      = "SazidAkeypair"
   tags = {
    Name = "amazon-Server"
 }
