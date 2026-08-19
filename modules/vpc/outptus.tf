output "vpd_id" {
    value = aws_vpc.my_vpc.id
}

output "vpc_cidr" {
    value = aws_vpc.my_vpc.cidr_block
}