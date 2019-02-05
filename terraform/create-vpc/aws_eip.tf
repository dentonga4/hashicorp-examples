resource "aws_eip" "natip" {
  count = 3

  tags = {
    Name = "training"
  }
}
