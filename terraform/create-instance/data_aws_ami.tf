data "aws_ami" "training_ami" {
  most_recent      = true

  filter {
    name   = "name"
    values = ["packer-training-v*"]
  }
}