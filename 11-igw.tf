
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
   tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-IGW"
    }
  )
}

resource "aws_route" "public-internet-igw-route" {
  route_table_id         = aws_route_table.public-route-table.id
  gateway_id             = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}
