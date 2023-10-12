resource "aws_subnet" "preprod-subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr_block
    availability_zone = "us-east-1a" 
}

