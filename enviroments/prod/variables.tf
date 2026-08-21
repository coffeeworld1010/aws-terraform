variable "aws_region" {
    type = string
}

variable "enviroments" {
    type = string
}

variable "vpc_name" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "subnets" {
    type = map (object({
        sub_name = string
        sub_cidr = string
        az = string
        tier = string
    }))
}