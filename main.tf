provider "google" {
  project = var.project_id

}

module "create_vpc" {
  source      = "./network"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  cidr_range  = var.cidr_range
  region      = var.region
}

module "create_instance" {
  source     = "./instance"
  vm_name    = var.vm_name
  vm_type    = var.vm_type
  zone       = var.zone
  vm_disk    = var.vm_disk_boot
  create_vpc = module.create_vpc.subnet_self_link

  depends_on = [
    module.create_vpc
  ]


}

