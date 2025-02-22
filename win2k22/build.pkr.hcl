build {
  source "qemu.win2k22-x64" {}
  post-processor "shell-local" {
    inline = [
      "virt-copy-in -a ${var.output_directory}/${var.vm_name} floppy/scripts/unattend.xml /Windows/Panther/"
    ]
  }
}
