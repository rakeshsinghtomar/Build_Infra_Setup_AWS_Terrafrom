
resource "aws_route_table" "route-table-test-env" {
  vpc_id = "${aws_vpc.main.id}"
route {
    cidr_block = "${var.cidrBlockForAllTrafficEnable}"
    gateway_id = "${aws_internet_gateway.test-env-gw.id}"
  }

tags = {
    Name = "${var.aws_route_table_name}"
  }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.My_VPC_Subnet.id}"
  route_table_id = "${aws_route_table.route-table-test-env.id}"
}