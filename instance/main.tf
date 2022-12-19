resource "google_compute_instance" "vm1" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.vm_disk
    }
  }
  
  network_interface {
    subnetwork = var.create_vpc

    # access_config {
    #   // Ephemeral Public IP
    # }
  }
  # metadata = {
  #   ssh-keys = var.metadata-ssh
  # }
  # metadata_startup_script = var.metadata-script
}