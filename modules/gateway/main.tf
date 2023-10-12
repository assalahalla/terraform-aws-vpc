resource "aws_internet_gateway" "preprod_ig" {
    vpc_id = var.vpc_id
}
