output "ami-from-ec2" {
#   value = aws_instance.ec2.arn
     value = [for i in aws_instance.ec2:i["arn"] ]
     
}


