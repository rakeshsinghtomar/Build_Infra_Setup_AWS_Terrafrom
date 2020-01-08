resource "aws_internet_gateway" "test-env-gw" {
  vpc_id = "${aws_vpc.main.id}"
tags = {
    Name = "My_internet_gateway"
  }
}