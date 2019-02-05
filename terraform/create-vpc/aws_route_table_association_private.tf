resource "aws_route_table_association" "private1" {
  subnet_id      = "${element(aws_subnet.private_subnet.*.id,0)}"
  route_table_id = "${aws_route_table.private1.id}"
}

resource "aws_route_table_association" "private2" {
  subnet_id      = "${element(aws_subnet.private_subnet.*.id,1)}"
  route_table_id = "${aws_route_table.private2.id}"
}

resource "aws_route_table_association" "private3" {
  subnet_id      = "${element(aws_subnet.private_subnet.*.id,2)}"
  route_table_id = "${aws_route_table.private3.id}"
}
