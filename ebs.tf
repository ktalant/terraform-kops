resource "aws_ebs_volume" "a-etcd-events-talantzon-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "a.etcd-events.talantzon.com"
    "k8s.io/etcd/events"                  = "a/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-talantzon-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "a.etcd-main.talantzon.com"
    "k8s.io/etcd/main"                    = "a/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-talantzon-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "b.etcd-events.talantzon.com"
    "k8s.io/etcd/events"                  = "b/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-talantzon-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "b.etcd-main.talantzon.com"
    "k8s.io/etcd/main"                    = "b/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-talantzon-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "c.etcd-events.talantzon.com"
    "k8s.io/etcd/events"                  = "c/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-talantzon-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "c.etcd-main.talantzon.com"
    "k8s.io/etcd/main"                    = "c/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

