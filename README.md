# Installing Jenkins on Amazon Linux AMI 

1. Create an IAM role for EC2 instance.
2. Launch new EC2 instance
3. Select Amazon Linux AMI 
4. Select instance size (t2.micro/t2.small should be enough)
5. Configure details. Select IAM role created in first step.
6. Create Storage.
7. Add tags. e.g. Name: jenkins 
8. Configure Security Group
  * Select name for the security group. e.g. jenkins
  * Add rule for SSH: port 22 and HTTP: port 80
9. Review and launch.
10. Choose existing key-pair or create new.
11. When the instance is up connect with SSH (right click instance in the list and selec `connect` for more details)
12. Run `wget https://raw.githubusercontent.com/laardee/jenkins-installation/master/install.sh && sudo chmod 755 install.sh && sudo ./install.sh`
13. After Jenkins has started, run `sudo cat /var/lib/jenkins/secrets/initialAdminPassword` for initial admin password.
14. Select instance in AWS console, select description and find `Public DNS (IPv4)` in Description tab
15. Open Jenkins in browser and insert initial admin password when asked.
16. Continue with Jenkins installation wizard.