# variables.tf

# AWS Region for deploying resources
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# CIDR block for the VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# CIDR block for public subnet 1
variable "public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

# CIDR block for public subnet 2
variable "public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

# CIDR block for private subnet 1
variable "private_subnet_1_cidr" {
  description = "CIDR block for private subnet 1"
  type        = string
  default     = "10.0.3.0/24"
}

# CIDR block for private subnet 2
variable "private_subnet_2_cidr" {
  description = "CIDR block for private subnet 2"
  type        = string
  default     = "10.0.4.0/24"
}

# Instance size for ECS
variable "ecs_instance_type" {
  description = "EC2 instance type for ECS"
  type        = string
  default     = "t3.micro"
}

# Desired number of ECS instances
variable "ecs_desired_count" {
  description = "Desired count of ECS service instances"
  type        = number
  default     = 1
}

# Docker image to use for ECS service (Docker Hub image)
variable "docker_image" {
  description = "Docker image to use for ECS task"
  type        = string
  default     = "danielchukukere/threatmodelapp:latest"
}

# VPC CIDR block for routing
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
