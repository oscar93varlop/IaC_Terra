resource "aws_security_group" "tf"{
    name = "ssh-ssl"
    vpc_id =  aws_vpc.vpc-tf.id
    description = "permitir acceso por ssh y http ssl "
    ingress   {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "value"
      from_port = 22
      protocol = "tcp"
      to_port = 22
    }

    ingress  {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "value"
      from_port = 443
      protocol = "tcp"
      to_port = 443
    }
      ingress  {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "value"
      from_port = 80
      protocol = "tcp"
      to_port = 80
    }  

    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }  
    tags = {
        Name = "ssh and ssl"
    }
    
}