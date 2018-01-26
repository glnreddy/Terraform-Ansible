resource "aws_instance" "example"  {
        ami = "ami-f2d3638a"
        instance_type = "t2.micro"
        tags {
        Name="terraform-instance1"
        }
}
