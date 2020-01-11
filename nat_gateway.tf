resource "aws_nat_gateway" "eu-west-1a-talantzon-com" {
  allocation_id = "${aws_eip.eu-west-1a-talantzon-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1a.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-talantzon-com" {
  allocation_id = "${aws_eip.eu-west-1b-talantzon-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1b.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-talantzon-com" {
  allocation_id = "${aws_eip.eu-west-1c-talantzon-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1c.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}
