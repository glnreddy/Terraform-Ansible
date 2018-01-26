provider "google" {
  credentials = "${file("/home/jenkins/credentials.json")}"
  project     = "My Project2"
  region      = "us-central1"
}
resource "google_compute_instance" "blog" {
  name         = "default"
  machine_type = "n1-standard-1"
  zone         = "us-central1-b"

  disk {
    image = "debian-cloud/debian-8"
  }

  disk {
    type    = "local-ssd"
    scratch = true
  }

  network_interface {
    network = "default"
  }
}
