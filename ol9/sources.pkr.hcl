source "qemu" "ol9-x64" {
  boot_command     = var.boot_command
  boot_wait        = var.boot_wait
  disk_size        = var.disk_size
  format           = var.format
  headless         = var.headless
  http_directory   = path.cwd
  http_port_max    = var.http_port_max
  http_port_min    = var.http_port_min
  iso_checksum     = var.iso_checksum
  iso_url          = var.iso_url
  output_directory = var.output_directory
  qemuargs         = var.qemuargs
  shutdown_command = var.shutdown_command
  skip_compaction  = var.skip_compaction
  disk_compression = var.disk_compression
  ssh_password     = var.ssh_password
  ssh_username     = var.ssh_username
  ssh_wait_timeout = var.ssh_wait_timeout
  vm_name          = var.vm_name
  net_device       = var.net_device
  disk_interface   = var.disk_interface
}
