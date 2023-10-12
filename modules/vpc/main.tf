#vpc
resource "aws_vpc" "preprod-vpc" {
    cidr_block = var.cidr_block

}

