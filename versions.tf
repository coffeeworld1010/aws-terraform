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