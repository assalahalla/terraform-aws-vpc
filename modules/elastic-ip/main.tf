resource "aws_eip" "preprod_eip" {
    domain = "vpc"
    network_interface = var.network_interface
    associate_with_private_ip = var.associate_with_private_ip
    depends_on = [aws_internet_gateway.preprod_ig]
}


