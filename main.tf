module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    vpc_tenancy = var.vpc_tenancy
    vpc_tag = var.vpc_tag
}

module "subnet" {
    source = "./modules/subnets"
    vpc_input = module.vpc.vpc_output
    subnet_cidr_block = var.subnet_cidr_block
    subnet_tag = var.subnet_tag
    subnet_cidr_block_pvt = var.subnet_cidr_block_pvt
    subnet_tag_pvt = var.subnet_tag_pvt
}

module "igw" {
    source = "./modules/igw"
    vpc_input = module.vpc.vpc_output
    igw_tag = var.igw_tag
}

module "eip" {
    source = "./modules/eip"
    eip_tag =  var.eip_tag
}

module "nat" {
    source = "./modules/nat"
    eip_in = module.eip.eip_id
    pub_subnet_in = module.subnet.subnet_public_id
    n_gw = var.n_gw
}

module "rt" {
    source = "./modules/rt"
    vpc_input = module.vpc.vpc_output
    pb_rt_cidr_blk = var.pb_rt_cidr_blk
    igw_input = module.igw.igw_id
    pb_rt_tag = var.pb_rt_tag
    pvt_rt_cidr_blk = var.pvt_rt_cidr_blk
    nat_input = module.nat.nat_id
    pvt_rt_tag = var.pvt_rt_tag
    subnet_pub = module.subnet.subnet_public_id
    subnet_pvt = module.subnet.subnet_pvt_id
}

module "sg" {
    source = "./modules/sg"
    sg = var.sg
    vpc_input = module.vpc.vpc_output
    sg_tag = var.sg_tag
}

module "key" {
    source = "./modules/key"
    key = var.key
    p_key = var.p_key
}

module "instances" {
    source = "./modules/instances"
    ami = var.ami
    i = var.i
    sg1 = [module.sg.sg_output]
    subnet_pub = module.subnet.subnet_public_id
    key_in = module.key.key_id
    x = var.x
    n_pub_tag = var.n_pub_tag
    ami_pvt = var.ami_pvt
    subnet_pvt = module.subnet.subnet_pvt_id
    y = var.y
    n_pvt_tag  = var.n_pvt_tag 
}

