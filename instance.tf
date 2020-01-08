resource "aws_instance" "Ec2_jenkins"{
    
    ami="${var.amilinux}"

    instance_type="${var.instanceType}"

    key_name="${var.key-nameForInstance}"

    subnet_id ="${aws_subnet.My_VPC_Subnet.id}"
    
    security_groups = ["${aws_security_group.ingress-all-test.id}"]

    tags={
        Name="${var.Instance_name}"
    }
    connection {
          type = "${var.connectionType}"
          user = "${var.userNameForConnection}"
          host = "${self.public_ip}"
	      timeout = "${var.conn_timeout}"
          private_key = "${file("${var.pemFileLocation}")}"
        }

   provisioner "remote-exec" {
  	inline=[
	            "echo ===========   Jenkins Installation start ================",
				"sudo yum update –y",
				"sudo yum install -y git  java-1.8.0-openjdk-devel aws-cli",
				"yes '' |sudo alternatives --config java",
				"sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo",
				"sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key",
				"sudo yum update –y",
				"sudo yum install jenkins -y",
				"sudo yum update –y",
				"sudo service jenkins start",
				"echo ============  Jenkins Installation Done ==============================",
				"sudo wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo",
				"sudo yum install sonar -y",
				"sudo service sonar start",
				"echo ====================Sonar Installation Done=============================",
				"sudo yum install docker -y",
				"sudo service docker start",
				"echo ====================Docker Installation Done=============================",
                                "echo ====================Starting Docker =====================================",
                                "sudo usermod -aG docker $USER",
                                "sudo service docker start",
                                "echo ================= Installing Python =====================================",
                                "sudo yum install python -y",
                                "sudo yum install python-pip -y",
                                "sudo pip install selenium",
                                "wget -c http://services.gradle.org/distributions/gradle-5.2.1-all.zip",
                                "unzip  gradle-5.2.1-all.zip -d /tmp",
                                "wget https://chromedriver.storage.googleapis.com/78.0.3904.105/chromedriver_linux64.zip",
                                "unzip chromedriver_linux64.zip",
                                "sudo mv chromedriver /usr/bin/chromedriver",
                                "sudo chmod 0755 /usr/bin/chromedriver",
                                "wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm",
                                "sudo yum install -y ./google-chrome-stable_current_*.rpm",
				
			]
	}
}

