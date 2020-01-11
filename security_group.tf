resource "aws_security_group" "api-elb-talantzon-com" {
  name        = "api-elb.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "api-elb.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-talantzon-com" {
  name        = "bastion-elb.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "bastion-elb.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "bastion-talantzon-com" {
  name        = "bastion.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "bastion.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "masters-talantzon-com" {
  name        = "masters.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "masters.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group" "nodes-talantzon-com" {
  name        = "nodes.talantzon.com"
  vpc_id      = "${aws_vpc.talantzon-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "nodes.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.masters-talantzon-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.masters-talantzon-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.bastion-talantzon-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.bastion-talantzon-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-talantzon-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.nodes-talantzon-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-talantzon-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-talantzon-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-talantzon-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

