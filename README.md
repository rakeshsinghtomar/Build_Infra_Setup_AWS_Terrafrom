# Build_Infra_Setup_AWS_Terrafrom

Terrafrom code that provison the EC2 node with all required tools, softwares and packages for Build/deploy and test the spring boot application. This Terraform code will setup Jenkins, Sonar, Gradle, Java, AWSCli, python, Selenium and Chrome web driver on EC2 node.


### Prerequisites
* AWS CLI installed on your local box.
* Download terrafrom from: https://www.terraform.io/downloads.html
* Follow the instructions and add terraform executable to PATH: https://learn.hashicorp.com/terraform/getting-started/install.html 
* export your AWS keys on your local box


### Run Terrafrom 
* cd to the directory and make sure you have all files:
* Run the following commands:
```terrafrom
terrafrom init
terrafrom plan
terrafrom apply
```

After terrafrom apply you can find the new provisoned server in EC2 dashboard and Jenkins/sonar can be reach thoough IPv4 Public IP.
```
Jenkins URL :  Public_IP_of_EC2_Node:8080 (Ex: 10.10.10.10:8080)
Sonar URL   :  Public_IP_of_EC2_Node:9000 (Ex. 10.10.10.10:9000)
```
