provider "vscale" {
  token = "${var.do_token}"
}


# Create a new scalet
resource "vscale_scalet" "test" {
  ssh_keys  = ["${vscale_ssh_key.Sergey_Babanin.id}","${vscale_ssh_key.REBRAIN_SSH_PUB_KEY.id}"]
  make_from = "${var.vscale_centos_7}"
  location  = "${var.vscale_msk}"
  rplan     = "${var.vscale_rplan["s"]}"
  name      = "Sergey_Babanin"
}

# Create a new SSH key
resource "vscale_ssh_key" "Sergey_Babanin" {
  name = "Sergey_Babanin"
  key  = "${file("~/.ssh/id_rsa.pub")}"
}

# Added  SSH key Rebrain
resource "vscale_ssh_key" "REBRAIN_SSH_PUB_KEY" {
  name = "REBRAIN_SSH_PUB_KEY"
  key  = "${file("~/.ssh/REBRAIN_SSH_PUB_KEY.pub")}"
}


