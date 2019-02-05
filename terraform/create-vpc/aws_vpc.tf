resource "aws_vpc" "training" {
  cidr_block = "10.1.2.0/24"

  tags = {
    Name = "training-VPC"
  }
}
