provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "first" {
  ami = "ami-0528a5175983e7f28"
  instance_type = "t2.micro"
  count = 3
  tags = {
    Name = "name-${count.index}"
  }
}
