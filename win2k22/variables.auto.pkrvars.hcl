disk_compression = true
disk_interface   = "virtio-scsi"
disk_size        = 16384
floppy_dirs = [
  "floppy/drivers/virtio/vioscsi",
  "floppy/drivers/virtio/NetKVM"
]
floppy_files = [
  "floppy/scripts/WinRM.ps1",
  "floppy/scripts/autounattend.xml",
  "floppy/scripts/SETUP.BAT",
  "floppy/scripts/sysprep.xml",
  "floppy/scripts/unattend.xml"
]
format           = "qcow2"
headless         = false
http_port_max    = 8888
http_port_min    = 8888
iso_url          = "/home/bd/iso/SERVER_EVAL_x64FRE_en-us.iso"
iso_checksum     = "none"
net_device       = "virtio-net-pci"
output_directory = "win2k22-x64-{{isotime `20060102`}}"
qemuargs = [
  ["-m", "2048"],
  ["-cpu", "host"]
]
shutdown_command = "C:\\Windows\\System32\\Sysprep\\sysprep /generalize /oobe /shutdown /unattend:\"A:\\sysprep.xml\""
skip_compaction  = false
vm_name          = "{{build_name}}-{{isotime `20060102`}}.qcow2"
winrm_username   = "Administrator"
winrm_password   = "Administrator"
winrm_timeout    = "15m"
