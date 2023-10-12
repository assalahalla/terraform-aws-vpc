#vpc
module "vpc" {
    source = "./module/vpc" 
    cidr_block = var.cidr_block
}

#gateway
module "gateway" {
    source = "./module/gateway"
    vpc_id = module.vpc.vpc_id
}

#route table

module "route-table" {
    source = "./module/route-table"
    vpc_id = module.vpc.vpc_id
    gateway_id = module.gateway.gateway_id
    
}


#subnet
module "subnet" {
    source = "./module/subnet"
    vpc_id = module.vpc.vpc_id
    cidr_block = var.subnet_cidr_block
}


#associate subnet with RT   
module "route-table-association" {
    source = "./module/route-table-association"
    route_table_id = module.route-table.route_table_id
    subnet_id = module.subnet.id

}



#sec group 443 80 22 
module "security_groups" {
    source = "./module/security-group"
    vpc_id = module.vpc.vpc_id
}

#ni
module "network_interface" {
    source = "./module/network_interface"
    subnet_id = module.subnet.id
    private_ips = var.private_ips
}

#ip (+assign to nic)

module "eip" {
    source = "./module/elastic-ip"
    network_interface = var.network_interface
    associate_with_private_ip = var.associate_with_private_ip
}           

# create ub
module "instance" {
    source = "./module/instance"
    nic_id = module.network_interface.network-interface-id
    instance_type = var.instance_type
    ami = var.ami
    user_data = var.user_data
}
