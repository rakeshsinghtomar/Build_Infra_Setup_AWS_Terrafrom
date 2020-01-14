# Build_Infra_Setup_AWS_Terrafrom

Terrafrom code that provison the EC2 node with all required tools, softwares and packages for Build/deploy and test the spring boot application. This Terraform code will setup Jenkins, Sonar, Gradle, Java, AWSCli, python, Selenium and Chrome web driver on EC2 node.


### Prerequisites
* AWS CLI installed on your local box.
* Download terrafrom from: https://www.terraform.io/downloads.html
* Follow the instructions and add terraform executable to PATH: https://learn.hashicorp.com/terraform/getting-started/install.html 
* export your AWS keys on your local box


### Madatory variables in terrafrom.tfvars
```terrafrom
#################
# Vars
#################
vpc_id                  = ""                                 # existing vpc id
security_group_id       = ""                                 # existing security group id
subnet_id               = ""                                 # exisring subnet id
instance_id             = "t3.medium"                        # default instance type
key_pair                = ""                                 # name of you key_pair in aws
ansible_provision_file  = "./occm_setup.yaml"                # deafult path to absibel playbook file
refresh_token           = ""                                 # private refresh token
client_id               = "Mu0V1ywgYteI6w1MbD15fKfVIUrNXGWC" # default auth0 id
portal_user_name        = ""                                 # user email
auth0_domain            = "netapp-cloud-account.auth0.com"   # default auth0 domain
```


