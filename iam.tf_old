resource "aws_iam_role" "ec2-ecr-role"{
  name = "ec2=ecr-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "ec2-ecr-instanceprofile"{
  name = "ec2-ecr-instanceprofile"
  role = "aws_iam_role.ec2-ecr-role.name"
}

resource "aws_iam_role_policy" "ec2-ecr_role_policy"{
  name = "ec2=ecr-role-policy"
  role = aws_iam_role.ec2-ecr-role.id
  policy = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}
