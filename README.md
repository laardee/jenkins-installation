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
12. 

 