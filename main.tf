provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Red-Hat-Server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "SazidAkeypair"
  vpc_security_group_ids = [ aws_security_group.allow_HTTP_and_SSH.id]
  tags = {
    Name = "RHEL-Server"
  }
