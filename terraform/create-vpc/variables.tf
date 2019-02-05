locals {
  public_cidrs  = ["10.1.2.0/27", "10.1.2.32/27", "10.1.2.64/27", "10.1.2.96/27"]
  private_cidrs = ["10.1.2.128/27", "10.1.2.160/27", "10.1.2.192/27", "10.1.2.124/27"]
}

variable "instance_size" {
  type = "string"
}

variable "common_tags" {
  type = "map"
}
