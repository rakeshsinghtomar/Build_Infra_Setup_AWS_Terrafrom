resource "aws_subnet" "My_VPC_Subnet" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "${var.cidr-block_for_Subnet}"
  map_public_ip_on_launch = "${var.enableAnyAttribute}" 
  availability_zone       = "${var.availablityZone}"
tags = {
   Name = "${var.subnet_name}"
  }
}