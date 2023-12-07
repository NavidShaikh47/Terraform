# Security group for vpc-ssh

resource "aws_security_group" "vpc-ssh" {
    name = "vpc-ssh"
    description = "Security group for vpc"
    ingress {
        description = "Allow port 22 for ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress {
        description = "Allow all IPs and Port Outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}


# Create Security group for Web application

resource "aws_security_group" "Web-SG" {

    name = "Web-SG"
    description = "Security group for web application"

    ingress {
        description = "Allow port 80"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        description = "Allow port 443"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress {
        description = "Allow all IPs and Port Outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}