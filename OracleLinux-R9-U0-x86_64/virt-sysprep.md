``` shell
$ virt-sysprep -vxa OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2
[   0.0] Examining the guest ...
libguestfs: trace: set_verbose true
libguestfs: trace: set_verbose = 0
libguestfs: trace: set_network false
libguestfs: trace: set_network = 0
libguestfs: trace: add_drive "OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2" "readonly:false" "protocol:file" "discard:besteffort"
libguestfs: trace: add_drive = 0
libguestfs: trace: launch
libguestfs: trace: max_disks
libguestfs: trace: max_disks = 255
libguestfs: trace: get_tmpdir
libguestfs: trace: get_tmpdir = "/tmp"
libguestfs: trace: version
libguestfs: trace: version = <struct guestfs_version = major: 1, minor: 56, release: 2, extra: fedora=42,release=2.fc42,libvirt, >
libguestfs: trace: get_backend
libguestfs: trace: get_backend = "libvirt"
libguestfs: launch: program=virt-sysprep
libguestfs: launch: version=1.56.2fedora=42,release=2.fc42,libvirt
libguestfs: launch: backend registered: direct
libguestfs: launch: backend registered: libvirt
libguestfs: launch: backend=libvirt
libguestfs: launch: tmpdir=/tmp/libguestfsyJFhIb
libguestfs: launch: umask=0022
libguestfs: launch: euid=1000
libguestfs: launch: host: Linux o10 6.18.12-100.fc42.x86_64 #1 SMP PREEMPT_DYNAMIC Mon Feb 16 20:02:34 UTC 2026 x86_64
libguestfs: libvirt version = 11000000 (11.0.0)
libguestfs: guest random name = guestfs-qye501jl8lty0bzu
libguestfs: connect to libvirt
libguestfs: opening libvirt handle: URI = qemu:///session, auth = default+wrapper, flags = 0
libguestfs: successfully opened libvirt handle: conn = 0x5555e32fcd00
libguestfs: qemu version (reported by libvirt) = 9002004 (9.2.4)
libguestfs: get libvirt capabilities
libguestfs: parsing capabilities XML
libguestfs: trace: get_backend_setting "force_kvm"
libguestfs: trace: get_backend_setting = NULL (error)
libguestfs: trace: get_backend_setting "force_tcg"
libguestfs: trace: get_backend_setting = NULL (error)
libguestfs: parsing domcapabilities XML
libguestfs: trace: get_backend_setting "internal_libvirt_label"
libguestfs: trace: get_backend_setting = NULL (error)
libguestfs: trace: get_backend_setting "internal_libvirt_imagelabel"
libguestfs: trace: get_backend_setting = NULL (error)
libguestfs: trace: get_backend_setting "internal_libvirt_norelabel_disks"
libguestfs: trace: get_backend_setting = NULL (error)
libguestfs: build appliance
libguestfs: trace: get_cachedir
libguestfs: trace: get_cachedir = "/var/tmp"
libguestfs: begin building supermin appliance
libguestfs: run supermin
libguestfs: command: run: /usr/bin/supermin
libguestfs: command: run: \ --build
libguestfs: command: run: \ --verbose
libguestfs: command: run: \ --if-newer
libguestfs: command: run: \ --lock /var/tmp/.guestfs-1000/lock
libguestfs: command: run: \ --copy-kernel
libguestfs: command: run: \ -f ext2
libguestfs: command: run: \ --host-cpu x86_64
libguestfs: command: run: \ /usr/lib64/guestfs/supermin.d
libguestfs: command: run: \ -o /var/tmp/.guestfs-1000/appliance.d
supermin: version: 5.3.5
supermin: rpm: detected RPM version 4.20
supermin: rpm: detected RPM architecture x86_64
supermin: package handler: fedora/rpm
supermin: acquiring lock on /var/tmp/.guestfs-1000/lock
supermin: if-newer: output does not need rebuilding
libguestfs: finished building supermin appliance
libguestfs: trace: disk_create "/tmp/libguestfsyJFhIb/overlay1.qcow2" "qcow2" -1 "backingfile:/var/tmp/.guestfs-1000/appliance.d/root"
libguestfs: trace: disk_format "/var/tmp/.guestfs-1000/appliance.d/root"
libguestfs: command: run: qemu-img --help | grep -sqE -- '\binfo\b.*-U\b'
libguestfs: command: run: qemu-img
libguestfs: command: run: \ info
libguestfs: command: run: \ -U
libguestfs: command: run: \ --output json
libguestfs: command: run: \ /var/tmp/.guestfs-1000/appliance.d/root
libguestfs: parse_json: qemu-img info JSON output:\n{\n    "children": [\n        {\n            "name": "file",\n            "info": {\n                "children": [\n                ],\n                "virtual-size": 4294967296,\n                "filename": "/var/tmp/.guestfs-1000/appliance.d/root",\n                "format": "file",\n                "actual-size": 465993728,\n                "format-specific": {\n                    "type": "file",\n                    "data": {\n                    }\n                },\n                "dirty-flag": false\n            }\n        }\n    ],\n    "virtual-size": 4294967296,\n    "filename": "/var/tmp/.guestfs-1000/appliance.d/root",\n    "format": "raw",\n    "actual-size": 465993728,\n    "dirty-flag": false\n}\n\n
libguestfs: trace: disk_format = "raw"
libguestfs: command: run: qemu-img
libguestfs: command: run: \ create
libguestfs: command: run: \ -f qcow2
libguestfs: command: run: \ -o backing_file=/var/tmp/.guestfs-1000/appliance.d/root,backing_fmt=raw
libguestfs: command: run: \ /tmp/libguestfsyJFhIb/overlay1.qcow2
libguestfs: Formatting '/tmp/libguestfsyJFhIb/overlay1.qcow2', fmt=qcow2 cluster_size=65536 extended_l2=off compression_type=zlib size=4294967296 backing_file=/var/tmp/.guestfs-1000/appliance.d/root backing_fmt=raw lazy_refcounts=off refcount_bits=16\n
libguestfs: trace: disk_create = 0
libguestfs: trace: get_sockdir
libguestfs: trace: get_sockdir = "/run/user/1000"
libguestfs: create libvirt XML
libguestfs: trace: disk_format "OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2"
libguestfs: command: run: qemu-img
libguestfs: command: run: \ info
libguestfs: command: run: \ -U
libguestfs: command: run: \ --output json
libguestfs: command: run: \ ./OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2
libguestfs: parse_json: qemu-img info JSON output:\n{\n    "children": [\n        {\n            "name": "file",\n            "info": {\n                "children": [\n                ],\n                "virtual-size": 1009210368,\n                "filename": "./OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2",\n                "format": "file",\n                "actual-size": 1002729472,\n                "format-specific": {\n                    "type": "file",\n                    "data": {\n                    }\n                },\n                "dirty-flag": false\n            }\n        }\n    ],\n    "virtual-size": 4294967296,\n    "filename": "./OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2",\n    "cluster-size": 65536,\n    "format": "qcow2",\n    "actual-size": 1002729472,\n    "format-specific": {\n        "type": "qcow2",\n        "data": {\n            "compat": "1.1",\n            "compression-type": "zlib",\n            "lazy-refcounts": false,\n            "refcount-bits": 16,\n            "corrupt": false,\n            "extended-l2": false\n        }\n    },\n    "dirty-flag": false\n}\n\n
libguestfs: trace: disk_format = "qcow2"
libguestfs: trace: get_cachedir
libguestfs: trace: get_cachedir = "/var/tmp"
libguestfs: libvirt XML:\n<?xml version="1.0"?>\n<domain type="kvm" xmlns:qemu="http://libvirt.org/schemas/domain/qemu/1.0">\n  <name>guestfs-qye501jl8lty0bzu</name>\n  <memory unit="MiB">1280</memory>\n  <currentMemory unit="MiB">1280</currentMemory>\n  <cpu mode="maximum">\n    <feature policy="disable" name="la57"/>\n  </cpu>\n  <vcpu>1</vcpu>\n  <features>\n    <acpi/>\n  </features>\n  <clock offset="utc">\n    <timer name="rtc" tickpolicy="catchup"/>\n    <timer name="pit" tickpolicy="delay"/>\n    <timer name="hpet" present="no"/>\n  </clock>\n  <os>\n    <type machine="q35">hvm</type>\n    <kernel>/var/tmp/.guestfs-1000/appliance.d/kernel</kernel>\n    <initrd>/var/tmp/.guestfs-1000/appliance.d/initrd</initrd>\n    <cmdline>panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb</cmdline>\n    <bios useserial="yes"/>\n  </os>\n  <seclabel type="none"/>\n  <on_reboot>destroy</on_reboot>\n  <devices>\n    <emulator>/usr/bin/qemu-kvm</emulator>\n    <rng model="virtio">\n      <backend model="random">/dev/urandom</backend>\n    </rng>\n    <controller type="scsi" index="0" model="virtio-scsi"/>\n    <disk device="disk" type="file">\n      <source file="packer/OracleLinux-R9-U0-x86_64/OracleLinux-R9-U0-x86_64-20260327/OracleLinux-R9-U0-x86_64-20260327.qcow2"/>\n      <target dev="sda" bus="scsi"/>\n      <driver name="qemu" type="qcow2" cache="writeback" discard="unmap"/>\n      <address type="drive" controller="0" bus="0" target="0" unit="0"/>\n    </disk>\n    <disk type="file" device="disk">\n      <source file="/tmp/libguestfsyJFhIb/overlay1.qcow2"/>\n      <target dev="sdb" bus="scsi"/>\n      <driver name="qemu" type="qcow2" cache="unsafe"/>\n      <address type="drive" controller="0" bus="0" target="1" unit="0"/>\n    </disk>\n    <serial type="unix">\n      <source mode="connect" path="/run/user/1000/libguestfsDfQ58g/console.sock"/>\n      <target port="0"/>\n    </serial>\n    <channel type="unix">\n      <source mode="connect" path="/run/user/1000/libguestfsDfQ58g/guestfsd.sock"/>\n      <target type="virtio" name="org.libguestfs.channel.0"/>\n    </channel>\n    <controller type="usb" model="none"/>\n    <memballoon model="none"/>\n  </devices>\n  <qemu:commandline>\n    <qemu:env name="TMPDIR" value="/var/tmp"/>\n  </qemu:commandline>\n</domain>\n
libguestfs: trace: get_cachedir
libguestfs: trace: get_cachedir = "/var/tmp"
libguestfs: command: run: ls
libguestfs: command: run: \ -a
libguestfs: command: run: \ -l
libguestfs: command: run: \ -R
libguestfs: command: run: \ -Z /var/tmp/.guestfs-1000
libguestfs: /var/tmp/.guestfs-1000:
libguestfs: total 0
libguestfs: drwxr-xr-x. 1 bd   bd   unconfined_u:object_r:initrc_tmp_t:s0   30 Mar 27 16:59 .
libguestfs: drwxrwxrwt. 1 root root system_u:object_r:tmp_t:s0            1966 Mar 27 16:59 ..
libguestfs: drwxr-xr-x. 1 bd   bd   unconfined_u:object_r:initrc_tmp_t:s0   32 Mar 27 16:41 appliance.d
libguestfs: -rw-r--r--. 1 bd   bd   unconfined_u:object_r:initrc_tmp_t:s0    0 Mar 23 18:19 lock
libguestfs:
libguestfs: /var/tmp/.guestfs-1000/appliance.d:
libguestfs: total 482096
libguestfs: drwxr-xr-x. 1 bd bd unconfined_u:object_r:initrc_tmp_t:s0         32 Mar 27 16:41 .
libguestfs: drwxr-xr-x. 1 bd bd unconfined_u:object_r:initrc_tmp_t:s0         30 Mar 27 16:59 ..
libguestfs: -rw-r--r--. 1 bd bd unconfined_u:object_r:initrc_tmp_t:s0    9311744 Mar 27 16:59 initrd
libguestfs: -rwxr-xr-x. 1 bd bd unconfined_u:object_r:initrc_tmp_t:s0   18356264 Mar 27 16:59 kernel
libguestfs: -rw-r--r--. 1 bd bd unconfined_u:object_r:initrc_tmp_t:s0 4294967296 Mar 27 16:59 root
libguestfs: command: run: ls
libguestfs: command: run: \ -a
libguestfs: command: run: \ -l
libguestfs: command: run: \ -Z /run/user/1000/libguestfsDfQ58g
libguestfs: total 0
libguestfs: drwx------.  2 bd bd unconfined_u:object_r:user_tmp_t:s0  80 Mar 27 16:59 .
libguestfs: drwx------. 14 bd bd unconfined_u:object_r:user_tmp_t:s0 420 Mar 27 16:59 ..
libguestfs: srwxr-xr-x.  1 bd bd unconfined_u:object_r:user_tmp_t:s0   0 Mar 27 16:59 console.sock
libguestfs: srwxr-xr-x.  1 bd bd unconfined_u:object_r:user_tmp_t:s0   0 Mar 27 16:59 guestfsd.sock
libguestfs: launch libvirt guest
\x1bc\x1b[?7l\x1b[2J\x1b[0mSeaBIOS (version 1.17.0-8.fc42)
Machine UUID 9b2df37a-acac-448c-b9ca-debd22026172
Booting from ROM..\x1bc\x1b[?7l\x1b[2J[    0.000000] Linux version 6.18.12-100.fc42.x86_64 (mockbuild@8c5081d49c024802b0d57bf7804c3d68) (gcc (GCC) 15.2.1 20260123 (Red Hat 15.2.1-7), GNU ld version 2.44-12.fc42) #1 SMP PREEMPT_DYNAMIC Mon Feb 16 20:02:34 UTC 2026
[    0.000000] Command line: panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000004ffdcfff] usable
[    0.000000] BIOS-e820: [mem 0x000000004ffdd000-0x000000004fffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000b0000000-0x00000000bfffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed1c000-0x00000000fed1ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000feffc000-0x00000000feffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fffc0000-0x00000000ffffffff] reserved
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] APIC: Static calls initialized
[    0.000000] SMBIOS 2.8 present.
[    0.000000] DMI: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.17.0-8.fc42 06/10/2025
[    0.000000] DMI: Memory slots populated: 1/1
[    0.000000] Hypervisor detected: KVM
[    0.000000] last_pfn = 0x4ffdd max_arch_pfn = 0x400000000
[    0.000000] kvm-clock: Using msrs 4b564d01 and 4b564d00
[    0.000001] kvm-clock: using sched offset of 231071325 cycles
[    0.000003] clocksource: kvm-clock: mask: 0xffffffffffffffff max_cycles: 0x1cd42e4dffb, max_idle_ns: 881590591483 ns
[    0.000006] tsc: Detected 2303.996 MHz processor
[    0.000397] last_pfn = 0x4ffdd max_arch_pfn = 0x400000000
[    0.000426] MTRR map: 4 entries (3 fixed + 1 variable; max 19), built from 8 variable MTRRs
[    0.000429] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT
[    0.007618] found SMP MP-table at [mem 0x000f54e0-0x000f54ef]
[    0.007635] Using GB pages for direct mapping
[    0.007867] RAMDISK: [mem 0x4f6ee000-0x4ffcffff]
[    0.007892] ACPI: Early table checksum verification disabled
[    0.007895] ACPI: RSDP 0x00000000000F5330 000014 (v00 BOCHS )
[    0.007899] ACPI: RSDT 0x000000004FFE24FC 000034 (v01 BOCHS  BXPC     00000001 BXPC 00000001)
[    0.007905] ACPI: FACP 0x000000004FFE232C 0000F4 (v03 BOCHS  BXPC     00000001 BXPC 00000001)
[    0.007912] ACPI: DSDT 0x000000004FFE0040 0022EC (v01 BOCHS  BXPC     00000001 BXPC 00000001)
[    0.007915] ACPI: FACS 0x000000004FFE0000 000040
[    0.007918] ACPI: APIC 0x000000004FFE2420 000078 (v03 BOCHS  BXPC     00000001 BXPC 00000001)
[    0.007922] ACPI: MCFG 0x000000004FFE2498 00003C (v01 BOCHS  BXPC     00000001 BXPC 00000001)
[    0.007925] ACPI: WAET 0x000000004FFE24D4 000028 (v01 BOCHS  BXPC     00000001 BXPC 00000001)
[    0.007928] ACPI: Reserving FACP table memory at [mem 0x4ffe232c-0x4ffe241f]
[    0.007929] ACPI: Reserving DSDT table memory at [mem 0x4ffe0040-0x4ffe232b]
[    0.007930] ACPI: Reserving FACS table memory at [mem 0x4ffe0000-0x4ffe003f]
[    0.007931] ACPI: Reserving APIC table memory at [mem 0x4ffe2420-0x4ffe2497]
[    0.007931] ACPI: Reserving MCFG table memory at [mem 0x4ffe2498-0x4ffe24d3]
[    0.007932] ACPI: Reserving WAET table memory at [mem 0x4ffe24d4-0x4ffe24fb]
[    0.008545] No NUMA configuration found
[    0.008546] Faking a node at [mem 0x0000000000000000-0x000000004ffdcfff]
[    0.008560] NODE_DATA(0) allocated [mem 0x4f6c3280-0x4f6edfff]
[    0.008771] Zone ranges:
[    0.008772]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.008774]   DMA32    [mem 0x0000000001000000-0x000000004ffdcfff]
[    0.008775]   Normal   empty
[    0.008776]   Device   empty
[    0.008777] Movable zone start for each node
[    0.008779] Early memory node ranges
[    0.008780]   node   0: [mem 0x0000000000001000-0x000000000009efff]
[    0.008781]   node   0: [mem 0x0000000000100000-0x000000004ffdcfff]
[    0.008782] Initmem setup node 0 [mem 0x0000000000001000-0x000000004ffdcfff]
[    0.008914] On node 0, zone DMA: 1 pages in unavailable ranges
[    0.008931] On node 0, zone DMA: 97 pages in unavailable ranges
[    0.011729] On node 0, zone DMA32: 35 pages in unavailable ranges
[    0.013039] ACPI: PM-Timer IO Port: 0x608
[    0.013058] ACPI: LAPIC_NMI (acpi_id[0xff] dfl dfl lint[0x1])
[    0.013090] IOAPIC[0]: apic_id 0, version 17, address 0xfec00000, GSI 0-23
[    0.013094] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.013096] ACPI: INT_SRC_OVR (bus 0 bus_irq 5 global_irq 5 high level)
[    0.013097] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.013098] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 high level)
[    0.013099] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 high level)
[    0.013103] ACPI: Using ACPI (MADT) for SMP configuration information
[    0.013105] TSC deadline timer available
[    0.013110] CPU topo: Max. logical packages:   1
[    0.013110] CPU topo: Max. logical dies:       1
[    0.013111] CPU topo: Max. dies per package:   1
[    0.013115] CPU topo: Max. threads per core:   1
[    0.013116] CPU topo: Num. cores per package:     1
[    0.013116] CPU topo: Num. threads per package:   1
[    0.013117] CPU topo: Allowing 1 present CPUs plus 0 hotplug CPUs
[    0.013141] kvm-guest: APIC: eoi() replaced with kvm_guest_apic_eoi_write()
[    0.013162] PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.013163] PM: hibernation: Registered nosave memory: [mem 0x0009f000-0x000fffff]
[    0.013165] [mem 0x50000000-0xafffffff] available for PCI devices
[    0.013166] Booting paravirtualized kernel on KVM
[    0.013174] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
[    0.020640] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:1 nr_cpu_ids:1 nr_node_ids:1
[    0.020865] percpu: Embedded 84 pages/cpu s221184 r8192 d114688 u2097152
[    0.020901] kvm-guest: PV spinlocks disabled, single CPU
[    0.020903] Kernel command line: panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb
[    0.021055] cgroup: Disabling memory control group subsystem
[    0.021120] Unknown kernel command line parameters "edd=off udevtimeout=6000 guestfs_verbose=1", will be passed to user space.
[    0.021145] random: crng init done
[    0.021146] printk: log buffer data + meta data: 262144 + 917504 = 1179648 bytes
[    0.021349] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.021402] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.021442] Fallback order for Node 0: 0
[    0.021445] Built 1 zonelists, mobility grouping on.  Total pages: 327547
[    0.021446] Policy zone: DMA32
[    0.021679] mem auto-init: stack:all(zero), heap alloc:on, heap free:off
[    0.025104] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.035022] ftrace: allocating 62630 entries in 248 pages
[    0.035025] ftrace: allocated 248 pages with 5 groups
[    0.035727] Dynamic Preempt: lazy
[    0.035866] rcu: Preemptible hierarchical RCU implementation.
[    0.035867] rcu: \tRCU event tracing is enabled.
[    0.035867] rcu: \tRCU restricting CPUs from NR_CPUS=8192 to nr_cpu_ids=1.
[    0.035869] \tTrampoline variant of Tasks RCU enabled.
[    0.035869] \tRude variant of Tasks RCU enabled.
[    0.035869] \tTracing variant of Tasks RCU enabled.
[    0.035870] rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
[    0.035871] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=1
[    0.035879] RCU Tasks: Setting shift to 0 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=1.
[    0.035881] RCU Tasks Rude: Setting shift to 0 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=1.
[    0.035882] RCU Tasks Trace: Setting shift to 0 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=1.
[    0.041644] NR_IRQS: 524544, nr_irqs: 256, preallocated irqs: 16
[    0.041840] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    0.041960] kfence: initialized - using 2097152 bytes for 255 objects at 0x(____ptrval____)-0x(____ptrval____)
[    0.042100] Console: colour *CGA 80x25
[    0.042152] printk: legacy console [ttyS0] enabled
[    0.180448] ACPI: Core revision 20250807
[    0.181209] APIC: Switch to symmetric I/O mode setup
[    0.182214] x2apic enabled
[    0.182919] APIC: Switched APIC routing to: physical x2apic
[    0.184567] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x2135f449559, max_idle_ns: 440795312421 ns
[    0.186429] Calibrating delay loop (skipped) preset value.. 4607.99 BogoMIPS (lpj=2303996)
[    0.187425] x86/cpu: User Mode Instruction Prevention (UMIP) activated
[    0.187425] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
[    0.187425] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
[    0.187425] mitigations: Enabled attack vectors: user_kernel, user_user, guest_host, guest_guest, SMT mitigations: auto
[    0.187425] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
[    0.187425] SRBDS: Unknown: Dependent on hypervisor status
[    0.187425] Spectre V2 : Mitigation: Enhanced / Automatic IBRS
[    0.187425] RETBleed: Mitigation: Enhanced IBRS
[    0.187425] ITS: Mitigation: Aligned branch/return thunks
[    0.187425] MMIO Stale Data: Mitigation: Clear CPU buffers
[    0.187425] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    0.187425] Spectre V2 : Spectre v2 / PBRSB-eIBRS: Retire a single CALL on VMEXIT
[    0.187425] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    0.187425] active return thunk: its_return_thunk
[    0.187425] Spectre V2 : Spectre BHI mitigation: SW BHB clearing on syscall and VM exit
[    0.187425] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    0.187425] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.187425] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.187425] x86/fpu: Supporting XSAVE feature 0x008: 'MPX bounds registers'
[    0.187425] x86/fpu: Supporting XSAVE feature 0x010: 'MPX CSR'
[    0.187425] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.187425] x86/fpu: xstate_offset[3]:  832, xstate_sizes[3]:   64
[    0.187425] x86/fpu: xstate_offset[4]:  896, xstate_sizes[4]:   64
[    0.187425] x86/fpu: Enabled xstate features 0x1f, context size is 960 bytes, using 'compacted' format.
[    0.187425] Freeing SMP alternatives memory: 56K
[    0.187425] pid_max: default: 32768 minimum: 301
[    0.187425] LSM: initializing lsm=lockdown,capability,yama,bpf,landlock,ipe,ima,evm
[    0.187425] Yama: becoming mindful.
[    0.187425] LSM support for eBPF active
[    0.187425] landlock: Up and running.
[    0.187425] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.187425] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.187425] smpboot: CPU0: Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz (family: 0x6, model: 0x8e, stepping: 0xc)
[    0.187740] Performance Events: Skylake events, full-width counters, Intel PMU driver.
[    0.188432] ... version:                   2
[    0.189113] ... bit width:                 48
[    0.189431] ... generic counters:          4
[    0.190197] ... generic bitmap:            000000000000000f
[    0.190453] ... fixed-purpose counters:    3
[    0.191260] ... fixed-purpose bitmap:      0000000000000007
[    0.191429] ... value mask:                0000ffffffffffff
[    0.192390] ... max period:                00007fffffffffff
[    0.192429] ... global_ctrl mask:          000000070000000f
[    0.193523] signal: max sigframe size: 2032
[    0.194342] rcu: Hierarchical SRCU implementation.
[    0.194449] rcu: \tMax phase no-delay instances is 400.
[    0.197779] smp: Bringing up secondary CPUs ...
[    0.198441] smp: Brought up 1 node, 1 CPU
[    0.199203] smpboot: Total of 1 processors activated (4607.99 BogoMIPS)
[    0.199521] Memory: 1202156K/1310188K available (22264K kernel code, 4563K rwdata, 17544K rodata, 5156K init, 6016K bss, 99708K reserved, 0K cma-reserved)
[    0.200575] devtmpfs: initialized
[    0.201211] x86/mm: Memory block size: 128MB
[    0.201876] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
[    0.202473] posixtimers hash table entries: 512 (order: 1, 8192 bytes, linear)
[    0.203438] futex hash table entries: 256 (16384 bytes on 1 NUMA nodes, total 16 KiB, linear).
[    0.204499] pinctrl core: initialized pinctrl subsystem
[    0.205558] PM: RTC time: 14:59:56, date: 2026-03-27
[    0.206958] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.207582] DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
[    0.208443] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.209443] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.210455] audit: initializing netlink subsys (disabled)
[    0.211619] thermal_sys: Registered thermal governor 'fair_share'
[    0.211623] thermal_sys: Registered thermal governor 'bang_bang'
[    0.212443] audit: type=2000 audit(1774623597.397:1): state=initialized audit_enabled=0 res=1
[    0.214432] thermal_sys: Registered thermal governor 'step_wise'
[    0.214433] thermal_sys: Registered thermal governor 'user_space'
[    0.215451] cpuidle: using governor menu
[    0.217262] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.217582] PCI: ECAM [mem 0xb0000000-0xbfffffff] (base 0xb0000000) for domain 0000 [bus 00-ff]
[    0.218439] PCI: Using configuration type 1 for base access
[    0.219578] kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
[    0.226445] HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
[    0.227433] HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
[    0.232440] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    0.233436] HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
[    0.240862] raid6: skipped pq benchmark and selected avx2x4
[    0.241437] raid6: using avx2x2 recovery algorithm
[    0.242403] ACPI: Added _OSI(Module Device)
[    0.242435] ACPI: Added _OSI(Processor Device)
[    0.243279] ACPI: Added _OSI(Processor Aggregator Device)
[    0.250496] ACPI: 1 ACPI AML tables successfully acquired and loaded
[    0.261743] ACPI: Interpreter enabled
[    0.262443] ACPI: PM: (supports S0 S3 S4 S5)
[    0.263253] ACPI: Using IOAPIC for interrupt routing
[    0.267536] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.268429] PCI: Ignoring E820 reservations for host bridge windows
[    0.273561] ACPI: Enabled 2 GPEs in block 00 to 3F
[    0.280509] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.284121] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI EDR HPX-Type3]
[    0.284484] acpi PNP0A08:00: _OSC: platform does not support [PCIeHotplug LTR DPC]
[    0.285513] acpi PNP0A08:00: _OSC: OS now controls [SHPCHotplug PME AER PCIeCapability]
[    0.288684] PCI host bridge to bus 0000:00
[    0.289430] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.292429] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.293430] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.296431] pci_bus 0000:00: root bus resource [mem 0x50000000-0xafffffff window]
[    0.297429] pci_bus 0000:00: root bus resource [mem 0xc0000000-0xfebfffff window]
[    0.300460] pci_bus 0000:00: root bus resource [mem 0x100000000-0x8ffffffff window]
[    0.301431] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.302795] pci 0000:00:00.0: [8086:29c0] type 00 class 0x060000 conventional PCI endpoint
[    0.304336] pci 0000:00:01.0: [1b36:000c] type 01 class 0x060400 PCIe Root Port
[    0.306049] pci 0000:00:01.0: BAR 0 [mem 0xfe200000-0xfe200fff]
[    0.306472] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.307481] pci 0000:00:01.0:   bridge window [mem 0xfe000000-0xfe1fffff]
[    0.309055] pci 0000:00:01.0:   bridge window [mem 0xfea00000-0xfebfffff 64bit pref]
[    0.309611] pci 0000:00:01.0: enabling Extended Tags
[    0.311630] pci 0000:00:01.1: [1b36:000c] type 01 class 0x060400 PCIe Root Port
[    0.314024] pci 0000:00:01.1: BAR 0 [mem 0xfe201000-0xfe201fff]
[    0.314457] pci 0000:00:01.1: PCI bridge to [bus 02]
[    0.315385] pci 0000:00:01.1:   bridge window [mem 0xfde00000-0xfdffffff]
[    0.316223] pci 0000:00:01.1:   bridge window [mem 0xfe800000-0xfe9fffff 64bit pref]
[    0.316562] pci 0000:00:01.1: enabling Extended Tags
[    0.318706] pci 0000:00:01.2: [1b36:000c] type 01 class 0x060400 PCIe Root Port
[    0.320445] pci 0000:00:01.2: BAR 0 [mem 0xfe202000-0xfe202fff]
[    0.321475] pci 0000:00:01.2: PCI bridge to [bus 03]
[    0.322514] pci 0000:00:01.2:   bridge window [mem 0xfdc00000-0xfddfffff]
[    0.323860] pci 0000:00:01.2:   bridge window [mem 0xfe600000-0xfe7fffff 64bit pref]
[    0.324619] pci 0000:00:01.2: enabling Extended Tags
[    0.326696] pci 0000:00:01.3: [1b36:000c] type 01 class 0x060400 PCIe Root Port
[    0.328963] pci 0000:00:01.3: BAR 0 [mem 0xfe203000-0xfe203fff]
[    0.329458] pci 0000:00:01.3: PCI bridge to [bus 04]
[    0.330493] pci 0000:00:01.3:   bridge window [mem 0xfda00000-0xfdbfffff]
[    0.331926] pci 0000:00:01.3:   bridge window [mem 0xfe400000-0xfe5fffff 64bit pref]
[    0.332576] pci 0000:00:01.3: enabling Extended Tags
[    0.334774] pci 0000:00:1f.0: [8086:2918] type 00 class 0x060100 conventional PCI endpoint
[    0.335934] pci 0000:00:1f.0: quirk: [io  0x0600-0x067f] claimed by ICH6 ACPI/GPIO/TCO
[    0.336774] pci 0000:00:1f.2: [8086:2922] type 00 class 0x010601 conventional PCI endpoint
[    0.338497] pci 0000:00:1f.2: BAR 4 [io  0xc040-0xc05f]
[    0.339390] pci 0000:00:1f.2: BAR 5 [mem 0xfe204000-0xfe204fff]
[    0.340000] pci 0000:00:1f.3: [8086:2930] type 00 class 0x0c0500 conventional PCI endpoint
[    0.341262] pci 0000:00:1f.3: BAR 4 [io  0x0700-0x073f]
[    0.342632] acpiphp: Slot [0] registered
[    0.343680] pci 0000:01:00.0: [1af4:1048] type 00 class 0x010000 PCIe Endpoint
[    0.345452] pci 0000:01:00.0: BAR 1 [mem 0xfe000000-0xfe000fff]
[    0.346465] pci 0000:01:00.0: BAR 4 [mem 0xfea00000-0xfea03fff 64bit pref]
[    0.347543] pci 0000:01:00.0: enabling Extended Tags
[    0.350761] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.352216] acpiphp: Slot [0-2] registered
[    0.352631] pci 0000:02:00.0: [1af4:1043] type 00 class 0x078000 PCIe Endpoint
[    0.354463] pci 0000:02:00.0: BAR 1 [mem 0xfde00000-0xfde00fff]
[    0.355520] pci 0000:02:00.0: BAR 4 [mem 0xfe800000-0xfe803fff 64bit pref]
[    0.356532] pci 0000:02:00.0: enabling Extended Tags
[    0.359605] pci 0000:00:01.1: PCI bridge to [bus 02]
[    0.361218] acpiphp: Slot [0-3] registered
[    0.361713] pci 0000:03:00.0: [1af4:1044] type 00 class 0x00ff00 PCIe Endpoint
[    0.363385] pci 0000:03:00.0: BAR 1 [mem 0xfdc00000-0xfdc00fff]
[    0.363523] pci 0000:03:00.0: BAR 4 [mem 0xfe600000-0xfe603fff 64bit pref]
[    0.364506] pci 0000:03:00.0: enabling Extended Tags
[    0.367553] pci 0000:00:01.2: PCI bridge to [bus 03]
[    0.369208] acpiphp: Slot [0-4] registered
[    0.369455] pci 0000:00:01.3: PCI bridge to [bus 04]
[    0.377117] ACPI: PCI: Interrupt link LNKA configured for IRQ 10
[    0.377560] ACPI: PCI: Interrupt link LNKB configured for IRQ 10
[    0.378519] ACPI: PCI: Interrupt link LNKC configured for IRQ 11
[    0.379564] ACPI: PCI: Interrupt link LNKD configured for IRQ 11
[    0.380539] ACPI: PCI: Interrupt link LNKE configured for IRQ 10
[    0.381557] ACPI: PCI: Interrupt link LNKF configured for IRQ 10
[    0.382554] ACPI: PCI: Interrupt link LNKG configured for IRQ 11
[    0.383621] ACPI: PCI: Interrupt link LNKH configured for IRQ 11
[    0.384472] ACPI: PCI: Interrupt link GSIA configured for IRQ 16
[    0.385438] ACPI: PCI: Interrupt link GSIB configured for IRQ 17
[    0.386462] ACPI: PCI: Interrupt link GSIC configured for IRQ 18
[    0.387482] ACPI: PCI: Interrupt link GSID configured for IRQ 19
[    0.388439] ACPI: PCI: Interrupt link GSIE configured for IRQ 20
[    0.389429] ACPI: PCI: Interrupt link GSIF configured for IRQ 21
[    0.390439] ACPI: PCI: Interrupt link GSIG configured for IRQ 22
[    0.391437] ACPI: PCI: Interrupt link GSIH configured for IRQ 23
[    0.392660] iommu: Default domain type: Translated
[    0.393434] iommu: DMA domain TLB invalidation policy: lazy mode
[    0.394543] SCSI subsystem initialized
[    0.395441] usbcore: USB support disabled
[    0.396476] pps_core: LinuxPPS API ver. 1 registered
[    0.397430] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.398449] PTP clock support registered
[    0.399483] EDAC MC: Ver: 3.0.0
[    0.400782] NetLabel: Initializing
[    0.401432] NetLabel:  domain hash size = 128
[    0.402171] NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    0.402483] NetLabel:  unlabeled traffic allowed by default
[    0.403496] mctp: management component transport protocol core
[    0.404430] NET: Registered PF_MCTP protocol family
[    0.405372] PCI: Using ACPI for IRQ routing
[    0.483141] vgaarb: loaded
[    0.483554] clocksource: Switched to clocksource kvm-clock
[    0.485016] VFS: Disk quotas dquot_6.6.0
[    0.485701] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.486928] pnp: PnP ACPI init
[    0.487574] system 00:04: [mem 0xb0000000-0xbfffffff window] has been reserved
[    0.488987] pnp: PnP ACPI: found 5 devices
[    0.495123] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    0.496932] NET: Registered PF_INET protocol family
[    0.497774] IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.513853] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.515298] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.516722] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.518041] TCP bind hash table entries: 16384 (order: 7, 524288 bytes, linear)
[    0.519217] TCP: Hash tables configured (established 16384 bind 16384)
[    0.520692] MPTCP token hash table entries: 2048 (order: 4, 49152 bytes, linear)
[    0.522215] UDP hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.523378] UDP-Lite hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.524910] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.526072] NET: Registered PF_XDP protocol family
[    0.527004] pci 0000:00:01.0: bridge window [io  0x1000-0x0fff] to [bus 01] add_size 1000
[    0.528378] pci 0000:00:01.1: bridge window [io  0x1000-0x0fff] to [bus 02] add_size 1000
[    0.529858] pci 0000:00:01.2: bridge window [io  0x1000-0x0fff] to [bus 03] add_size 1000
[    0.531261] pci 0000:00:01.3: bridge window [io  0x1000-0x0fff] to [bus 04] add_size 1000
[    0.532795] pci 0000:00:01.0: bridge window [io  0x1000-0x1fff]: assigned
[    0.534182] pci 0000:00:01.1: bridge window [io  0x2000-0x2fff]: assigned
[    0.535459] pci 0000:00:01.2: bridge window [io  0x3000-0x3fff]: assigned
[    0.536830] pci 0000:00:01.3: bridge window [io  0x4000-0x4fff]: assigned
[    0.538187] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.539090] pci 0000:00:01.0:   bridge window [io  0x1000-0x1fff]
[    0.541101] pci 0000:00:01.0:   bridge window [mem 0xfe000000-0xfe1fffff]
[    0.543081] pci 0000:00:01.0:   bridge window [mem 0xfea00000-0xfebfffff 64bit pref]
[    0.545642] pci 0000:00:01.1: PCI bridge to [bus 02]
[    0.546705] pci 0000:00:01.1:   bridge window [io  0x2000-0x2fff]
[    0.548851] pci 0000:00:01.1:   bridge window [mem 0xfde00000-0xfdffffff]
[    0.550787] pci 0000:00:01.1:   bridge window [mem 0xfe800000-0xfe9fffff 64bit pref]
[    0.553732] pci 0000:00:01.2: PCI bridge to [bus 03]
[    0.554629] pci 0000:00:01.2:   bridge window [io  0x3000-0x3fff]
[    0.556217] pci 0000:00:01.2:   bridge window [mem 0xfdc00000-0xfddfffff]
[    0.557836] pci 0000:00:01.2:   bridge window [mem 0xfe600000-0xfe7fffff 64bit pref]
[    0.560343] pci 0000:00:01.3: PCI bridge to [bus 04]
[    0.561991] pci 0000:00:01.3:   bridge window [io  0x4000-0x4fff]
[    0.563924] pci 0000:00:01.3:   bridge window [mem 0xfda00000-0xfdbfffff]
[    0.565748] pci 0000:00:01.3:   bridge window [mem 0xfe400000-0xfe5fffff 64bit pref]
[    0.568153] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.569206] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.570341] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    0.571465] pci_bus 0000:00: resource 7 [mem 0x50000000-0xafffffff window]
[    0.573358] pci_bus 0000:00: resource 8 [mem 0xc0000000-0xfebfffff window]
[    0.574778] pci_bus 0000:00: resource 9 [mem 0x100000000-0x8ffffffff window]
[    0.576106] pci_bus 0000:01: resource 0 [io  0x1000-0x1fff]
[    0.577035] pci_bus 0000:01: resource 1 [mem 0xfe000000-0xfe1fffff]
[    0.578233] pci_bus 0000:01: resource 2 [mem 0xfea00000-0xfebfffff 64bit pref]
[    0.579568] pci_bus 0000:02: resource 0 [io  0x2000-0x2fff]
[    0.580557] pci_bus 0000:02: resource 1 [mem 0xfde00000-0xfdffffff]
[    0.581769] pci_bus 0000:02: resource 2 [mem 0xfe800000-0xfe9fffff 64bit pref]
[    0.583091] pci_bus 0000:03: resource 0 [io  0x3000-0x3fff]
[    0.584134] pci_bus 0000:03: resource 1 [mem 0xfdc00000-0xfddfffff]
[    0.585338] pci_bus 0000:03: resource 2 [mem 0xfe600000-0xfe7fffff 64bit pref]
[    0.586779] pci_bus 0000:04: resource 0 [io  0x4000-0x4fff]
[    0.587860] pci_bus 0000:04: resource 1 [mem 0xfda00000-0xfdbfffff]
[    0.588910] pci_bus 0000:04: resource 2 [mem 0xfe400000-0xfe5fffff 64bit pref]
[    0.590246] PCI: CLS 0 bytes, default 64
[    0.591011] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2135f449559, max_idle_ns: 440795312421 ns
[    0.592935] Trying to unpack rootfs image as initramfs...
[    0.597642] Freeing initrd memory: 9096K
[    0.598316] sgx: There are zero EPC sections.
[    0.621329] Initialise system trusted keyrings
[    0.622174] Key type blacklist registered
[    0.623125] workingset: timestamp_bits=36 max_order=19 bucket_order=0
[    0.624522] integrity: Platform Keyring initialized
[    0.625390] integrity: Machine keyring initialized
[    0.626301] cryptd: max_cpu_qlen set to 1000
[    0.627124] alg: self-tests disabled
[    0.638062] NET: Registered PF_ALG protocol family
[    0.639214] xor: automatically using best checksumming function   avx
[    0.640672] Key type asymmetric registered
[    0.641445] Asymmetric key parser 'x509' registered
[    0.642483] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 244)
[    0.643909] io scheduler mq-deadline registered
[    0.644742] io scheduler kyber registered
[    0.645441] io scheduler bfq registered
[    0.646408] atomic64_test: passed for x86-64 platform with CX8 and with SSE
[    0.647872] ACPI: \_SB_.GSIF: Enabled at IRQ 21
[    0.650322] pcieport 0000:00:01.0: PME: Signaling with IRQ 24
[    0.651670] pcieport 0000:00:01.0: AER: enabled with IRQ 24
[    0.655146] pcieport 0000:00:01.1: PME: Signaling with IRQ 25
[    0.656447] pcieport 0000:00:01.1: AER: enabled with IRQ 25
[    0.660044] pcieport 0000:00:01.2: PME: Signaling with IRQ 26
[    0.661433] pcieport 0000:00:01.2: AER: enabled with IRQ 26
[    0.664561] pcieport 0000:00:01.3: PME: Signaling with IRQ 27
[    0.666148] pcieport 0000:00:01.3: AER: enabled with IRQ 27
[    0.668016] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
[    0.669387] ACPI: button: Power Button [PWRF]
[    0.674913] Serial: 8250/16550 driver, 1 ports, IRQ sharing enabled
[    0.676144] 00:00: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
[    0.696468] Non-volatile memory driver v1.3
[    0.698292] Linux agpgart interface v0.103
[    0.699238] ACPI: bus type drm_connector registered
[    0.700672] ACPI: \_SB_.GSIA: Enabled at IRQ 16
[    0.702510] ahci 0000:00:1f.2: AHCI vers 0001.0000, 32 command slots, 1.5 Gbps, SATA mode
[    0.704137] ahci 0000:00:1f.2: 6/6 ports implemented (port mask 0x3f)
[    0.705289] ahci 0000:00:1f.2: flags: 64bit ncq only
[    0.707345] scsi host0: ahci
[    0.708097] scsi host1: ahci
[    0.708714] scsi host2: ahci
[    0.709295] scsi host3: ahci
[    0.709976] scsi host4: ahci
[    0.710709] scsi host5: ahci
[    0.711278] ata1: SATA max UDMA/133 abar m4096@0xfe204000 port 0xfe204100 irq 32 lpm-pol 1
[    0.712981] ata2: SATA max UDMA/133 abar m4096@0xfe204000 port 0xfe204180 irq 32 lpm-pol 1
[    0.714663] ata3: SATA max UDMA/133 abar m4096@0xfe204000 port 0xfe204200 irq 32 lpm-pol 1
[    0.716400] ata4: SATA max UDMA/133 abar m4096@0xfe204000 port 0xfe204280 irq 32 lpm-pol 1
[    0.718257] ata5: SATA max UDMA/133 abar m4096@0xfe204000 port 0xfe204300 irq 32 lpm-pol 1
[    0.720433] ata6: SATA max UDMA/133 abar m4096@0xfe204000 port 0xfe204380 irq 32 lpm-pol 1
[    0.723244] usbserial: usb_serial_init - registering generic driver failed
[    0.724686] usbserial: usb_serial_init - returning with error -19
[    0.725971] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x60,0x64 irq 1,12
[    0.728385] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.729404] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.730583] mousedev: PS/2 mouse device common for all mice
[    0.731901] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input1
[    0.733727] rtc_cmos 00:03: RTC can wake from S4
[    0.735634] input: VirtualPS/2 VMware VMMouse as /devices/platform/i8042/serio1/input/input4
[    0.737291] rtc_cmos 00:03: registered as rtc0
[    0.738211] rtc_cmos 00:03: setting system clock to 2026-03-27T14:59:57 UTC (1774623597)
[    0.739792] rtc_cmos 00:03: alarms up to one day, y3k, 242 bytes nvram
[    0.741613] input: VirtualPS/2 VMware VMMouse as /devices/platform/i8042/serio1/input/input3
[    0.743364] device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled. Duplicate IMA measurements will not be recorded in the IMA log.
[    0.745502] device-mapper: uevent: version 1.0.3
[    0.746430] device-mapper: ioctl: 4.50.0-ioctl (2025-04-28) initialised: dm-devel@lists.linux.dev
[    0.748032] intel_pstate: CPU model not supported
[    0.748977] hid: raw HID events driver (C) Jiri Kosina
[    0.750059] drop_monitor: Initializing network drop monitor service
[    0.751206] Initializing XFRM netlink socket
[    0.752020] NET: Registered PF_INET6 protocol family
[    0.753296] Segment Routing with IPv6
[    0.754050] RPL Segment Routing with IPv6
[    0.755027] In-situ OAM (IOAM) with IPv6
[    0.755815] mip6: Mobile IPv6
[    0.756306] NET: Registered PF_PACKET protocol family
[    0.757529] IPI shorthand broadcast: enabled
[    0.760660] sched_clock: Marking stable (616016298, 144578483)->(898557554, -137962773)
[    0.762390] registered taskstats version 1
[    0.763820] Loading compiled-in X.509 certificates
[    0.765418] Loaded X.509 cert 'Fedora kernel signing key: 4882f0cb5a11cccf3e080b90668ff440ce6aabff'
[    0.768965] Loaded X.509 cert 'Fedora IMA CA: a8a00c31663f853f9c6ff2564872e378af026b28'
[    0.774341] Demotion targets for Node 0: null
[    0.775284] page_owner is disabled
[    0.776004] Key type .fscrypt registered
[    0.776809] Key type fscrypt-provisioning registered
[    0.777976] Btrfs loaded, zoned=yes, fsverity=yes
[    0.778846] Key type big_key registered
[    0.779659] Key type encrypted registered
[    0.780443] ima: No TPM chip found, activating TPM-bypass!
[    0.781666] Loading compiled-in module X.509 certificates
[    0.783358] Loaded X.509 cert 'Fedora kernel signing key: 4882f0cb5a11cccf3e080b90668ff440ce6aabff'
[    0.785109] ima: Allocated hash algorithm: sha256
[    0.785988] ima: No architecture policies found
[    0.786859] evm: Initialising EVM extended attributes:
[    0.788020] evm: security.selinux
[    0.788782] evm: security.SMACK64 (disabled)
[    0.789496] evm: security.SMACK64EXEC (disabled)
[    0.790374] evm: security.SMACK64TRANSMUTE (disabled)
[    0.791392] evm: security.SMACK64MMAP (disabled)
[    0.792308] evm: security.apparmor (disabled)
[    0.793223] evm: security.ima
[    0.793831] evm: security.capability
[    0.794431] evm: HMAC attrs: 0x1
[    0.796029] PM:   Magic number: 2:937:991
[    0.797915] RAS: Correctable Errors collector initialized.
[    0.803941] clk: Disabling unused clocks
[    0.804857] PM: genpd: Disabling unused power domains
[    1.034043] ata3: SATA link down (SStatus 0 SControl 300)
[    1.038200] ata1: SATA link down (SStatus 0 SControl 300)
[    1.042335] ata4: SATA link down (SStatus 0 SControl 300)
[    1.046644] ata5: SATA link down (SStatus 0 SControl 300)
[    1.050773] ata2: SATA link down (SStatus 0 SControl 300)
[    1.054904] ata6: SATA link down (SStatus 0 SControl 300)
[    1.061547] Freeing unused decrypted memory: 2028K
[    1.064703] Freeing unused kernel image (initmem) memory: 5156K
[    1.066467] Write protecting the kernel read-only data: 40960k
[    1.068321] Freeing unused kernel image (text/rodata gap) memory: 260K
[    1.070562] Freeing unused kernel image (rodata/data gap) memory: 888K
[    1.086444] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    1.087450] Run /init as init process
supermin: mounting /proc
supermin: ext2 mini initrd starting up: 5.3.5 dietlibc
supermin: cmdline: panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb
supermin: uptime: 0.94 0.21
supermin: mounting /sys
supermin: internal insmod crc32-cryptoapi.ko
supermin: internal insmod libnvdimm.ko
supermin: internal insmod nfit.ko
supermin: internal insmod rfkill.ko
supermin: internal insmod bluetooth.ko
[    1.148278] Bluetooth: Core ver 2.22
[    1.148728] NET: Registered PF_BLUETOOTH protocol family
[    1.149287] Bluetooth: HCI device and connection manager initialized
[    1.150000] Bluetooth: HCI socket layer initialized
[    1.150519] Bluetooth: L2CAP socket layer initialized
[    1.151138] Bluetooth: SCO socket layer initialized
supermin: internal insmod virtio_bt.ko
supermin: internal insmod crypto_engine.ko
supermin: internal insmod virtio_crypto.ko
supermin: internal insmod failover.ko
supermin: internal insmod net_failover.ko
supermin: internal insmod virtio_net.ko
supermin: internal insmod nd_pmem.ko
supermin: internal insmod virtio_scsi.ko
[    1.169400] virtio_scsi virtio0: 1/0/0 default/read/poll queues
[    1.171512] scsi host6: Virtio SCSI HBA
[    1.172644] scsi 6:0:0:0: Direct-Access     QEMU     QEMU HARDDISK    2.5+ PQ: 0 ANSI: 5
[    1.174077] scsi 6:0:1:0: Direct-Access     QEMU     QEMU HARDDISK    2.5+ PQ: 0 ANSI: 5
[    1.182890] sd 6:0:0:0: Attached scsi generic sg0 type 0
[    1.183631] sd 6:0:0:0: Power-on or device reset occurred
[    1.184432] sd 6:0:1:0: Attached scsi generic sg1 type 0
[    1.185078] sd 6:0:1:0: Power-on or device reset occurred
[    1.185741] sd 6:0:0:0: [sda] 8388608 512-byte logical blocks: (4.29 GB/4.00 GiB)
[    1.186734] sd 6:0:0:0: [sda] Write Protect is off
[    1.187273] sd 6:0:1:0: [sdb] 8388608 512-byte logical blocks: (4.29 GB/4.00 GiB)
[    1.188307] sd 6:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.189365] sd 6:0:1:0: [sdb] Write Protect is off
[    1.190084] sd 6:0:1:0: [sdb] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.195181]  sda: sda1
[    1.195666] sd 6:0:0:0: [sda] Attached SCSI disk
[    1.196384] sd 6:0:1:0: [sdb] Attached SCSI disk
supermin: internal insmod iommufd.ko
supermin: internal insmod vfio.ko
[    1.204291] VFIO - User Level meta-driver version: 0.3
supermin: internal insmod irqbypass.ko
supermin: internal insmod vfio-pci-core.ko
supermin: internal insmod virtio-vfio-pci.ko
supermin: internal insmod virtio_balloon.ko
supermin: internal insmod virtio_dma_buf.ko
supermin: internal insmod virtio_input.ko
supermin: internal insmod virtio_mem.ko
supermin: internal insmod virtio_mmio.ko
supermin: internal insmod virtio_rtc.ko
supermin: internal insmod vdpa.ko
supermin: internal insmod virtio_vdpa.ko
supermin: internal insmod fuse.ko
[    1.238695] fuse: init (API version 7.45)
supermin: internal insmod virtiofs.ko
supermin: internal insmod crc-itu-t.ko
supermin: internal insmod crc7.ko
supermin: internal insmod crc8.ko
supermin: internal insmod soundcore.ko
supermin: internal insmod snd.ko
supermin: internal insmod snd-timer.ko
supermin: internal insmod snd-pcm.ko
supermin: internal insmod virtio_snd.ko
supermin: picked 8:16 as root device
supermin: creating /dev/root as block special 8:16
supermin: mounting new root on /root
[    1.265188] EXT4-fs (sdb): mounting ext2 file system using the ext4 subsystem
[    1.267861] EXT4-fs (sdb): mounted filesystem 3d4bdfa2-fd55-4256-8dce-a0246d016d28 r/w without journal. Quota mode: none.
supermin: deleting initramfs files
supermin: chroot
Starting /init script ...
+ [[ panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb == *guestfs_network=1* ]]
+ [[ panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb == *guestfs_rescue=1* ]]
+ [[ panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb == *guestfs_noreboot=1* ]]
+ [[ panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb == *guestfs_boot_analysis=1* ]]
+ mkdir -p /dev/pts /dev/shm
+ mount -t devpts /dev/pts /dev/pts
+ mount -t tmpfs -o mode=1777 shmfs /dev/shm
+ mkdir -p /sysroot
+ test -f /etc/fedora-release
+ mkdir -p /run
+ mount -t tmpfs -o nosuid,size=20%,mode=0755 tmpfs /run
+ mkdir -p /run/lock
+ ln -s ../run/lock /var/lock
+ [[ panic=1 console=ttyS0 edd=off udevtimeout=6000 udev.event-timeout=6000 no_timer_check printk.time=1 cgroup_disable=memory usbcore.nousb cryptomgr.notests tsc=reliable 8250.nr_uarts=1 root=UUID=3d4bdfa2-fd55-4256-8dce-a0246d016d28 selinux=0 guestfs_verbose=1 TERM=dumb == *selinux=1* ]]
+ test -e /etc/mtab
+ test -d /etc/crypto-policies/back-ends
+ test -f /etc/crypto-policies/back-ends/opensslcnf.config
+ test -f /usr/share/crypto-policies/DEFAULT/opensslcnf.txt
+ ln -sf /usr/share/crypto-policies/DEFAULT/opensslcnf.txt /etc/crypto-policies/back-ends/opensslcnf.config
+ mkdir -p /run/tmpfiles.d
+ kmod static-nodes --format=tmpfiles --output=/run/tmpfiles.d/kmod.conf
++ dd if=/dev/urandom bs=16 count=1 status=none
++ od -x -A n
+ machine_id=' e15b 7183 752c 78dd 20ca d005 ed41 9472'
+ echo e15b7183752c78dd20cad005ed419472
+ systemd-tmpfiles --prefix=/dev --prefix=/run --prefix=/var/run --create --boot
/usr/lib/tmpfiles.d/systemd.conf:22: Failed to resolve group 'systemd-journal': No such process
/usr/lib/tmpfiles.d/systemd.conf:23: Failed to resolve group 'systemd-journal': No such process
Failed to parse ACL "default:group:tss:rwx", ignoring: Invalid argument
/usr/lib/tmpfiles.d/tpm2-tss-fapi.conf:4: Failed to resolve user 'tss': No such process
Failed to parse ACL "default:group:tss:rwx", ignoring: Invalid argument
+ for f in /lib/systemd/systemd-udevd /usr/lib/systemd/systemd-udevd /sbin/udevd /lib/udev/udevd /usr/lib/udev/udevd
+ '[' -x /lib/systemd/systemd-udevd ']'
+ UDEVD=/lib/systemd/systemd-udevd
+ break
+ '[' -z /lib/systemd/systemd-udevd ']'
+ /lib/systemd/systemd-udevd --daemon
Starting systemd-udevd version 257.11-1.fc42
+ udevadm trigger
+ udevadm settle --timeout=600
+ shopt -s nullglob
+ for f in /sys/block/sd*/device/timeout
+ echo 300
+ for f in /sys/block/sd*/device/timeout
+ echo 300
+ shopt -u nullglob
+ ip addr add 127.0.0.1/8 brd + dev lo scope host
+ ip link set dev lo up
+ test '' = 1
+ mdadm -As --auto=yes --no-degraded
mdadm: No arrays found in config file or automatically
+ mkdir -p /tmp/lvm
+ touch /tmp/lvm/lvm.conf
+ command -v lvmdevices
/bin/lvmdevices
+ printf 'devices {\n'
+ printf '\tuse_devicesfile = 0\n'
+ printf '}\n'
+ LVM_SYSTEM_DIR=/tmp/lvm
+ export LVM_SYSTEM_DIR
+ lvmetad
/init: line 169: lvmetad: command not found
+ modprobe dm_mod
+ lvm pvscan --cache --activate ay
+ mdadm -As --auto=yes --run
mdadm: No arrays found in config file or automatically
+ ldmtool create all
[]
+ test 1 = 1
+ test '' '!=' 1
+ uname -a
Linux (none) 6.18.12-100.fc42.x86_64 #1 SMP PREEMPT_DYNAMIC Mon Feb 16 20:02:34 UTC 2026 x86_64 GNU/Linux
+ ls -lR /dev
/dev:
total 0
crw-r--r-- 1 root root  10, 235 Mar 27 14:59 autofs
drwxr-xr-x 2 root root      100 Mar 27 14:59 block
drwxr-xr-x 2 root root       80 Mar 27 14:59 bsg
crw------- 1 root root  10, 234 Mar 27 14:59 btrfs-control
drwxr-xr-x 2 root root     2360 Mar 27 14:59 char
crw------- 1 root root   5,   1 Mar 27 14:59 console
drwxr-xr-x 3 root root       60 Mar 27 14:59 cpu
crw------- 1 root root  10, 259 Mar 27 14:59 cpu_dma_latency
crw------- 1 root root  10, 203 Mar 27 14:59 cuse
drwxr-xr-x 7 root root      140 Mar 27 14:59 disk
drwxr-xr-x 2 root root       60 Mar 27 14:59 dma_heap
lrwxrwxrwx 1 root root       13 Mar 27 14:59 fd -> /proc/self/fd
crw-rw-rw- 1 root root   1,   7 Mar 27 14:59 full
crw-rw-rw- 1 root root  10, 229 Mar 27 14:59 fuse
crw------- 1 root root  10, 228 Mar 27 14:59 hpet
crw------- 1 root root  10, 183 Mar 27 14:59 hwrng
drwxr-xr-x 3 root root      200 Mar 27 14:59 input
crw-rw---- 1 root root  10, 260 Mar 27 14:59 iommu
crw-r--r-- 1 root root   1,  11 Mar 27 14:59 kmsg
crw-rw---- 1 root disk  10, 237 Mar 27 14:59 loop-control
drwxr-xr-x 2 root root       60 Mar 27 14:59 mapper
crw------- 1 root root  10, 227 Mar 27 14:59 mcelog
crw------- 1 root root   1,   1 Mar 27 14:59 mem
drwxr-xr-x 2 root root       60 Mar 27 14:59 net
crw-rw-rw- 1 root root   1,   3 Mar 27 14:59 null
crw------- 1 root root  10, 144 Mar 27 14:59 nvram
crw------- 1 root root   1,   4 Mar 27 14:59 port
crw------- 1 root root 108,   0 Mar 27 14:59 ppp
crw-rw-rw- 1 root root   5,   2 Mar 27 14:59 ptmx
drwxr-xr-x 2 root root        0 Mar 27 14:59 pts
crw-rw-rw- 1 root root   1,   8 Mar 27 14:59 random
crw------- 1 root root  10, 242 Mar 27 14:59 rfkill
lrwxrwxrwx 1 root root        4 Mar 27 14:59 rtc -> rtc0
crw------- 1 root root 249,   0 Mar 27 14:59 rtc0
brw------- 1 root root   8,   0 Mar 27 14:59 sda
brw------- 1 root root   8,   1 Mar 27 14:59 sda1
brw------- 1 root root   8,  16 Mar 27 14:59 sdb
crw------- 1 root root  21,   0 Mar 27 14:59 sg0
crw------- 1 root root  21,   1 Mar 27 14:59 sg1
drwxrwxrwt 2 root root       40 Mar 27 14:59 shm
crw------- 1 root root  10, 231 Mar 27 14:59 snapshot
drwxr-xr-x 2 root root       80 Mar 27 14:59 snd
crw-rw-rw- 1 root root   5,   0 Mar 27 14:59 tty
crw------- 1 root root   4,   0 Mar 27 14:59 tty0
crw------- 1 root root   4,   1 Mar 27 14:59 tty1
crw------- 1 root root   4,  10 Mar 27 14:59 tty10
crw------- 1 root root   4,  11 Mar 27 14:59 tty11
crw------- 1 root root   4,  12 Mar 27 14:59 tty12
crw------- 1 root root   4,  13 Mar 27 14:59 tty13
crw------- 1 root root   4,  14 Mar 27 14:59 tty14
crw------- 1 root root   4,  15 Mar 27 14:59 tty15
crw------- 1 root root   4,  16 Mar 27 14:59 tty16
crw------- 1 root root   4,  17 Mar 27 14:59 tty17
crw------- 1 root root   4,  18 Mar 27 14:59 tty18
crw------- 1 root root   4,  19 Mar 27 14:59 tty19
crw------- 1 root root   4,   2 Mar 27 14:59 tty2
crw------- 1 root root   4,  20 Mar 27 14:59 tty20
crw------- 1 root root   4,  21 Mar 27 14:59 tty21
crw------- 1 root root   4,  22 Mar 27 14:59 tty22
crw------- 1 root root   4,  23 Mar 27 14:59 tty23
crw------- 1 root root   4,  24 Mar 27 14:59 tty24
crw------- 1 root root   4,  25 Mar 27 14:59 tty25
crw------- 1 root root   4,  26 Mar 27 14:59 tty26
crw------- 1 root root   4,  27 Mar 27 14:59 tty27
crw------- 1 root root   4,  28 Mar 27 14:59 tty28
crw------- 1 root root   4,  29 Mar 27 14:59 tty29
crw------- 1 root root   4,   3 Mar 27 14:59 tty3
crw------- 1 root root   4,  30 Mar 27 14:59 tty30
crw------- 1 root root   4,  31 Mar 27 14:59 tty31
crw------- 1 root root   4,  32 Mar 27 14:59 tty32
crw------- 1 root root   4,  33 Mar 27 14:59 tty33
crw------- 1 root root   4,  34 Mar 27 14:59 tty34
crw------- 1 root root   4,  35 Mar 27 14:59 tty35
crw------- 1 root root   4,  36 Mar 27 14:59 tty36
crw------- 1 root root   4,  37 Mar 27 14:59 tty37
crw------- 1 root root   4,  38 Mar 27 14:59 tty38
crw------- 1 root root   4,  39 Mar 27 14:59 tty39
crw------- 1 root root   4,   4 Mar 27 14:59 tty4
crw------- 1 root root   4,  40 Mar 27 14:59 tty40
crw------- 1 root root   4,  41 Mar 27 14:59 tty41
crw------- 1 root root   4,  42 Mar 27 14:59 tty42
crw------- 1 root root   4,  43 Mar 27 14:59 tty43
crw------- 1 root root   4,  44 Mar 27 14:59 tty44
crw------- 1 root root   4,  45 Mar 27 14:59 tty45
crw------- 1 root root   4,  46 Mar 27 14:59 tty46
crw------- 1 root root   4,  47 Mar 27 14:59 tty47
crw------- 1 root root   4,  48 Mar 27 14:59 tty48
crw------- 1 root root   4,  49 Mar 27 14:59 tty49
crw------- 1 root root   4,   5 Mar 27 14:59 tty5
crw------- 1 root root   4,  50 Mar 27 14:59 tty50
crw------- 1 root root   4,  51 Mar 27 14:59 tty51
crw------- 1 root root   4,  52 Mar 27 14:59 tty52
crw------- 1 root root   4,  53 Mar 27 14:59 tty53
crw------- 1 root root   4,  54 Mar 27 14:59 tty54
crw------- 1 root root   4,  55 Mar 27 14:59 tty55
crw------- 1 root root   4,  56 Mar 27 14:59 tty56
crw------- 1 root root   4,  57 Mar 27 14:59 tty57
crw------- 1 root root   4,  58 Mar 27 14:59 tty58
crw------- 1 root root   4,  59 Mar 27 14:59 tty59
crw------- 1 root root   4,   6 Mar 27 14:59 tty6
crw------- 1 root root   4,  60 Mar 27 14:59 tty60
crw------- 1 root root   4,  61 Mar 27 14:59 tty61
crw------- 1 root root   4,  62 Mar 27 14:59 tty62
crw------- 1 root root   4,  63 Mar 27 14:59 tty63
crw------- 1 root root   4,   7 Mar 27 14:59 tty7
crw------- 1 root root   4,   8 Mar 27 14:59 tty8
crw------- 1 root root   4,   9 Mar 27 14:59 tty9
crw------- 1 root root   4,  64 Mar 27 14:59 ttyS0
crw------- 1 root root  10, 258 Mar 27 14:59 udmabuf
crw------- 1 root root  10, 239 Mar 27 14:59 uhid
crw------- 1 root root  10, 223 Mar 27 14:59 uinput
crw-rw-rw- 1 root root   1,   9 Mar 27 14:59 urandom
crw------- 1 root root 242,   0 Mar 27 14:59 usbmon0
crw------- 1 root root  10, 257 Mar 27 14:59 userfaultfd
crw------- 1 root root   7,   0 Mar 27 14:59 vcs
crw------- 1 root root   7,   1 Mar 27 14:59 vcs1
crw------- 1 root root   7, 128 Mar 27 14:59 vcsa
crw------- 1 root root   7, 129 Mar 27 14:59 vcsa1
crw------- 1 root root   7,  64 Mar 27 14:59 vcsu
crw------- 1 root root   7,  65 Mar 27 14:59 vcsu1
drwxr-xr-x 2 root root       60 Mar 27 14:59 vfio
crw------- 1 root root  10, 256 Mar 27 14:59 vga_arbiter
crw------- 1 root root  10, 137 Mar 27 14:59 vhci
crw-rw-rw- 1 root kvm   10, 238 Mar 27 14:59 vhost-net
crw-rw-rw- 1 root kvm   10, 241 Mar 27 14:59 vhost-vsock
drwxr-xr-x 2 root root       60 Mar 27 14:59 virtio-ports
crw------- 1 root root 243,   1 Mar 27 14:59 vport1p1
crw-rw-rw- 1 root root   1,   5 Mar 27 14:59 zero

/dev/block:
total 0
lrwxrwxrwx 1 root root 6 Mar 27 14:59 8:0 -> ../sda
lrwxrwxrwx 1 root root 7 Mar 27 14:59 8:1 -> ../sda1
lrwxrwxrwx 1 root root 6 Mar 27 14:59 8:16 -> ../sdb

/dev/bsg:
total 0
crw------- 1 root root 244, 0 Mar 27 14:59 6:0:0:0
crw------- 1 root root 244, 1 Mar 27 14:59 6:0:1:0

/dev/char:
total 0
lrwxrwxrwx 1 root root  8 Mar 27 14:59 10:144 -> ../nvram
lrwxrwxrwx 1 root root  8 Mar 27 14:59 10:183 -> ../hwrng
lrwxrwxrwx 1 root root 12 Mar 27 14:59 10:196 -> ../vfio/vfio
lrwxrwxrwx 1 root root  9 Mar 27 14:59 10:227 -> ../mcelog
lrwxrwxrwx 1 root root  7 Mar 27 14:59 10:228 -> ../hpet
lrwxrwxrwx 1 root root  7 Mar 27 14:59 10:229 -> ../fuse
lrwxrwxrwx 1 root root 11 Mar 27 14:59 10:231 -> ../snapshot
lrwxrwxrwx 1 root root 16 Mar 27 14:59 10:234 -> ../btrfs-control
lrwxrwxrwx 1 root root  9 Mar 27 14:59 10:235 -> ../autofs
lrwxrwxrwx 1 root root 17 Mar 27 14:59 10:236 -> ../mapper/control
lrwxrwxrwx 1 root root  9 Mar 27 14:59 10:242 -> ../rfkill
lrwxrwxrwx 1 root root 14 Mar 27 14:59 10:256 -> ../vga_arbiter
lrwxrwxrwx 1 root root 14 Mar 27 14:59 10:257 -> ../userfaultfd
lrwxrwxrwx 1 root root 10 Mar 27 14:59 10:258 -> ../udmabuf
lrwxrwxrwx 1 root root 18 Mar 27 14:59 10:259 -> ../cpu_dma_latency
lrwxrwxrwx 1 root root  8 Mar 27 14:59 10:260 -> ../iommu
lrwxrwxrwx 1 root root 12 Mar 27 14:59 116:33 -> ../snd/timer
lrwxrwxrwx 1 root root 15 Mar 27 14:59 13:32 -> ../input/mouse0
lrwxrwxrwx 1 root root 15 Mar 27 14:59 13:33 -> ../input/mouse1
lrwxrwxrwx 1 root root 13 Mar 27 14:59 13:63 -> ../input/mice
lrwxrwxrwx 1 root root 15 Mar 27 14:59 13:64 -> ../input/event0
lrwxrwxrwx 1 root root 15 Mar 27 14:59 13:65 -> ../input/event1
lrwxrwxrwx 1 root root 15 Mar 27 14:59 13:66 -> ../input/event2
lrwxrwxrwx 1 root root 15 Mar 27 14:59 13:67 -> ../input/event3
lrwxrwxrwx 1 root root  6 Mar 27 14:59 1:1 -> ../mem
lrwxrwxrwx 1 root root  7 Mar 27 14:59 1:11 -> ../kmsg
lrwxrwxrwx 1 root root  7 Mar 27 14:59 1:3 -> ../null
lrwxrwxrwx 1 root root  7 Mar 27 14:59 1:4 -> ../port
lrwxrwxrwx 1 root root  7 Mar 27 14:59 1:5 -> ../zero
lrwxrwxrwx 1 root root  7 Mar 27 14:59 1:7 -> ../full
lrwxrwxrwx 1 root root  9 Mar 27 14:59 1:8 -> ../random
lrwxrwxrwx 1 root root 10 Mar 27 14:59 1:9 -> ../urandom
lrwxrwxrwx 1 root root 12 Mar 27 14:59 202:0 -> ../cpu/0/msr
lrwxrwxrwx 1 root root 14 Mar 27 14:59 203:0 -> ../cpu/0/cpuid
lrwxrwxrwx 1 root root  6 Mar 27 14:59 21:0 -> ../sg0
lrwxrwxrwx 1 root root  6 Mar 27 14:59 21:1 -> ../sg1
lrwxrwxrwx 1 root root 10 Mar 27 14:59 242:0 -> ../usbmon0
lrwxrwxrwx 1 root root 11 Mar 27 14:59 243:1 -> ../vport1p1
lrwxrwxrwx 1 root root 14 Mar 27 14:59 244:0 -> ../bsg/6:0:0:0
lrwxrwxrwx 1 root root 14 Mar 27 14:59 244:1 -> ../bsg/6:0:1:0
lrwxrwxrwx 1 root root  7 Mar 27 14:59 249:0 -> ../rtc0
lrwxrwxrwx 1 root root 18 Mar 27 14:59 250:0 -> ../dma_heap/system
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:0 -> ../tty0
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:1 -> ../tty1
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:10 -> ../tty10
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:11 -> ../tty11
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:12 -> ../tty12
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:13 -> ../tty13
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:14 -> ../tty14
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:15 -> ../tty15
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:16 -> ../tty16
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:17 -> ../tty17
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:18 -> ../tty18
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:19 -> ../tty19
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:2 -> ../tty2
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:20 -> ../tty20
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:21 -> ../tty21
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:22 -> ../tty22
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:23 -> ../tty23
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:24 -> ../tty24
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:25 -> ../tty25
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:26 -> ../tty26
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:27 -> ../tty27
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:28 -> ../tty28
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:29 -> ../tty29
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:3 -> ../tty3
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:30 -> ../tty30
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:31 -> ../tty31
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:32 -> ../tty32
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:33 -> ../tty33
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:34 -> ../tty34
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:35 -> ../tty35
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:36 -> ../tty36
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:37 -> ../tty37
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:38 -> ../tty38
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:39 -> ../tty39
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:4 -> ../tty4
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:40 -> ../tty40
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:41 -> ../tty41
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:42 -> ../tty42
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:43 -> ../tty43
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:44 -> ../tty44
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:45 -> ../tty45
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:46 -> ../tty46
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:47 -> ../tty47
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:48 -> ../tty48
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:49 -> ../tty49
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:5 -> ../tty5
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:50 -> ../tty50
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:51 -> ../tty51
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:52 -> ../tty52
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:53 -> ../tty53
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:54 -> ../tty54
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:55 -> ../tty55
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:56 -> ../tty56
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:57 -> ../tty57
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:58 -> ../tty58
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:59 -> ../tty59
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:6 -> ../tty6
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:60 -> ../tty60
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:61 -> ../tty61
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:62 -> ../tty62
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:63 -> ../tty63
lrwxrwxrwx 1 root root  8 Mar 27 14:59 4:64 -> ../ttyS0
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:7 -> ../tty7
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:8 -> ../tty8
lrwxrwxrwx 1 root root  7 Mar 27 14:59 4:9 -> ../tty9
lrwxrwxrwx 1 root root  6 Mar 27 14:59 5:0 -> ../tty
lrwxrwxrwx 1 root root 10 Mar 27 14:59 5:1 -> ../console
lrwxrwxrwx 1 root root  7 Mar 27 14:59 5:2 -> ../ptmx
lrwxrwxrwx 1 root root  6 Mar 27 14:59 7:0 -> ../vcs
lrwxrwxrwx 1 root root  7 Mar 27 14:59 7:1 -> ../vcs1
lrwxrwxrwx 1 root root  7 Mar 27 14:59 7:128 -> ../vcsa
lrwxrwxrwx 1 root root  8 Mar 27 14:59 7:129 -> ../vcsa1
lrwxrwxrwx 1 root root  7 Mar 27 14:59 7:64 -> ../vcsu
lrwxrwxrwx 1 root root  8 Mar 27 14:59 7:65 -> ../vcsu1

/dev/cpu:
total 0
drwxr-xr-x 2 root root 80 Mar 27 14:59 0

/dev/cpu/0:
total 0
crw------- 1 root root 203, 0 Mar 27 14:59 cpuid
crw------- 1 root root 202, 0 Mar 27 14:59 msr

/dev/disk:
total 0
drwxr-xr-x 2 root root 100 Mar 27 14:59 by-diskseq
drwxr-xr-x 2 root root 100 Mar 27 14:59 by-id
drwxr-xr-x 2 root root  60 Mar 27 14:59 by-partuuid
drwxr-xr-x 3 root root 120 Mar 27 14:59 by-path
drwxr-xr-x 2 root root  80 Mar 27 14:59 by-uuid

/dev/disk/by-diskseq:
total 0
lrwxrwxrwx 1 root root  9 Mar 27 14:59 1 -> ../../sda
lrwxrwxrwx 1 root root 10 Mar 27 14:59 1-part1 -> ../../sda1
lrwxrwxrwx 1 root root  9 Mar 27 14:59 2 -> ../../sdb

/dev/disk/by-id:
total 0
lrwxrwxrwx 1 root root  9 Mar 27 14:59 scsi-0QEMU_QEMU_HARDDISK_drive-scsi0-0-0-0 -> ../../sda
lrwxrwxrwx 1 root root 10 Mar 27 14:59 scsi-0QEMU_QEMU_HARDDISK_drive-scsi0-0-0-0-part1 -> ../../sda1
lrwxrwxrwx 1 root root  9 Mar 27 14:59 scsi-0QEMU_QEMU_HARDDISK_drive-scsi0-0-1-0 -> ../../sdb

/dev/disk/by-partuuid:
total 0
lrwxrwxrwx 1 root root 10 Mar 27 14:59 cdc077d6-01 -> ../../sda1

/dev/disk/by-path:
total 0
lrwxrwxrwx 1 root root   9 Mar 27 14:59 pci-0000:01:00.0-scsi-0:0:0:0 -> ../../sda
drwxr-xr-x 5 root root 100 Mar 27 14:59 pci-0000:01:00.0-scsi-0:0:0:0-part
lrwxrwxrwx 1 root root  10 Mar 27 14:59 pci-0000:01:00.0-scsi-0:0:0:0-part1 -> ../../sda1
lrwxrwxrwx 1 root root   9 Mar 27 14:59 pci-0000:01:00.0-scsi-0:0:1:0 -> ../../sdb

'/dev/disk/by-path/pci-0000:01:00.0-scsi-0:0:0:0-part':
total 0
drwxr-xr-x 2 root root 60 Mar 27 14:59 by-partnum
drwxr-xr-x 2 root root 60 Mar 27 14:59 by-partuuid
drwxr-xr-x 2 root root 60 Mar 27 14:59 by-uuid

'/dev/disk/by-path/pci-0000:01:00.0-scsi-0:0:0:0-part/by-partnum':
total 0
lrwxrwxrwx 1 root root 16 Mar 27 14:59 1 -> ../../../../sda1

'/dev/disk/by-path/pci-0000:01:00.0-scsi-0:0:0:0-part/by-partuuid':
total 0
lrwxrwxrwx 1 root root 16 Mar 27 14:59 cdc077d6-01 -> ../../../../sda1

'/dev/disk/by-path/pci-0000:01:00.0-scsi-0:0:0:0-part/by-uuid':
total 0
lrwxrwxrwx 1 root root 16 Mar 27 14:59 96bd74a2-34e3-4f07-8013-dca14210fd38 -> ../../../../sda1

/dev/disk/by-uuid:
total 0
lrwxrwxrwx 1 root root  9 Mar 27 14:59 3d4bdfa2-fd55-4256-8dce-a0246d016d28 -> ../../sdb
lrwxrwxrwx 1 root root 10 Mar 27 14:59 96bd74a2-34e3-4f07-8013-dca14210fd38 -> ../../sda1

/dev/dma_heap:
total 0
crw------- 1 root root 250, 0 Mar 27 14:59 system

/dev/input:
total 0
drwxr-xr-x 2 root root    100 Mar 27 14:59 by-path
crw------- 1 root root 13, 64 Mar 27 14:59 event0
crw------- 1 root root 13, 65 Mar 27 14:59 event1
crw------- 1 root root 13, 66 Mar 27 14:59 event2
crw------- 1 root root 13, 67 Mar 27 14:59 event3
crw------- 1 root root 13, 63 Mar 27 14:59 mice
crw------- 1 root root 13, 32 Mar 27 14:59 mouse0
crw------- 1 root root 13, 33 Mar 27 14:59 mouse1

/dev/input/by-path:
total 0
lrwxrwxrwx 1 root root 9 Mar 27 14:59 platform-i8042-serio-0-event-kbd -> ../event1
lrwxrwxrwx 1 root root 9 Mar 27 14:59 platform-i8042-serio-1-event-mouse -> ../event2
lrwxrwxrwx 1 root root 9 Mar 27 14:59 platform-i8042-serio-1-mouse -> ../mouse0

/dev/mapper:
total 0
crw------- 1 root root 10, 236 Mar 27 14:59 control

/dev/net:
total 0
crw-rw-rw- 1 root root 10, 200 Mar 27 14:59 tun

/dev/pts:
total 0
c--------- 1 root root 5, 2 Mar 27 14:59 ptmx

/dev/shm:
total 0

/dev/snd:
total 0
crw-rw---- 1 root audio 116,  1 Mar 27 14:59 seq
crw-rw---- 1 root audio 116, 33 Mar 27 14:59 timer

/dev/vfio:
total 0
crw-rw-rw- 1 root root 10, 196 Mar 27 14:59 vfio

/dev/virtio-ports:
total 0
lrwxrwxrwx 1 root root 11 Mar 27 14:59 org.libguestfs.channel.0 -> ../vport1p1
+ cat /proc/mounts
/dev/root / ext2 rw,noatime 0 0
/proc /proc proc rw,relatime 0 0
/sys /sys sysfs rw,relatime 0 0
/dev /dev devtmpfs rw,relatime,size=605240k,nr_inodes=151310,mode=755,inode64 0 0
/dev/pts /dev/pts devpts rw,relatime,mode=600,ptmxmode=000 0 0
shmfs /dev/shm tmpfs rw,relatime,inode64 0 0
tmpfs /run tmpfs rw,nosuid,relatime,size=245584k,mode=755,inode64 0 0
+ cat /proc/mdstat
Personalities :
unused devices: <none>
+ lsblk
NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
sda      8:0    0   4G  0 disk
`-sda1   8:1    0   4G  0 part
sdb      8:16   0   4G  0 disk /
+ blkid
/dev/sdb: UUID="3d4bdfa2-fd55-4256-8dce-a0246d016d28" BLOCK_SIZE="4096" TYPE="ext2"
/dev/sda1: UUID="96bd74a2-34e3-4f07-8013-dca14210fd38" BLOCK_SIZE="512" TYPE="xfs" PARTUUID="cdc077d6-01"
+ lvm config
devices {
\tuse_devicesfile=0
}
+ lvm pvs
+ lvm vgs
+ lvm lvs
+ ip a
1: \x1b[36mlo: \x1b[0m<LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
	link/loopback \x1b[33m00:00:00:00:00:00\x1b[0m brd \x1b[33m00:00:00:00:00:00\x1b[0m
	inet \x1b[35m127.0.0.1\x1b[0m/8 brd \x1b[35m127.255.255.255 \x1b[0mscope host lo
	   valid_lft forever preferred_lft forever
	inet6 \x1b[34m::1\x1b[0m/128 scope host proto kernel_lo
	   valid_lft forever preferred_lft forever
+ ip r
+ cat /etc/resolv.conf
cat: /etc/resolv.conf: No such file or directory
+ lsmod
Module                  Size  Used by
virtio_snd             57344  0
snd_pcm               212992  1 virtio_snd
snd_timer              57344  1 snd_pcm
snd                   155648  3 virtio_snd,snd_timer,snd_pcm
soundcore              12288  1 snd
crc8                   12288  0
crc7                   12288  0
crc_itu_t              12288  0
virtiofs               45056  0
fuse                  282624  1 virtiofs
virtio_vdpa            20480  0
vdpa                   40960  1 virtio_vdpa
virtio_rtc             36864  0
virtio_mmio            24576  0
virtio_mem             65536  0
virtio_input           20480  0
virtio_dma_buf         12288  0
virtio_balloon         32768  0
virtio_vfio_pci        45056  0
vfio_pci_core         106496  1 virtio_vfio_pci
irqbypass              16384  1 vfio_pci_core
vfio                   77824  2 vfio_pci_core,virtio_vfio_pci
iommufd               147456  1 vfio
virtio_scsi            28672  1
nd_pmem                24576  0
virtio_net            131072  0
net_failover           24576  1 virtio_net
failover               12288  1 net_failover
virtio_crypto          53248  0
crypto_engine          28672  1 virtio_crypto
virtio_bt              20480  0
bluetooth            1101824  1 virtio_bt
rfkill                 45056  1 bluetooth
nfit                   94208  0
libnvdimm             258048  2 nd_pmem,nfit
crc32_cryptoapi        12288  0
+ date
Fri Mar 27 14:59:58 UTC 2026
+ echo -n 'clocksource: '
clocksource: + cat /sys/devices/system/clocksource/clocksource0/current_clocksource
kvm-clock
+ echo -n 'uptime: '
uptime: + cat /proc/uptime
1.82 0.24
+ cmd=guestfsd
++ grep -Eo 'guestfs_channel=[^[:space:]]+' /proc/cmdline
+ eval
+ test x '!=' x
+ test 1 = 1
+ cmd='guestfsd --verbose'
+ test '' = 1
+ false
+ test '' = 1
+ echo guestfsd --verbose
guestfsd --verbose
+ guestfsd --verbose
lvm_system_dir = /tmp/lvm
OCaml daemon loaded
commandrvf: stdout=y stderr=y flags=0x0
commandrvf: ls -1v /dev/disk/by-path
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sda
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sdb
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
trying to open virtio-serial channel '/dev/virtio-ports/org.libguestfs.channel.0'
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
libguestfs: recv_from_daemon: received GUESTFS_LAUNCH_FLAG
libguestfs: appliance is up
libguestfs: trace: launch = 0
libguestfs: trace: c_pointer
libguestfs: trace: c_pointer = 93827372666768
libguestfs: trace: list_partitions
guestfsd: <= list_partitions (0x8) request length 40 bytes
command: ls '-1v' '/dev/disk/by-path'
command: ls returned 0
command: ls: stdout:
pci-0000:01:00.0-scsi-0:0:0:0
pci-0000:01:00.0-scsi-0:0:0:0-part
pci-0000:01:00.0-scsi-0:0:0:0-part1
pci-0000:01:00.0-scsi-0:0:1:0
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sda
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sdb
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
libguestfs: trace: list_partitions = ["/dev/sda1"]
libguestfs: trace: vfs_type "/dev/sda1"
guestfsd: => list_partitions (0x8) took 0.02 secs
guestfsd: <= vfs_type (0xc6) request length 56 bytes
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sda1
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
command: blkid '-c' '/dev/null' '-o' 'value' '-s' 'TYPE' '/dev/sda1'
command: blkid returned 0
command: blkid: stdout:
xfs
guestfsd: => vfslibguestfs: trace: vfs_type = "xfs"
libguestfs: trace: feature_available "lvm2"
libguestfs: trace: internal_feature_available "lvm2"
_type (0xc6) took 0.01 secs
guestfsd: <= internal_feature_available (0x1ca) request length 48 bytes
guestfsd: => intlibguestfs: trace: internal_feature_available = 0
libguestfs: trace: feature_available = 1
libguestfs: trace: lvs
ernal_feature_available (0x1ca) took 0.00 secs
guestfsd: <= lvs (0xb) request length 40 bytes
command: lvm 'lvs' '--help'
command: lvm returned 0
command: lvm: stdout:
  lvs - Display information about logical volumes

  lvs
\t[ -H|--history ]
\t[ -S|--select String ]
\t[ -a|--all ]
\t[ -o|--options String ]
\t[ -O|--sort String ]
\t[    --segments ]
\t[    --configreport log|vg|lv|pv|pvseg|seg ]
\t[    --foreign ]
\t[    --ignorelockingfailure ]
\t[    --logonly ]
\t[    --readonly ]
\t[    --reportformat basic|json|json_std ]
\t[    --shared ]
\t[    --units [Number]r|R|h|H|b|B|s|S|k|K|m|M|g|G|t|T|p|P|e|E ]
\t[    --aligned ]
\t[    --binary ]
\t[    --headings none|abbrev|full|0|1|2 ]
\t[    --nameprefixes ]
\t[    --noheadings ]
\t[    --nosuffix ]
\t[    --rows ]
\t[    --separator String ]
\t[    --unbuffered ]
\t[    --unquoted ]
\t[ COMMON_OPTIONS ]
\t[ VG|LV|Tag ... ]

  Common options for lvm:
\t[ -d|--debug ]
\t[ -h|--help ]
\t[ -q|--quiet ]
\t[ -v|--verbose ]
\t[ -y|--yes ]
\t[ -t|--test ]
\t[    --commandprofile String ]
\t[    --config String ]
\t[    --driverloaded y|n ]
\t[    --nolocking ]
\t[    --lockopt String ]
\t[    --longhelp ]
\t[    --profile String ]
\t[    --version ]
\t[    --devicesfile String ]
\t[    --devices PV ]
\t[    --nohints ]
\t[    --journal String ]

  Use --longhelp to show all options and advanced commands.
command: lvm 'lvs' '-o' 'vg_name,lv_name' '-S' 'lv_role=public && lv_skip_activation!=yes' '--noheadings' '--separator' '/'
guestfsd: => lvs (0xb) took 0.03 secs
libguestfs: trace: lvs = []
libguestfs: trace: inspect_os
guestfsd: <= inspect_os (0x1e0) request length 40 bytes
command: lvm returned 0
list_filesystems: start
list_filesystems: checking for whole devices
command: ls '-1v' '/dev/disk/by-path'
command: ls returned 0
command: ls: stdout:
pci-0000:01:00.0-scsi-0:0:0:0
pci-0000:01:00.0-scsi-0:0:0:0-part
pci-0000:01:00.0-scsi-0:0:0:0-part1
pci-0000:01:00.0-scsi-0:0:1:0
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sda
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sdb
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
list_filesystems: checking for device-mapper devices
list_filesystems: checking for partitions
command: ls '-1v' '/dev/disk/by-path'
command: ls returned 0
command: ls: stdout:
pci-0000:01:00.0-scsi-0:0:0:0
pci-0000:01:00.0-scsi-0:0:0:0-part
pci-0000:01:00.0-scsi-0:0:0:0-part1
pci-0000:01:00.0-scsi-0:0:1:0
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sda
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sdb
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
command: parted '-m' '-s' '--' '/dev/sda' 'unit' 'b' 'print'
command: parted returned 0
command: parted: stdout:
BYT;
/dev/sda:4294967296B:scsi:512:512:msdos:QEMU QEMU HARDDISK:;
1:1048576B:4294967295B:4293918720B:xfs::boot;
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
command: parted '-m' '-s' '--' '/dev/sda' 'unit' 'b' 'print'
command: parted returned 0
command: parted: stdout:
BYT;
/dev/sda:4294967296B:scsi:512:512:msdos:QEMU QEMU HARDDISK:;
1:1048576B:4294967295B:4293918720B:xfs::boot;
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
command: sfdisk '--part-type' '/dev/sda' '1'
command: sfdisk returned 0
command: sfdisk: stdout:
83
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
command: blkid '-c' '/dev/null' '-o' 'value' '-s' 'TYPE' '/dev/sda1'
command: blkid returned 0
command: blkid: stdout:
xfs
list_filesystems: adding "/dev/sda1", "xfs"
list_filesystems: checking for MD devices
list_filesystems: checking for logical volumes
command: lvm 'lvs' '-o' 'vg_name,lv_name' '-S' 'lv_role=public && lv_skip_activation!=yes' '--noheadings' '--separator' '/'
command: lvm returned 0
list_filesystems: checking for LDM volumes
list_filesystems: finished
check_for_filesystem_on: /dev/sda1 (xfs)
command: mount '-o' 'ro' '/dev/sda1' '/sysroot/'
command: mount returned 32
command: mount: stderr:
mount: /sysroot: unknown filesystem type 'xfs'.
	   dmesg(1) may have more information after failed mount system call.
inspect_os: fses:
inspect_os: collect_coreos_inspection_info
inspect_os: check_for_duplicated_bsd_root
inspect_os: check_for_duplicated_btrfs_snapshots_of_root
inspect_os: collect_linux_inspection_info
inspect_get_roots: roots:
guestfsd: => inspect_os (0x1e0) took 0.22 secs
libguestfs: trace: inspect_os = []
virt-sysprep: error: no operating systems were found in the guest image
libguestfs: trace: close
libguestfs: closing guestfs handle 0x5555e337cf90 (state 2)
libguestfs: trace: internal_autosync
guestfsd: <= internal_autosync (0x11a) request length 40 bytes
umount-all: /proc/mounts: fsname=/dev/root dir=/ type=ext2 opts=rw,noatime freq=0 passno=0
umount-all: /proc/mounts: fsname=/proc dir=/proc type=proc opts=rw,relatime freq=0 passno=0
umount-all: /proc/mounts: fsname=/sys dir=/sys type=sysfs opts=rw,relatime freq=0 passno=0
umount-all: /proc/mounts: fsname=/dev dir=/dev type=devtmpfs opts=rw,relatime,size=605240k,nr_inodes=151310,mode=755,inode64 freq=0 passno=0
umount-all: /proc/mounts: fsname=/dev/pts dir=/dev/pts type=devpts opts=rw,relatime,mode=600,ptmxmode=000 freq=0 passno=0
umount-all: /proc/mounts: fsname=shmfs dir=/dev/shm type=tmpfs opts=rw,relatime,inode64 freq=0 passno=0
umount-all: /proc/mounts: fsname=tmpfs dir=/run type=tmpfs opts=rw,nosuid,relatime,size=245584k,mode=755,inode64 freq=0 passno=0
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sdb
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
commandrvf: stdout=n stderr=y flags=0x0
commandrvf: udevadm --debug settle -E /dev/sda
No filesystem is currently mounted on /sys/fs/cgroup.
Failed to determine unit we run in, ignoring: No data available
fsync /dev/sda
guestfsd: => internal_autosync (0x11a) took 0.03 secs
libguestfs: trace: internal_autosync = 0
libguestfs: calling virDomainDestroy flags=0
libguestfs: command: run: rm
libguestfs: command: run: \ -rf /tmp/libguestfsyJFhIb
libguestfs: command: run: rm
libguestfs: command: run: \ -rf /run/user/1000/libguestfsDfQ58g
```
