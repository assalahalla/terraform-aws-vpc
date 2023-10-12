variable "vpc_id" {
    type = string
}

variable "subnet_cidr_block" {
    type = string
    default = "10.0.1.0/24"
}