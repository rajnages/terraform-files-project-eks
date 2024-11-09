output "jenkins_public_ip" {
  description = "Public IP of Jenkins server"
  value       = aws_instance.jenkins_server.public_ip
}

output "jenkins_url" {
  description = "URL for Jenkins server"
  value       = "http://${aws_instance.jenkins_server.public_ip}:8080"
}

output "ssh_connection" {
  description = "SSH connection command"
  value       = "ssh -i ${var.key_name}.pem ubuntu@${aws_instance.jenkins_server.public_ip}"
}

output "initial_password_command" {
  description = "Command to get initial Jenkins password"
  value       = "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
}