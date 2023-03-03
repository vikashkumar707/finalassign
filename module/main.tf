module "ec2" {
    source="../ec2"
    ami = var.ami
    instance-1= var.instance-1
    user_names = var.user_names
}

module "vikash-bucket" {
    source="../s3"
    bucket_name = "vikash-b7"
}

module "vikash" {
  source = "../VPC"
   
}
