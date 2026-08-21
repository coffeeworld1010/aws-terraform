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
        name = string
        cidr = string
        az = string
        tier = string
    }))
}