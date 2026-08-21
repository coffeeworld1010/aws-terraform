provider "aws" {
    region = var.aws_region

    default_tags {
        tags = {
            Enviroment = var.enviroments
            ManagedBy = "Terraform"
        }
    }
}

module "vpc" {
    source = "../../modules/vpc"
    
    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
    enviroments = var.enviroments
}

module "subnet" {
    source = "../../modules/subnet"

    vpc_id = module.vpc.vpc_id
    subnets = var.subnets
    enviroments = var.enviroments
}

module "internet_gateway" {
    source = "../../modules/internet_gateway"

    vpc_id = modues.vpc.vpc_id
    igw_name = "${var.vpc_name}-igw"
    enviroments = var.enviroments
}

module "route_table" {
    source = "../../modules/route_table"

    vpc_id = modules.vpc.vpc_id
    internet_gateway_id = modules.internet_gateway.id

    public_subnet_ids  = {
        public-2a = module.subnet.ids["public-2a"]
        public-2b = module.subnet.ids["public-2b"]
    }

    enviroments = var.enviroments
}
