resource "aws_subnet" "this" {
    for_each = var.subnets
    
    vpc_id = var.vpc_id
    cidr_block = each.value.sub_cidr
    availability_zone = each.value.az

    tags = {
        Name = each.value.sub_name
        Enviroment = var.enviroments
        Tier = each.value.tier
        ManagedBy = "Terraform"
    }
}