module "create_vpc" {
  source      = "./network"
  vpc_name    = "vpc-dev-iac"
  subnet_name = "subnet-dev-iac"
  cidr_range  = "10.130.20.0/24"
  region      = "us-central1"
}

module "create_instance" {
  source     = "./instance"
  vm_name    = "vm-dev"
  vm_type    = "e2-micro"
  zone       = "us-central1-a"
  vm_disk    = "debian-cloud/debian-11"
  create_vpc = module.create_vpc.subnet_self_link
}
