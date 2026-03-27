build {
  source "qemu.OracleLinux-R9-U0-x86_64" {}

  post-processor "shell-local" {
    inline = [
      "virt-sysprep -a ${var.output_directory}/${var.vm_name}"
    ]
  }
}
