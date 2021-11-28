variable "region"{
    type = string
}

variable "vpc_cidr"{
    description = "VPC cidr"
}

variable "ami_rh_id"{
    type = string
    description = "amiAL2"
}

variable "ami_deb_id"{
    type = string
    description = "amideb"
}

variable "cidr_sbnt1"{
    type = string
    description = "bloque de direcciones ip para subnet 1"
}

variable "cidr_sbnt2"{
    type = string
    description = "bloque de direcciones ip para subnet 2"
}

variable "cidr_sbnt3"{
    type = string
    description = "bloque de direcciones ip para subnet 3"
}

variable "az1"{
    type = string
    description = "Zona de disponiblidad para subnet 1"
}

variable "az2"{
    type = string
    description = "Zona de disponiblidad para subnet2"
}

variable "az3"{
    type = string
    description = "Zona de disponiblidad para subnet3"
}