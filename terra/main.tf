provider "aws" {
  region     = "us-east-2"
  }

resource "aws_instance" "example" {
  ami           = "ami-0f5daaa3a7fb3378b" 
  instance_type = "t2.micro"  

  tags = {
    Name = "assignment_instance"
  }
}
