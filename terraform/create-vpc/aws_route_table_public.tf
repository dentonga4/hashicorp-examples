resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.training.id}"

  tags = {
    Name = "pub-route-table"
  }
}

resource "aws_route" "public" {
  route_table_id         = "${aws_route_table.public.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.gw.id}"
}
