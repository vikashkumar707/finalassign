variable "instance-1" {
  type = string
}

variable "ami" {
  type = string
}

variable "user_names" {
  description = "usernames"
  type        = set(string)

}

variable "bucket_name" {
  type = string
}
