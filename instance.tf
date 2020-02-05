resource "aws_instance" "my_instance_1"{
  ami = var.AMIS[var.region]
  instance_type = var.AWS_INSTANCE
}
