vpc_cidr = "10.0.0.0/16"

subnets = {
    public-2a = {
        name = "public-2a"
        cidr = "10.0.1.0/24"
        az = "ap-northeast-2a"
        tier ="public"
    }

    public-2b = {
        name = "public-2b"
        cidr = "10.0.2.0/24"
        az = "ap-northeast-2b"
        tier ="public"
    }
    
    web-a = {
        name = "web-2a"
        cidr = "10.0.11.0/24"
        az = "ap-northeast-2a"
        tier ="web"
    }

    web-2b = {
        name = "web-2b"
        cidr = "10.0.12.0/24"
        az = "ap-northeast-2b"
        tier ="web"
    }

   was-a = {
        name = "was-2a"
        cidr = "10.0.21.0/24"
        az = "ap-northeast-2a"
        tier ="was"
    }

    was-2b = {
        name = "was-2b"
        cidr = "10.0.22.0/24"
        az = "ap-northeast-2b"
        tier ="was"
    }

    db-a = {
        name = "db-2a"
        cidr = "10.0.31.0/24"
        az = "ap-northeast-2a"
        tier ="db"
    }

    db-2b = {
        name = "db-2b"
        cidr = "10.0.32.0/24"
        az = "ap-northeast-2b"
        tier ="db"
    }
}