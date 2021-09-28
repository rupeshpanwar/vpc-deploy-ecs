resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-private-route-table"
    }
  )
}