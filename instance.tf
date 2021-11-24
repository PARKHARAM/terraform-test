


resource "google_compute_instance" "default8520" {
  name         = var.VM_NAME
  machine_type = var.VM_MACHINE_TYPE
  zone         = var.VM_ZONE


  metadata_startup_script = data.template_cloudinit_config.cloudinit-jenkins.rendered



  tags = ["sgtag-jenkins-ssh", "sgtag-jenkins-web","sgtag-jenkins-instance" ]
  
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      type = "pd-standard"
      size = 20
    }
  }
  network_interface {
    subnetwork = data.google_compute_subnetwork.subnet.self_link
    access_config {
    }
  }

 
 
  metadata = {
    foo = "bar"
  }

  
}

