resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.training.id}"

  tags = {
    Name = "training-internet-gateway"
  }
}
