# outputs.tf

# The URL of the ECS service load balancer
output "ecs_service_url" {
  description = "URL for the ECS service"
  value       = "http://${aws_lb.main.dns_name}"
}

# The ARN of the ECS cluster
output "ecs_cluster_arn" {
  description = "ARN of the ECS Cluster"
  value       = aws_ecs_cluster.main.arn
}

# The DNS name of the ALB
output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.main.dns_name
}

# The ARN of the ECS task definition
output "ecs_task_definition_arn" {
  description = "ARN of the ECS task definition"
  value       = aws_ecs_task_definition.main.arn
}

# The ID of the VPC created
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

# The security group IDs for the ECS service and ALB
output "ecs_service_security_group_id" {
  description = "Security Group ID for the ECS service"
  value       = aws_security_group.ecs_service.id
}

output "alb_security_group_id" {
  description = "Security Group ID for the ALB"
  value       = aws_security_group.alb.id
}
