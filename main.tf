module "create_vpc" {
  source      = "./network"
  vpc_name    = "aula"
  subnet_name = "us-central1"
  cidr_range  = "10.0.0.0/8"
  region      = "us-central1"
}

module "create_instance" {
  source  = "./instance"
  vm_name = "vm-aula"
  vm_type = "e2-micro"
  zone    = "us-central1-a"
  vm_disk = "debian-cloud/debian-9"
  network_interface = module.create_vpc.subnet_self_link
}
