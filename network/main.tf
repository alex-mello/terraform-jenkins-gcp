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

resource "google_compute_firewall" "fw2" {
    name = var.fw_service
    network = google_compute_network.vpc_network.id

    allow {
      protocol = var.icmp
    }
    allow {
      protocol = var.tcp
      ports = var.ports
    }
      source_tags = ["web"]
 
}

resource "google_compute_firewall" "fw1" {
    name = var.fw_iap
    network = google_compute_network.vpc_network.id

     allow {
      protocol = var.tcp_iap
      ports = var.ports_iap
    }
      source_ranges = ["35.235.240.0/20"]
   
}