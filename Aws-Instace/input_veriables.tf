# Input variables for ec2 servers

# Enter your required AMI
variable "ami" {
    description = "AMI for your server"
    type = string
    default = "ami-0fa1ca9559f1892ec"
  
}

# Enter required Instance type
variable "instance_type" {
    description = "Instance type for server"
    type = string
    default = "t3.micro"
}

# Enter name of key pair for ssh into server 
variable "key_name" {
    description = "key-pair name"
    type = string
    default = "Xplor-Key"
  
}

# Enter aws region for your applcation
variable "region" {
    description = "enter the aws regon for application"
    type = string
    default = "us-east-1"
  
}

# Instance type list
variable "instance_type_list" {
    description = "Enter the list of instance types"
    type = list(string)
    default = [ "t2.micro", "t3.micro", "t3.small" ]
  
}

#Instance type map
variable "instance_type_map" {
    description = "Enter the instance type mapped with appropriate value"
    type = map(string)
    default = {
      "dev" = "t2.micro"
      "uat" = "t3.micro"
      "prod" = "t3.small"
    }
  
}
