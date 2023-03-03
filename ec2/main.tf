resource "aws_instance" "ec2" {
  # count =  length(var.loop-test)
  # for_each = var.loop-test2
  instance_type = var.instance-1
  ami = var.ami
  for_each = var.user_names
  tags = {
    Name = each.value
    # Name = "Vikash Kumar"
    Owner="vikash.kumar@cloudeq.com"
    Purpose="Training"
  }

  volume_tags = {
    Name = each.value
    # Name = "Vikash Kumar"
    Owner="vikash.kumar@cloudeq.com"
    Purpose="Training"
  }
}