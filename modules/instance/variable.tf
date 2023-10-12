variable "ami" {
    type = string
    default = "ami-............"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "network_interface_id" {
    type = string
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