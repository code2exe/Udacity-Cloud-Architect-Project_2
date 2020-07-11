# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
}
#TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
  count = "4"
  tags = {
    name = "Udacity T2 - ${count.index}"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4


# resource "aws_instance" "Udacity_M4" {
#   ami = "ami-0ac80df6eff0e70b5"
#   instance_type = "m4.large"
#   count = "2"
#   tags = {
#     name = "Udacity M4 - ${count.index}"
#   }
# }