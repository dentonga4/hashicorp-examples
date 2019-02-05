resource "aws_route_table" "private1" {
  vpc_id = "${aws_vpc.training.id}"

  tags = {
    Name = "pub-route-table"
  }
}

resource "aws_route" "private1" {
  route_table_id         = "${aws_route_table.private1.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.natgateway.*.id,0)}"
}
