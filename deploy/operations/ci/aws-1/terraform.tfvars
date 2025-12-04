# See TFVARS.md for the full set of variables and related descriptions.
# Note the variables have dummy values. In order to use this file, please provide the correct values for your account.
# AWS account
aws_region = "us-east-1"

# DNS Management
aws_route53_zone_id = "A12345678ABCDE1A1ABCD"

# Hostnames
app_hostname       = "dss.abcd.dev"
db_hostname_suffix = "db.abcd.dev"

# Kubernetes configuration
kubernetes_version           = 1.32
cluster_name                 = "cluster-abcd"
node_count                   = 3
aws_instance_type            = "t3.medium"
aws_kubernetes_storage_class = "gp2"

# DSS configuration
image = "docker.io/interuss/dss:latest"
authorization = {
  public_key_pem_path = "/abcd/efgh.pem"
}
should_init         = true
crdb_image_tag      = "v24.1.3"
crdb_cluster_name   = "abcd-ci"
locality            = "abcd"
crdb_external_nodes = []

aws_iam_permissions_boundary = "arn:aws:iam::123456789000:policy/ABCD123456789"
aws_iam_administrator_role   = "arn:aws:iam::123456789000:role/ABCDAccess_1234567890"
aws_iam_ci_role              = "arn:aws:iam::123456789000:role/ABCDCI"
