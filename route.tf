resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.talantzon-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-talantzon-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-talantzon-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-talantzon-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-talantzon-com.id}"
}

resource "aws_route53_record" "api-talantzon-com" {
  name = "api.talantzon.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-talantzon-com.dns_name}"
    zone_id                = "${aws_elb.api-talantzon-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZFM6PTLZKE7ET"
}

resource "aws_route53_record" "bastion-talantzon-com" {
  name = "bastion.talantzon.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-talantzon-com.dns_name}"
    zone_id                = "${aws_elb.bastion-talantzon-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZFM6PTLZKE7ET"
}

resource "aws_route_table" "private-eu-west-1a-talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "private-eu-west-1a.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "private-eu-west-1b.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "private-eu-west-1c.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1c"
  }
}

resource "aws_route_table" "talantzon-com" {
  vpc_id = "${aws_vpc.talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/kops/role"             = "public"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-talantzon-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-talantzon-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-talantzon-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-talantzon-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-talantzon-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-talantzon-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-talantzon-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-talantzon-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-talantzon-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-talantzon-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-talantzon-com.id}"
  route_table_id = "${aws_route_table.talantzon-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-talantzon-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-talantzon-com.id}"
  route_table_id = "${aws_route_table.talantzon-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-talantzon-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"
  route_table_id = "${aws_route_table.talantzon-com.id}"
}

