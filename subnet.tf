resource "aws_subnet" "eu-west-1a-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1a.talantzon.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1b-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1b.talantzon.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1c-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1c.talantzon.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "utility-eu-west-1a.talantzon.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "utility-eu-west-1b.talantzon.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-talantzon-com" {
  vpc_id            = "${aws_vpc.talantzon-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "utility-eu-west-1c.talantzon.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/talantzon.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

