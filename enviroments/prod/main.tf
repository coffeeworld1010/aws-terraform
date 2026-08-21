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

modules "subnet" {
    source = "../../modules/subnet"

    vpc_id = module.vpc.vpc_id
    subnets = var.subnets
    enviroments = var.enviroments
}