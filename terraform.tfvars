##################################
#        Terraform tfvars        #
##################################
project_id = "ansible-gcp-354402"

##################################
# Create VCP/Subnet and Firewall #
##################################
vpc_name    = "vpc-dev-iac"
subnet_name = "subnet-dev-iac"
cidr_range  = "10.130.20.0/24"
region      = "us-central1"

##################################
#    Create Instance GCE GCP     #
##################################
vm_name      = "vm-dev"
vm_type      = "g1-small"
zone         = "us-central1-a"
vm_disk_boot = "debian-cloud/debian-11"
