source "qemu" "win2k22-x64" {
  communicator     = "winrm"
  disk_compression = var.disk_compression
  disk_interface   = var.disk_interface
  disk_size        = var.disk_size
  floppy_dirs      = var.floppy_dirs
  floppy_files     = var.floppy_files
  format           = var.format
  headless         = var.headless
  http_directory   = path.cwd
  http_port_max    = var.http_port_max
  http_port_min    = var.http_port_min
  iso_checksum     = var.iso_checksum
  iso_url          = var.iso_url
  net_device       = var.net_device
  output_directory = var.output_directory
  qemuargs         = var.qemuargs
  shutdown_command = var.shutdown_command
  skip_compaction  = var.skip_compaction
  vm_name          = var.vm_name
  winrm_password   = var.winrm_password
  winrm_timeout    = var.winrm_timeout
  winrm_username   = var.winrm_username
}
