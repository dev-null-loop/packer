# OCI Templates (work-in-progress)

Oracle Cloud Infrastructure (OCI) compatible templates.

## Prerequisites
- Fedora Linux 40+ | Oracle Linux 10+ | CentOS Stream | RHEL 10+ workstation.
- [Packer](https://www.packer.io/)
- [libguestfs](https://www.libguestfs.org/)
- [TigerVNC](https://tigervnc.org/)

## Installation
Run the following commands:

	$ sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
	$ sudo dnf install -y tigervnc guestfs-tools qemu-img qemu-kvm dnf-plugins-core packer
	$ sudo cp /usr/libexec/qemu-kvm /usr/bin/qemu-system-x86_64

## Building
Change directory to `win2k22`,  modify `variables.auto.pkrvars.hcl` to fit your current setup. Make sure all parameters (e.g `disk_size`, `http_port_max`, `http_port_min`, `iso_url`) are set accordingly.
Then run:

`PACKER_LOG=1 packer build .`

while still in that folder.

The building should take about 25-30 minutes to finish.

## NOTES
The `qemu-kvm` binary which is shipped with Oracle Linux 9 does not come with precompiled GUI features (like `gtk` or `sdl`).
So in order to actually see the progress of the build try to use `["-display", "vnc=localhost:0"]]` arg for `qemuargs` attribute in the templates and run
`vncviewer localhost:0` in another terminal to visualize it.


## ERRORS

- `2025/02/11 17:59:07 Directory "/home/bd/.config/packer/plugins" does not exist, the plugin likely isn't installed locally yet.`
### FIX: install [QEMU](https://developer.hashicorp.com/packer/integrations/hashicorp/qemu)

- `Build 'qemu.win11-x64' errored after 646 microseconds: Failed creating Qemu driver: exec: "qemu-system-x86_64": executable file not found in $PATH`
### FIX: `sudo dnf install -y qemu-kvm`

- `Build 'qemu.win11-x64' errored after 624 microseconds: Failed creating Qemu driver: exec: "qemu-img": executable file not found in $PATH`
### FIX: `sudo dnf install -y qemu-img`

- https://learn.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys?tabs=server2019%2Cwindows1110ltsc%2Cversion1803%2Cwindows81
- Windows Server 2019 Standard: N69G4-B89J2-4G8F4-WWYCC-J464C
- [Packer hangs on Waiting for WinRM even after the WinRM service has begun running.  #11885](https://github.com/hashicorp/packer/issues/11885)
