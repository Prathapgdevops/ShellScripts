#Jenkins requires Java to be installed on the system
sudo yum install java-1.8.0-openjdk-devel -y

#install wget command
sudo yum install wget -y

#Jenkins is not included in the default RHEL repositories. Therefore, you need to add the Jenkins repository to the system
#This will download the Jenkins repository file and save it to the /etc/yum.repos.d directory.
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

#you need to import the Jenkins GPG key to ensure that the packages are signed and verified
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

#Install Jenkins
sudo yum install jenkins -y

#Start Jenkins
sudo systemctl start jenkins

#Enable Jenkins
sudo systemctl enable jenkins

#Access Jenkins - Jenkins should now be accessible via a web browser at http://<your_server_IP>:8080.
#Replace <your_server_IP> with the IP address of your server.

#When you access Jenkins for the first time, you will be prompted to enter an initial admin password.
#This password is located in the /var/lib/jenkins/secrets/initialAdminPassword file on your server. 
#Copy this password and paste it into the prompt in the web browser.
