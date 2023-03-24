
resource "aws_vpc" "ntier" {
  cidr_block = var.vpc_info.vpc_cidr
  tags = {
    Name = "ntier"
  }

}

resource "aws_subnet" "app1" {
  count             = length(var.vpc_info.subnet_names)
  vpc_id            = aws_vpc.ntier.id
  availability_zone = "${var.region}${var.vpc_info.subnet_az[count.index]}"
  cidr_block        = cidrsubnet(var.vpc_info.vpc_cidr, 8, count.index)
  tags = {
    Name = var.vpc_info.subnet_names[count.index]
  }
  depends_on = [
    aws_vpc.ntier
  ]

}