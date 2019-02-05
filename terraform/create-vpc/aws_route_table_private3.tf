resource "aws_route_table" "private3" {
  vpc_id = "${aws_vpc.training.id}"

  tags = {
    Name = "pri-route-table-3"
  }
}

resource "aws_route" "private3" {
  route_table_id         = "${aws_route_table.private3.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${element(aws_nat_gateway.natgateway.*.id,2)}"
}
