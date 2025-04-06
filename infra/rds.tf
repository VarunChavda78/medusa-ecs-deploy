resource "aws_db_subnet_group" "medusa_db_subnet_group" {
  name       = "medusa-db-subnet-group"
  subnet_ids = [aws_subnet.subnet_1.id, aws_subnet.subnet_2.id]
}

resource "aws_db_instance" "medusa_db" {
  identifier             = "medusa-db"
  engine                 = "postgres"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "medusadb"
  username               = "medusa_user"
  password               = "medusa_pass123"
  skip_final_snapshot    = true
  publicly_accessible    = true
  db_subnet_group_name   = aws_db_subnet_group.medusa_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.ecs_sg.id]
}
