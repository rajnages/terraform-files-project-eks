variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone suffix"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name of SSH key pair"
  type        = string
}

variable "sg_ports" {
  description = "List of ingress ports"
  type        = list(number)
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
}
variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 30
}

# variable "jenkins_version" {
#   description = "Jenkins version to install"
#   type        = string
#   default     = "2.401.1"
# }
