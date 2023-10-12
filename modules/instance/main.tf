resource "aws-instance" "preprod-instance" {
    ami = var.ami
    instance_type = var.instance_type
    availability_zone = "us-east-1a"
    key_name = "preprod-key"
    network_interface {
        network_interface_id = var.network_interface_id
        device_index = 0
    }
    user_data = var.user_data


}

