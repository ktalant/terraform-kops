resource "aws_eip" "eu-west-1a-talantzon-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1a.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-talantzon-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1b.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-talantzon-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "talantzon.com"
    Name                                  = "eu-west-1c.talantzon.com"
    "kubernetes.io/cluster/talantzon.com" = "owned"
  }
}

