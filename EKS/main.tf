module "EKS" {

  source = "/home/ubuntu/solutions/EKS"
  eksname = "my-eks-cluster"
  region = "us-east-1"
  min = "3"
  max = "5"
  nodes = "3"
}