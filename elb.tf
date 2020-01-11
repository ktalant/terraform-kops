resource "aws_elb" "api-talantzon-com" {
  name = "api-talantzon-com-b3ofpc"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-talantzon-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-talantzon-com.id}", "${aws_subnet.utility-eu-west-1b-talantzon-com.id}", "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "api.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_elb" "bastion-talantzon-com" {
  name = "bastion-talantzon-com-tt553q"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-talantzon-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-talantzon-com.id}", "${aws_subnet.utility-eu-west-1b-talantzon-com.id}", "${aws_subnet.utility-eu-west-1c-talantzon-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "bastion.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

