resource "aws_route_table_association" "public1" {
  subnet_id      = "${element(aws_subnet.public_subnet.*.id,0)}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public2" {
  subnet_id      = "${element(aws_subnet.public_subnet.*.id,1)}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public3" {
  subnet_id      = "${element(aws_subnet.public_subnet.*.id,2)}"
  route_table_id = "${aws_route_table.public.id}"
}
