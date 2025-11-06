boot_command     = ["<up><tab> net.ifnames=1 inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ol8-x64.ks <enter>"]
boot_wait        = "5s"
disk_size        = 4096
format           = "qcow2"
headless         = "false"
http_port_max    = 8888
http_port_min    = 8888
iso_checksum     = "none"
iso_url          = "/home/bd/iso/OracleLinux-R8-U7-x86_64-dvd.iso"
output_directory = "ol8-x64-{{isotime `20060102`}}"
qemuargs         = [["-m", "2048"], ["-display", "vnc=localhost:0"]]
shutdown_command = "echo \"uname -a > /etc/buildID; date +%Y%m%d >> /etc/buildID; rpm -qa | sort > /etc/packages.log; sed -i '/uname/d' /etc/rc.d/rc.local && shutdown -h now\" >> /etc/rc.d/rc.local; reboot"
skip_compaction  = false
disk_compression = true
ssh_password     = "ZAQ!2wsxCDE#4rfv"
ssh_username     = "root"
ssh_wait_timeout = "15m"
vm_name          = "{{build_name}}-{{isotime `20060102`}}.qcow2"
net_device       = "virtio-net"
disk_interface   = "virtio-scsi"
