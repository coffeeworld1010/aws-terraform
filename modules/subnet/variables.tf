variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "subnets" {
    description = "Subnets"
    stype = map(object({
        name = string
        sub_cidr = string
        az = string
        tier = string
    }))
}

variable "enviroments" {
    description = "Enviroments Name"
    type = string
}