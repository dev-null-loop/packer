# Packer OCI Templates

Packer templates for Windows 2022 Server.

## Prerequisites
- A Fedora Linux 40+ workstation.
- [Packer](https://www.packer.io/)
- [libguestfs](https://www.libguestfs.org/)
- [TigerVNC](https://tigervnc.org/)

## Installation
Run the following commands:

	$ sudo dnf install guestfs-tools
	$ wget https://releases.hashicorp.com/packer/1.8.6/packer_1.8.6_linux_amd64.zip
	$ unzip packer_1.8.6_linux_amd64.zip
	$ sudo mv packer /usr/bin
	$ sudo dnf install qemu-kvm
	$ sudo cp /usr/libexec/qemu-kvm /usr/bin/qemu-system-x86_64
	$ sudo dnf install tigervnc

## Building the images
Cd `win2k22`, modify `variables.auto.pkrvars.hcl` to fit your current setup. Make sure all parameters (e.g `disk_size`, `http_port_max`, `http_port_min`, `iso_url`) are set accordingly.
Then run:

`PACKER_LOG=1 packer build .`

while still in that folder.

The building should take about 15 to 30 minutes to finish.

## Note
The `qemu-kvm` binary which is shipped with Oracle Linux 9 does not come with precompiled GUI features (like `gtk` or `sdl`).
So in order to actually see the progress of the build we use `["-display", "vnc=localhost:0"]]` in our packer templates and run
`vncviewer localhost:0` in another terminal on the same bare metal to display it.


ERROR:

``` shell
2025/02/11 17:59:07 Directory "/home/bd/.config/packer/plugins" does not exist, the plugin likely isn't installed locally yet.
```
FIX: install [QEMU](https://developer.hashicorp.com/packer/integrations/hashicorp/qemu)

ERROR:

``` shell
Build 'qemu.win11-x64' errored after 646 microseconds: Failed creating Qemu driver: exec: "qemu-system-x86_64": executable file not found in $PATH
```
FIX:

``` shell
sudo dnf install -y qemu-kvm
```

ERROR:

``` shell
Build 'qemu.win11-x64' errored after 624 microseconds: Failed creating Qemu driver: exec: "qemu-img": executable file not found in $PATH
```
FIX:

``` shell
sudo dnf install -y qemu-img
```


https://learn.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys?tabs=server2019%2Cwindows1110ltsc%2Cversion1803%2Cwindows81

Windows Server LTSC

Windows Server 2019 Standard: N69G4-B89J2-4G8F4-WWYCC-J464C

[Packer hangs on Waiting for WinRM even after the WinRM service has begun running.  #11885](https://github.com/hashicorp/packer/issues/11885)


2025/02/21 16:12:16 packer-plugin-qemu_v1.1.1_x5.0_linux_amd64 plugin: 2025/02/21 16:12:16 closing
	qemu.win2k22-x64: unattend.xml 3.21 KiB / 3.21 KiB  100.00% 7s
2025/02/21 16:12:16 [INFO] (telemetry) ending file
==> qemu.win2k22-x64: Gracefully halting virtual machine...
2025/02/21 16:12:16 packer-plugin-qemu_v1.1.1_x5.0_linux_amd64 plugin: 2025/02/21 16:12:16 Executing shutdown command: C:\Windows\System32\Sysprep\sysprep /generalize /oobe /shutdown /unattend:"A:\sysprep.xml"
2025/02/21 16:12:17 packer-plugin-qemu_v1.1.1_x5.0_linux_amd64 plugin: 2025/02/21 16:12:17 [INFO] starting remote command: C:\Windows\System32\Sysprep\sysprep /generalize /oobe /shutdown /unattend:"A:\sysprep.xml"
2025/02/21 16:13:06 packer-plugin-qemu_v1.1.1_x5.0_linux_amd64 plugin: 2025/02/21 16:13:06 [INFO] command 'C:\Windows\System32\Sysprep\sysprep /generalize /oobe /shutdown /unattend:"A:\sysprep.xml"' exited with code: 0
2025/02/21 16:13:06 packer-plugin-qemu_v1.1.1_x5.0_linux_amd64 plugin: 2025/02/21 16:13:06 Waiting max 5m0s for shutdown to complete
2025/02/21 16:13:13 packer-plugin-qemu_v1.1.1_x5.0_linux_amd64 plugin: 2025/02/21 16:13:13 VM shut down.


DONE Modificat driverele:win10 -> win2k22
virtio-win-0.1.266  : NetKVM regression - network adapter not recognized on 2k22
virtio-win-0.1.262-1: NetKVM regression - network adapter not recognized on 2k22
0.1.248 drivers: OK
