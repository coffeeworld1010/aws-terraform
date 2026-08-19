output "vpd_id" {
    value = aws_vpc.my_vpc.id
}

output "vpc_cidr" {
    value = aws_vpc.my_vpc.cidr_block
}

output "subnets" {
    value = {
        for anme, subnet in aws_subnet.this :
        name => {
            id = subnet.id
            cidr = subnet.cidr_block
            az = subnet.availability_zone
        }
    }
}
