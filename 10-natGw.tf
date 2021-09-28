// to access internet from private subnet
resource "aws_eip" "elastic-ip-for-nat-gw" {
  vpc                       = true
 // associate_with_private_ip = "30.0.0.5"

 tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-EIP"
    }
  )

 // depends_on = [aws_internet_gateway.igw]
}


resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.elastic-ip-for-nat-gw.id
  subnet_id     = aws_subnet.public-subnet-1.id

tags = merge(
    local.common_tags,
    {
        Name = "${local.prefix}-NAT-GW"
    }
  )

}

resource "aws_route" "nat-gw-route" {
  route_table_id         = aws_route_table.private-route-table.id
  nat_gateway_id         = aws_nat_gateway.nat-gw.id
  destination_cidr_block = "0.0.0.0/0"
}