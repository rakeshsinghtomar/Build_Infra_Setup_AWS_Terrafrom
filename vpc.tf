resource "aws_vpc" "main" {
  cidr_block       = "${var.cidr-block_for_VPC}"
  instance_tenancy = "default"
  enable_dns_hostnames = "${var.enableAnyAttribute}"
  enable_dns_support = "${var.enableAnyAttribute}"

  tags = {
    Name = "${var.vpc_name}"
  }
}