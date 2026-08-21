variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "internet_gateway_id" {
    description = "Internet Gateway ID"
    type = string
}

variable "public_route_table_ids" {
    description = "Public Route Table IDs"
    type = list(string)
}

variable "enviroments" {
    description = "Enviroments Name"
    type = string
}
