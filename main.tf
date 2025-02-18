module "vpc" {
  source            = "./modules/vpc"
  cidr_block        = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

module "security_group" {
  source      = "./modules/security_group"
  name        = "web-sg"
  description = "Allow SSH"
  vpc_id      = module.vpc.vpc_id
}

module "iam" {
  source = "./modules/iam"
}

module "ec2" {
  source         = "./modules/ec2"
  # ami            = data.aws_ami.ubuntu.id
  ami            = "ami-0c55b159cbfafe1f0"
  instance_type  = "t2.micro"
  instance_count = 3
  subnet_id      = module.vpc.subnet_id
  sg_id          = module.security_group.sg_id
  iam_role       = module.iam.role_name
}

module "rds" {
  source               = "./modules/rds"
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t3.micro"
  db_name              = "core"
  username             = "admin"
  password             = "supersecret"
  parameter_group_name = "default.mysql8.0"
  sg_id                = module.security_group.sg_id
  subnet_ids           = [module.vpc.subnet_id]
}
