
data "aws_subnet_ids" "vpc1" {
  vpc_id = "${data.aws_vpc.vpc.id}"
  tags {
    Tier = "Public"
  }
}

data "aws_subnet" "public" {
  count = "${length(data.aws_subnet_ids.vpc1.ids)}"
  id = "${data.aws_subnet_ids.vpc1.ids[count.index]}"
}

resource "aws_route_table_association" "public_association" {
  count          = "${length(data.aws_subnet.public.*.id)}"
  subnet_id      = "${element(data.aws_subnet.public.*.id, count.index)}"
  route_table_id = "${aws_route_table.to-igw.id}"
}


output "subnet_qtd_public" {
  value      = "${length(data.aws_subnet.public.*.id)}"
}

output "subnet_cidr_blocks_public" {
  value = ["${data.aws_subnet.public.*.id}"]
}