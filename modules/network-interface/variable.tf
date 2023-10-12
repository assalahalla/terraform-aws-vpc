
variable "subnet_id" {
  type = string
}
variable "private_ips" {
    type = list(string)
    default = ["10.0.1.50"]
}