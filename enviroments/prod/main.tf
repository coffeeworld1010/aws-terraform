terraform {
    required_version = ">= 1.6.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}
provider "aws" {
    region = var.aws_region
}

resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name = var.vpc_name
    }
}

resource "aws_subnet" "this" {
    for_each = var.subnets

    vpc_id = aws_vpc.this.id
    cidr_block = each.value.cidr
    availability_zone = each.value.az

    tags = {
        Name = each.key
    }
}