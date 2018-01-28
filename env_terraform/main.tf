terraform {
  backend "s3" {}
}

provider "aws" {
   region = "us-east-1"
}
resource "aws_instance" "example"  {
        ami = "ami-97785bed"
        instance_type = "t2.micro"
        tags {
        Name="terraform-instance"
        }
}
