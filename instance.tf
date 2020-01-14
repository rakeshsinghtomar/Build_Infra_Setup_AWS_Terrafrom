resource "aws_instance" "Ec2_jenkins"{
    ami="${var.amilinux}"
    instance_type="${var.instanceType}"
    key_name="${var.key-nameForInstance}"
    subnet_id ="${aws_subnet.My_VPC_Subnet.id}"
    security_groups = ["${aws_security_group.ingress-all-test.id}"]
    user_data = "${file("userdata.sh")}"
    tags={
        Name="${var.Instance_name}"
    }
}

