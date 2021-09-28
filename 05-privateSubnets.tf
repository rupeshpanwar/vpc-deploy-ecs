resource "aws_subnet" "private-subnet-1" {
  cidr_block        = var.private_subnet_1_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}a"

  tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-private-subnet-1"
    }
  )
}

resource "aws_subnet" "private-subnet-2" {
  cidr_block        = var.private_subnet_2_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}b"

  tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-private-subnet-2"
    }
  )
}

