variable "pb_rt_cidr_blk" {
    description = "pb_rt_cidr_blk"
    type = string
}

variable "pb_rt_tag" {
  description = "pb_rt_tag"
  type = string
}

variable "pvt_rt_cidr_blk" {
  description = "pvt_rt_cidr_blk"
  type = string
}

variable "pvt_rt_tag" {
  description = "pvt_rt_tag"
  type = string
}

variable "vpc_input" {
    description = "vpc_id"
}

variable "igw_input" {
}

variable "nat_input" {
}

variable "subnet_pub" {
}

variable "subnet_pvt" {
}