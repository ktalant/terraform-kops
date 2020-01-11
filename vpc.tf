resource "aws_vpc" "talantzon-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "talantzon-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "talantzon-com" {
  vpc_id          = "${aws_vpc.talantzon-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.talantzon-com.id}"
}

