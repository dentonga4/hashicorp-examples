resource "aws_instance" "web" {
  ami           = "${data.aws_ami.training_ami.image_id}"
  instance_type = "t2.micro"
  subnet_id = ""

  tags = {
    Name = "Training Server"
  }
