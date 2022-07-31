variable "db_name" {
  description = "RDS postgres database name"
  type        = string
  sensitive   = true
}

variable "db_user" {
  description = "RDS postgres user"
  type        = string
  sensitive   = true
}

variable "db_pass" {
  description = "RDS postgres user password"
  type        = string
  sensitive   = true
}
