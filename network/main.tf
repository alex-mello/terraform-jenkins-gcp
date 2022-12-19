resource "google_compute_network" "vpc_network" {
    name = var.vpc_name
    auto_create_subnetworks = var.subnet_true
}

resource "google_compute_subnetwork" "us-central1" {
    name = var.subnet_name
    ip_cidr_range = var.cidr_range
    region = var.region
    network = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "fw" {
    name = var.fw
    network = google_compute_network.vpc_network.id

    allow {
      protocol = var.icmp
    }
    allow {
      protocol = var.tcp
      ports = var.ports
    }
    source_tags = []
  
}