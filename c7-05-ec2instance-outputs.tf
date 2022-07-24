#File that contains list of ec2 outputs that can be used in this project


#Generate public instance Id
output "ec2_public_bastion_instance_id" {
  description = "The ID of the instance"
  value       = module.ec2_public.id
}

#ec2_bastion_public_ip
output "ec2_bastion_public_ip" {
    description = "list of public IP addresses assigned to the instances"
    value = module.ec2_public.public_ip
  
}


#App1
#Generate private instance Id
output "app1_ec2_private_instacne_id" {
    description = "The ID of the instance"
    value = module.ec2_private_app1.id
}

#ec2_private ip
output "app1_ec2_private_ip" {
    description = "list of private IP addresses assigned to the instances"
    value = module.ec2_private_app1.private_ip
          
}

#App2
#Generate private instance Id
output "app2_ec2_private_instacne_id" {
    description = "The ID of the instance"
    value = module.ec2_private_app2.id
}

#ec2_private ip
output "app2_ec2_private_ip" {
    description = "list of private IP addresses assigned to the instances"
    value = module.ec2_private_app2.private_ip
          
}

