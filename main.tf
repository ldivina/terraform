provider "aws" {
  region                  = "ca-central-1"
  shared_credentials_file = "/home/ldivina/.aws/credentials"
  profile                 = "terraform"
}
resource "aws_instance" "web" {
  ami = "ami-076b4adb3f90cd384"
  instance_type = "t2.micro"
  tags {
    Name = "terraformtest"
  }
}
