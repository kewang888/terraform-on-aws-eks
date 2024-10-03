# Security Group for EKS Node Group - Placeholder file
resource "aws_vpc_security_group_ingress_rule" "eks_allow_bastion" {

  from_port                    = 443
  to_port                      = 443
  ip_protocol                  = "tcp"
  referenced_security_group_id = module.public_bastion_sg.security_group_id
  security_group_id            = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}