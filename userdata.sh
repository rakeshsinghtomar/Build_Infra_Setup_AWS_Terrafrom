#!/bin/bash -xe
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

echo "=====================   Jenkins Installation start ========================"
sudo yum update –y
sudo yum install -y git  java-1.8.0-openjdk-devel aws-cli
yes '' |sudo alternatives --config java
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum update –y
sudo yum install jenkins -y
sudo yum update –y
sudo service jenkins start
echo "==================  Jenkins Installation Done =============================="
echo "=================  Sonar Installation Starting =============================="
sudo wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo
sudo yum install sonar -y
sudo service sonar start
echo "========================= Sonar Installation Done==============================="
echo "===================  Docker Installation Starting =============================="
sudo yum install docker -y
sudo groupadd docker
sudo usermod -aG docker ec2-user
newgrp docker
sudo service docker start
echo "=========================  Docker Installation Done  ============================="
echo "===========================  Starting Docker ====================================="
##sudo usermod -aG docker ${USER}
sudo service docker start
echo "============== Installing Python Pip Selenium Chrome Gradle ======================="
sudo yum install python -y
sudo yum install python-pip -y
sudo pip install selenium
wget -c http://services.gradle.org/distributions/gradle-5.2.1-all.zip
unzip -o gradle-5.2.1-all.zip -d /tmp
wget https://chromedriver.storage.googleapis.com/78.0.3904.105/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
sudo chmod 0755 /usr/bin/chromedriver
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum install -y ./google-chrome-stable_current_*.rpm
echo "============== Installing Python Pip Selenium Chrome Gradle Done ===================="
