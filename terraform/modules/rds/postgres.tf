resource "aws_db_instance" "rds_instance" {
  allocated_storage   = 20
  identifier          = "rds-example"
  storage_type        = "gp2"
  engine              = "postgres"
  engine_version      = "14.2"
  instance_class      = "db.t3.micro"
  db_name             = var.db_name
  username            = var.db_user
  password            = var.db_pass
  publicly_accessible = true
  skip_final_snapshot = true
}
