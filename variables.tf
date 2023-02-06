
variable "region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}

variable "vpc_block" {
  description = "mini_vpc"
  type = object({
    cidr_block = string
    name = string
  })
}

variable "subnet_blocks" {
  description = "mini_subnet"
  type = map(object({
    cidr = string
    az = string
  }))
}

variable "igw" {
  description = "mini_gateway"
  type = string
}

variable "rtb" {
  description = "mini_route_table"
  type = object({
    cidr_block = string
    name = string
  })
}

variable "sg" {
  description = "mini_sg"
  type = list(string)
}

variable "inbound_ports" {
  description = "sg_inbound_ports"
  type = list(number)
  default = [80,443]
}

variable "ssh_key" {
  description = "SSH Key name"
  type = string
}

variable "lb_name" {
  description = "Load balancer name"
  type = string
}

variable "tg_name" {
  description = "Target group name"
  type = string
}

variable "domain_names" {
  description = "Describes the domain and subdomain names"
  type = map(string)
}