# This is the output section of terraform

# Output the Public IP of Server
# output "instancePublicIP" {
#     description = "Instance public ip"
#     value = aws_instance.navid.public_ip
  
# }

#Output the public DNS of server
# output "InstancePublicdns" {
#     description = "Public DNS of Server"
#     value = aws_instance.navid.public_dns
  
# }

#Outputs with count operator

# List instance types 
# output "list_with_count" {
#     description = "list the instance types with count"
#     value = [for ins in aws_instance.navid: ins.public_dns]
  
# }

# Map instance types
output "map_with_count" {
    description = "Map the instance type with count"
    value = {for c, ins in aws_instance.navid: c => ins.public_ip}
    
}

# Advanced output form of List 
output "advance_list_output" {
    description = "advnaced outputs for list"
    value = aws_instance.navid[*].public_dns
  
}



