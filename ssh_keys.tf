resource "aws_key_pair" "keytf1"{
    key_name = "keytf1"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMqwidI/OXtRnN7G+RlXUuYd2z2rNYqru0agduTUDP+iAG9VS4+c2/E57iDv2qS7dq2NV9HDQ2YwAD8nZegVtO3v7uCClQG/u2ZvRhmWd7Onvf6ol0czS41PvG7iQtFkdVZWKObnvZTf2TFlwWekdwj37z9CLFJnInQEW9pRi1ep5Qse2aXgZieYSMlQxCgIpoMhgzf5EYq61i6kfp+m7GnLzdyI+ZLTBpm0KflmkPHFBSV+Gl0yuNIONYGMQpptgkW6tu4sE7IgjnXndPiAV+XfR4TNy5ZoRW1BkfKe67Gj2d4pmPCujKFVgawTRabXQPHvt1aKFuPTbRi8bTFiZV"
}
resource "aws_key_pair" "Keytf2" {
    key_name = "keytf2"
    public_key = "${file("filename.pub")}"
  
}