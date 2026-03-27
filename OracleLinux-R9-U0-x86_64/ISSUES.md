- when using `part / --fstype=xfs --size=100 --grow --asprimary` the following happens:

	``` shell
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local): Running local shell script: /tmp/packer-shell92045555
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local): [   0.0] Examining the guest ...
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local): virt-sysprep: error: no operating systems were found in the guest image
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local):
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local): If reporting bugs, run virt-sysprep with debugging enabled and include the complete output:
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local):
	==> qemu.OracleLinux-R9-U0-x86_64 (shell-local):   virt-sysprep -v -x [...]
	2026/03/27 16:21:59 packer-post-processor-shell-local plugin: error: Script exited with non-zero exit status: 1. Allowed exit codes are: [0]
	2026/03/27 16:21:59 [INFO] (telemetry) ending shell-local
	2026/03/27 16:21:59 Deleting original artifact for build 'qemu.OracleLinux-R9-U0-x86_64'

	* Post-processor failed: Script exited with non-zero exit status: 1. Allowed exit codes are: [0]
	==> Wait completed after 7 minutes 57 seconds
	2026/03/27 16:21:59 machine readable: error-count []string{"1"}
	==> Some builds didn't complete successfully and had errors:
	2026/03/27 16:21:59 machine readable: qemu.OracleLinux-R9-U0-x86_64,error []string{"1 error(s) occurred:\n\n* Post-processor failed: Script exited with non-zero exit status: 1. Allowed exit codes are: [0]"}

	* Post-processor failed: Script exited with non-zero exit status: 1. Allowed exit codes are: [0]
	==> Builds finished but no artifacts were created.
	2026/03/27 16:21:59 [INFO] (telemetry) Finalizing.
	Build 'qemu.OracleLinux-R9-U0-x86_64' errored after 7 minutes 57 seconds: 1 error(s) occurred:

	* Post-processor failed: Script exited with non-zero exit status: 1. Allowed exit codes are: [0]

	==> Wait completed after 7 minutes 57 seconds

	==> Some builds didn't complete successfully and had errors:
	--> qemu.OracleLinux-R9-U0-x86_64: 1 error(s) occurred:

	* Post-processor failed: Script exited with non-zero exit status: 1. Allowed exit codes are: [0]

	==> Builds finished but no artifacts were created.
	2026/03/27 16:22:00 waiting for all plugin processes to complete...
	```
- output

	``` shell
	$ virt-filesystems --all --long --parts --blkdevs -h -a OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2
	Name       Type        VFS  Label  MBR  Size  Parent
	/dev/sda1  filesystem  xfs  -      -    4.0G  -
	/dev/sda1  partition   -    -      83   4.0G  /dev/sda
	/dev/sda   device      -    -      -    4.0G  -
	```
