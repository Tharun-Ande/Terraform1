variable "ami" {
  description = "ami"
  type = string
}

variable "key_in" {
  description = "key_in"
  type = string
}

variable "n_pub_tag" {
  description = "n_pub_tag"
  type = string
}

variable "ami_pvt" {
  description = "ami_pvt"
  type = string
}

variable "n_pvt_tag" {
  description = "n_pvt_tag"
  type = string
}

variable "x" {
  description = "true"
  type = bool
}

variable "y" {
  description = "false"
  type = bool
}

variable "i" {
    description = "i"
    type = string
}

variable "subnet_pub" {
}

variable "subnet_pvt" {
}

variable "sg1" {
  type = list(string)
}