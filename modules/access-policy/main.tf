data "aws_iam_user" "brad" {
  user_name = "Brad"
}

#dev
resource "aws_eks_access_entry" "brad" {
  cluster_name  = "brad-eks-dev"
  principal_arn = data.aws_iam_user.brad.arn
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "brad_AmazonEKSAdminPolicy" {
  cluster_name  = "brad-eks-dev"
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
  principal_arn = aws_eks_access_entry.brad.principal_arn

  access_scope {
    type = "cluster"
  }
}

resource "aws_eks_access_policy_association" "brad_AmazonEKSClusterAdminPolicy" {
  cluster_name  = "brad-eks-prod"
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = aws_eks_access_entry.brad.principal_arn

  access_scope {
    type = "cluster"
  }
}  

#prod
resource "aws_eks_access_entry" "brad_prod" {
  cluster_name  = "brad-eks-prod"
  principal_arn = data.aws_iam_user.brad.arn
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "brad_AmazonEKSAdminPolicy_prod" {
  cluster_name  = "brad-eks-prod"
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
  principal_arn = aws_eks_access_entry.brad.principal_arn

  access_scope {
    type = "cluster"
  }
}

resource "aws_eks_access_policy_association" "brad_AmazonEKSClusterAdminPolicy_prod" {
  cluster_name  = "brad-eks-prod"
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = aws_eks_access_entry.brad.principal_arn

  access_scope {
    type = "cluster"
  }
}   
