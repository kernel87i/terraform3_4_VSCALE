output "Public_ip" {
  value = "${vscale_scalet.test.*.public_address}"
}

output "Name" {
  value = "${vscale_scalet.test.*.name}"
}
