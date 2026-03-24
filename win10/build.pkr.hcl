build {
  source "qemu.win10-x64" {}

  provisioner "file" {
    source      = "floppy/scripts/unattend.xml"
    destination = "/Windows/Panther/unattend.xml"
  }

  post-processor "shell-local" {
    inline = [
      "virt-sysprep -a ${var.output_directory}/${var.vm_name}"
    ]
  }
}
