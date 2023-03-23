
provider "aws" {
  
}

resource "aws_vpc" "newvpc" {
  cidr_block = "10.0.0.0/16"
}
                                    