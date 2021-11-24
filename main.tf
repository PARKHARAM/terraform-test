provider "google" {
  version = "3.5.0"
  project = "pjt-amho104-cet-prd"
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
    network = "default"
    access_config {
    }
  }

 
  metadata = {
    foo = "bar"
  }

}
