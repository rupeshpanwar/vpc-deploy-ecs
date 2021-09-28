resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.main.id

    tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-public-route-table"
    }
  )
}

# resource "aws_route_table" "public-route-table_b" {
#   vpc_id = aws_vpc.main.id

#   tags = merge(
#     local.common_tags,
#     map("Name", "${local.prefix}-public-b")
#   )
# }