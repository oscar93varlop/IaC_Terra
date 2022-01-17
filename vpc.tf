provider "aws" {
    region = "${var.region}"

}

resource "aws_vpc" "vpc-tf"{
    cidr_block = "${var.vpc_cidr}"

    tags = {
        Mame = "vpc-tf"
       }
    }




resource "aws_subnet" "subnettf"{
    count = "${length(var.az)}"
#    availability_zone = "${element(data.aws_availability_zones.data_azs.names, count.index)}"
#    count = "${length(data.aws_availability_zones.data_azs.names)}"
    vpc_id = aws_vpc.vpc-tf.id
    cidr_block = "${element(var.cidr_sbnts, count.index)}"
    availability_zone = "${element(var.az, count.index)}"
    map_public_ip_on_launch = true
    tags = {
    Name = "Subnet-${count.index + 1}"
    Env = "test"
}
}
# resource "aws_subnet" "subnet2tf"{
#     vpc_id = aws_vpc.vpc-tf.id
#     cidr_block = "${var.cidr_sbnt2}"
#     availability_zone = "${var.az2}"
#     map_public_ip_on_launch = false
# }


# resource "aws_subnet" "subnet3tf"{
#     vpc_id = aws_vpc.vpc-tf.id
#     cidr_block = "${var.cidr_sbnt3}"
#     availability_zone = "${var.az3}"
#     map_public_ip_on_launch = false
#}

resource "aws_internet_gateway" "igw-tf" {
  vpc_id = aws_vpc.vpc-tf.id

  tags = {
    Name = "igw-tf"
  }
}

resource "aws_route_table" "rtb-tf"{
  vpc_id = aws_vpc.vpc-tf.id
  route     {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw-tf.id
    } 
}

resource "aws_route_table_association" "rta-tf" {
  count = "${length(var.cidr_sbnts)}"
  subnet_id = "${element(aws_subnet.subnettf.*.id, count.index)}"
  route_table_id = "aws_route_table.rtb-tf.id"

}

# resource "aws_route_table_association" "rta2-tf" {
#   subnet_id = aws_subnet.subnet2tf.id
#   route_table_id = aws_route_table.rtb-tf.id

# }

# resource "aws_route_table_association" "rta3-tf" {
#   subnet_id = aws_subnet.subnet3tf.id
#   route_table_id = aws_route_table.rtb-tf.id

# }