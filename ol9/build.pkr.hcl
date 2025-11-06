build {
  source "qemu.ol9-x64" {}

  post-processor "shell-local" {
    inline = [
      "virt-sysprep -a ${var.output_directory}/${var.vm_name}"
    ]
  }
}
