resource "aws_instance" "my_instance_1"{
  ami = var.AMIS[var.AWS_REGION]
  instance_type = var.AWS_INSTANCE
  key_name = "aws_key_pair.mykeypair.key_name"
}

