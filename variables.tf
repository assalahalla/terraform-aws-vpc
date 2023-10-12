variable "network_interface" {
    type = string
}
variable "associate_with_private_ip" {
    type = string
    default = "10.0.1.50"
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
    type = string
    default = "10.0.1.0/24"
}

variable "private_ips" {
    type = list(string)
    default = ["10.0.1.50"]
}

variable "ami" {
    type = string
    default = "ami-............"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "user_data" {
    type = string
    default = <<-EOF

                #!/bin/bash 
                sudo yum update -y
                sudo yum install httpd -y
                sudo systemctl start httpd
                sudo systemctl enable httpd
                sudo echo "hello world" > /var/www/html/index.html
                EOF
  
}