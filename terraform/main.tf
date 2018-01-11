resource "digitalocean_droplet" "terraform-web" {
  image = "ubuntu-17-10-x64"
  name = "haxm-test"
  region = "lon1"
  size = "512mb"
  private_networking = true
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]
  connection {
      user = "root"
      type = "ssh"
      private_key = "${file(var.pvt_key)}"
      timeout = "2m"
  }
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt-get update"
    ]
  }
}