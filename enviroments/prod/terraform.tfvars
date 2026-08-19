aws_region = "ap-northeast-2"

vpc_name = "my-vpc"
vpc_cidr = "10.0.0.0/16"

subnets = {
    public-2a = {
        cidr = "10.0.1.0/24"
        az = "ap-northeast-2a"
    }

    public-2b = {
        cidr = "10.0.2.0/24"
        az = "ap-northeast-2b"
    }

    public-2c = {
        cidr = "10.0.3.0/24"
        az = "ap-northeast-2c"
    }

    web-a = {
        cidr = "10.0.11.0/24"
        az = "ap-northeast-2a"
    }

    web-2b = {
        cidr = "10.0.12.0/24"
        az = "ap-northeast-2b"
    }

    web-2c = {
        cidr = "10.0.13.0/24"
        az = "ap-northeast-2c"
    }

   was-a = {
        cidr = "10.0.21.0/24"
        az = "ap-northeast-2a"
    }

    was-2b = {
        cidr = "10.0.22.0/24"
        az = "ap-northeast-2b"
    }

    was-2c = {
        cidr = "10.0.23.0/24"
        az = "ap-northeast-2c"
    }

   db-a = {
        cidr = "10.0.31.0/24"
        az = "ap-northeast-2a"
    }

    db-2b = {
        cidr = "10.0.32.0/24"
        az = "ap-northeast-2b"
    }

    db-2c = {
        cidr = "10.0.33.0/24"
        az = "ap-northeast-2c"
    }

}