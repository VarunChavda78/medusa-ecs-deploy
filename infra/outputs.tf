output "vpc_id" {
  value = aws_vpc.main.id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.medusa_cluster.name
}

output "rds_endpoint" {
  value = aws_db_instance.medusa_db.endpoint
}
