variable "vpc_cidr" {
  type = string  
  default="10.22.0.0/16"
}

variable "av_zones" {
  type = list
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "tag" {
    type = string
    default = "Jenkins"
  
}

variable "public_subnet_cidr" {
  default = "10.22.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.22.2.0/24"
}