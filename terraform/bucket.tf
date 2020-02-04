provider "aws" {
  region = "eu-west-2"

}

# Copy the bucket and adjust the permissions
resource "aws_s3_bucket" "andtest" {
  bucket = "andacademy-test3"
  acl = "public-read"
  tags = {
    Owner        = "romans"
    Environment = "and academy"
  }
  policy = <<EOF
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::andacademy-test3/*",
      "Principal": {
        "AWS": [
          "*"
        ]
      }
    }
  ]
}
EOF
}

// Pollicy allows to put files into the bucket
resource "aws_iam_policy" "andtest-deploy" {
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
         "Effect":"Allow",
         "Action":[
            "s3:PutObject",
            "s3:PutObjectAcl",
            "s3:GetObject",
            "s3:GetObjectAcl",
            "s3:DeleteObject"
         ],
         "Resource":"${aws_s3_bucket.andtest.arn}/*"
      }
  ]
}
EOF

}


resource "aws_iam_user_policy_attachment" "user-policy" {
  policy_arn = aws_iam_policy.andtest-deploy.arn
  user = aws_iam_user.deploy-user.id
}

resource "aws_iam_user" "deploy-user" {
  name = "devops-academy-deploy-user"
}

resource "aws_iam_access_key" "deploy-user-access" {
  user = aws_iam_user.deploy-user.id
}

output "access_key" {
  value = aws_iam_access_key.deploy-user-access.id
}
output "secret_access_key" {
  value = aws_iam_access_key.deploy-user-access.secret
}
