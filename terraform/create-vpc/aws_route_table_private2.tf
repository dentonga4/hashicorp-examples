resource "aws_route_table" "private2" {
  vpc_id = "${aws_vpc.training.id}"

  tags = {
    Name = "pri-route-table-2"
  }
}

resource "aws_route" "private2" {
  route_table_id         = "${aws_route_table.private2.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.natgateway.*.id,1)}"
}
