#NOTE:These steps are based on Redhat linux for other flavors steps may vary
#!/bin/bash

# STEP-1: Install required tools
sudo yum install git maven wget -y

# STEP-2: Add Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# STEP-3: Install Java and Jenkins
sudo yum install java-17-openjdk -y
sudo yum install jenkins -y

# STEP-4: Start Jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

# STEP-5: Enable Jenkins on boot
sudo systemctl enable jenkins
