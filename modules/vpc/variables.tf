variable "vpc_name" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "subnets" {
    type = map (object({
        cidr = string
        az = string
    }))
}