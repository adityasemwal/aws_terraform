resource "aws_iam_role" "ec2-ecr-role"{
  name = "ec2-ecr-role"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ecr:*",
                "cloudtrail:LookupEvents"
            ],
            "Resource": "*"
        }
    ]
}
EOF
  tags = {
    Name = "ec2-ecr-role"
  }
}
