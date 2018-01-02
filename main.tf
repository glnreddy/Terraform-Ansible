provider "google" {
  credentials = "${file("~/credentials.json")}"
  project     = "My Project2"
  region      = "us-central1"
}

resource "google_compute_instance" "default" {
  name = "test"
  machine_type = "n1-standard-1"
  zone = "us-central1-b"

  disk {
    image = "debian-7-wheezy-v20160301" // the operative system (and Linux flavour) that your machine will run
  }
 

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP - leaving this block empty will generate a new external IP and assign it to the machine
    }
  }
}
