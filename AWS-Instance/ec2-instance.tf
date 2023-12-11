


resource "aws_instance" "navid" { 
    ami = var.ami
    # instance_type =   var.instance_type
    # instance_type = var.instance_type_list[2]
    instance_type = var.instance_type_map["dev"]
    key_name = var.key_name
    user_data = file("${path.module}/app1.sh")
    vpc_security_group_ids = [ aws_security_group.vpc-ssh.id , aws_security_group.Web-SG.id ]
    count = 3
    tags = {
      "Name" = "Navid-${count.index}"
      "Enviroment" = "Dev"

    }
}
