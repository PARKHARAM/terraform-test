
provider "google" {
  version = "3.5.0"
  project = "haram-326012"
  region  = "asia-northeast3"
  zone         = "asia-northeast3-a"
}

resource "google_compute_instance" "default245" {
  name         = "test52"
  machine_type = "f1-micro"
  zone         = "asia-northeast3-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    subnetwork = data.google_compute_subnetwork.subnet3.self_link
    access_config {
    }
  }

 
  metadata = {
    foo = "bar"
  }

  metadata_startup_script = file("code.sh")
}


