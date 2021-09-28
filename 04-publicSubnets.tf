resource "aws_subnet" "public-subnet-1" {
  cidr_block        = var.public_subnet_1_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}a"

  tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-public-subnet-1"
    }
  )
}

resource "aws_subnet" "public-subnet-2" {
  cidr_block        = var.public_subnet_2_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}b"

  tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-public-subnet-2"
    }
  )
}
