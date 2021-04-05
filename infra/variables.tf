variable "region" {
  description = "The AWS region for resource creation"
  default     = "eu-west-2"
}

# networking

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.2.0/24"
}
variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.7.0/24"
}
variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
  default     = "10.0.8.0/24"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

# key pair

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

# ecs

variable "app_count" {
  description = "Number of app instances"
  default     = 1
}

# ecs

variable "amis" {
  description = "Which AMI to spawn."
  default = {
    eu-west-2 = "ami-00c983d871338210e"
  }
}
variable "instance_type" {
  default = "t3a.nano"
}
variable "docker_image_url_django" {
  description = "Docker image to run in the ECS cluster"
  default     = "064634375222.dkr.ecr.eu-west-2.amazonaws.com/django_hello_world:latest"
}

# auto scaling, try to scale to 0 if not in use

variable "autoscale_min" {
  description = "Minimum autoscale (number of EC2)"
  default     = "1"
}
variable "autoscale_max" {
  description = "Maximum autoscale (number of EC2)"
  default     = "2"
}
variable "autoscale_desired" {
  description = "Desired autoscale (number of EC2)"
  default     = "1"
}


# database
variable "rds_db_name" {
  description = "RDS database name"
  default     = "django"
}
variable "rds_username" {
  description = "RDS database username"
  default     = "postgres"
}

variable "rds_password" {
  description = "RDS database password"
}

variable "rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t3.micro"
}
