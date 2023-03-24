variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "Region to create resources"
}

variable "vpc_info" {
  type = object({
    vpc_cidr     = string,
    subnet_az    = list(string)
    subnet_names = list(string)
  })
  default = {
    subnet_az    = ["a", "b", "a", "b"]
    subnet_names = ["app1", "app2", "db1", "db2"]
    vpc_cidr     = "192.168.0.0/16"
  }
}