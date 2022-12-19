
variable "project_id" {
  description = "Project ID"
  type        = string
}


##################################
# Create VCP/Subnet and Firewall #
##################################
variable "vpc_name" {
  description = "Network VPC name"
  type        = string
}

variable "region" {
  description = "Region resources"
  type        = string
}

variable "subnet_name" {
  description = "Subnetwork name"
  type        = string
}

variable "cidr_range" {
  description = "Subnet range"
  type        = string
}

##################################
#    Create Instance GCE GCP     #
##################################

variable "vm_name" {
  description = "Instance name"
  type        = string
}

variable "vm_type" {
  description = "GCE instance type"
  type        = string
}

variable "zone" {
  description = "Subnetwork zone"
  type        = string
}

variable "vm_disk_boot" {
  description = "SO instance GCE(Debian-11)."
  type        = string
}

