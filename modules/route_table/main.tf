resource "aws_route_table" "public" {
    vpc_id = var.vpc_id

    route {
        clidr_block = "0.0.0.0/0"
        gateway_id = var.initernet_gateway_id
    }

    tags = {
        Name ="public-route-table"
        Enviroment = var.enviroments
        managedBy = "Terraform"
    }
}

resource "aws_route_table_association" "public" {
    for_each = var.public_subnet_ids

    subnet_id = each.value
    route_table_id = aws_route_table.public.id
}