resource "aws_instance" "server1" {
 ami = "${var.ami_deb_id}"   
 instance_type =  "t2.micro"
 subnet_id = "${aws_subnet.subnettf.id}"
 associate_public_ip_address = true
 vpc_security_group_ids = ["${aws_security_group.tf.id}"]
 private_ip = "10.0.10.50"
 key_name = "keytf1"
 iam_instance_profile = "cw-metrics"
 user_data = "${file("cw_rh.sh")}"
 tags = {
     Name = "TFcourse"
     Env = "testing"
 }
}