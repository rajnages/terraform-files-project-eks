aws ec2 create-key-pair --key-name jenkins-key --query 'KeyMaterial' --output text > jenkins-key.pem
chmod 400 jenkins-key.pem
terraform init
terraform plan
terraform apply
ssh -i jenkins-key.pem ubuntu@<public_ip>
sudo cat /var/lib/jenkins/secrets/initialAdminPassword