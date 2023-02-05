variable "ssh_key" {
  description = "uchekey1"
  type = string
}

variable "domain_names" {
  type        = map(string)
  description = "My Domain name and Subdomain name"
}

variable "subnet"{
  type = list
  default = ["aws_subnet.pub1.id", "aws_subnet.pub2.id", "aws_subnet.pub3.id"]
}

variable "token" {
  description = "Name.com API token"
  type = string
}

variable "username" {
  description = "Name.com username"
  type = string
}
