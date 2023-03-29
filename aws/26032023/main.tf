provider "aws" {

}


resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_db_instance" "name" {
  allocated_storage   = 10
  db_name             = "jai"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t3.micro"
  username            = "jai"
  password            = random_password.password.result
  skip_final_snapshot  = false
}

