terraform {
    required_version = ">= 1.6.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
    backend "s3" {
        bucket         = "coffeeworld1010-terraform-states" # 1단계에서 만든 버킷 이름
        key            = "prod/terraform.tfstate"      # S3 내부에 저장될 경로와 파일명
        region         = "ap-northeast-2"
        encrypt        = true                          # 상태 파일 암호화 활성화
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
