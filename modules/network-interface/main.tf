resource "aws_network_interface" "preprod_nic" {
    subnet_id = var.subnet_id
    #private_ips = ["10.0.1.50"]
    private_ips = var.private_ips
    security_groups = [aws_security_group.preprod-sg.id]
}

