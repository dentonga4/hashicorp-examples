resource "aws_nat_gateway" "natgateway" {
  count         = 3
  allocation_id = "${element(aws_eip.natip.*.id, count.index)}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id, count.index)}"
  public_ip     = "${element(aws_eip.natip.*.public_ip, count.index)}"

  tags = {
    Name = "training-nat-gateway"
  }
}
