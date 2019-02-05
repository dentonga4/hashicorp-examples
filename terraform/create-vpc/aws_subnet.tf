resource "aws_subnet" "private_subnet" {
  count             = "${length(data.aws_availability_zones.available.names)}"
  vpc_id            = "${aws_vpc.training.id}"
  cidr_block        = "${local.private_cidrs[count.index]}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"

  tags = {
    Name = "pri-subnet-${count.index}"
  }
}

resource "aws_subnet" "public_subnet" {
  count             = "${length(data.aws_availability_zones.available.names)}"
  vpc_id            = "${aws_vpc.training.id}"
  cidr_block        = "${local.public_cidrs[count.index]}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"

  tags = {
    Name = "pub-subnet-${count.index}"
  }
}
