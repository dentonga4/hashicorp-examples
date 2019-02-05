data "aws_ami" "rhel" {
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-7.6_HVM_GA-*"]
  }

  owners = ["309956199498"]
}
