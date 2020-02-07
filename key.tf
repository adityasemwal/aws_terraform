resource "aws_key_pair" "mykeypair"{
  key_name = "adikey"
  key_path = file(var.PATH_TO_PUBLIC_KEY)
}
