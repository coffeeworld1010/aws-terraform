output "subnet_ids" {
    value = {
        for key, subnet in aws_subnet.this : 
        key => subnet.id
    }
}

output "name" {
    value = {
        for key, subnet in aws_subnet.this :
        key => subnet.tags["Name"]
    }
}

output "cidr_blocks" {
    value = {
        for key, subnet in aws_subnet.this : 
        key => subnet.cidr_block
    }
}

output "tier" {
    value = {
        for key, subnet in aws_subnet.this :
        key => subnet.tags["Tier"]
    }
}
output "availability_zones" {
    value = {
        for key, subnet in aws_subnet.this : 
        key => subnet.availability_zone
    }
}