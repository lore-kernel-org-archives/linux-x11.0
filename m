From: "Marco Berizzi" <pupilla@hotmail.com>
Subject: intel 815 with kernel 2.6.10
Date: Mon, 27 Dec 2004 12:44:39 +0100
Message-ID: <BAY22-DAV39D33217497C403BE6E40B2990@phx.gbl>
Return-path: <linux-x11-owner@vger.kernel.org>
Sender: linux-x11-owner@vger.kernel.org
List-Id: <linux-x11.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x11@vger.kernel.org

Hello everybody.
I hope this is right mailing list.
I have a problem with X 6.8.1 and
linux 2.6.10 on an HP Vectra system
i815.

When I run X, the display show only
grey/blue garbage. However the mouse
pointer is right (I can see it).
This only happen with linux 2.6.x
(tested 2.6.9 and 2.6.10). Linux 2.4.27
and 2.4.28 are fine (this is a dual
kernel system).

My env: Slackware 10 gcc 3.3.4
glibc 2.3.2 X 6.8.1

I have also removed MTRR from kernel
2.6 compilation but same behaviour.

PS: Please cc me. I'm not subscribed
to this list.

This is dmesg and lspci output:

Linux version 2.6.10 (root@Cocorita) (gcc version 3.3.4) #1 Mon Dec 27
10:46:37 CET 2004
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009f800 (usable)
 BIOS-e820: 000000000009f800 - 00000000000a0000 (reserved)
 BIOS-e820: 00000000000e5c00 - 0000000000100000 (reserved)
 BIOS-e820: 0000000000100000 - 000000001fef0000 (usable)
 BIOS-e820: 000000001fef0000 - 000000001feffc00 (ACPI data)
 BIOS-e820: 000000001feffc00 - 000000001ff00000 (ACPI NVS)
 BIOS-e820: 000000001ff00000 - 0000000020000000 (reserved)
 BIOS-e820: 00000000fff00000 - 0000000100000000 (reserved)
510MB LOWMEM available.
On node 0 totalpages: 130800
  DMA zone: 4096 pages, LIFO batch:1
  Normal zone: 126704 pages, LIFO batch:16
  HighMem zone: 0 pages, LIFO batch:1
DMI 2.2 present.
Built 1 zonelists
Kernel command line: BOOT_IMAGE=Linux-2.6 ro root=301
Local APIC disabled by BIOS -- you can enable it with "lapic"
mapped APIC to ffffd000 (01404000)
Initializing CPU#0
CPU 0 irqstacks, hard=c0350000 soft=c034f000
PID hash table entries: 2048 (order: 11, 32768 bytes)
Detected 864.111 MHz processor.
Using tsc for high-res timesource
Console: colour VGA+ 80x25
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
Memory: 515580k/523200k available (1546k kernel code, 7076k reserved,
435k data, 356k init, 0k highmem)
Checking if this processor honours the WP bit even in supervisor mode...
Ok.
Calibrating delay loop... 1708.03 BogoMIPS (lpj=854016)
Mount-cache hash table entries: 512 (order: 0, 4096 bytes)
CPU: After generic identify, caps: 0383f9ff 00000000 00000000 00000000
CPU: After vendor identify, caps:  0383f9ff 00000000 00000000 00000000
CPU: L1 I cache: 16K, L1 D cache: 16K
CPU: L2 cache: 256K
CPU: After all inits, caps:        0383f9ff 00000000 00000000 00000040
CPU: Intel Pentium III (Coppermine) stepping 06
Enabling fast FPU save and restore... done.
Enabling unmasked SIMD FPU exception support... done.
Checking 'hlt' instruction... OK.
NET: Registered protocol family 16
PCI: PCI BIOS revision 2.10 entry at 0xfd9ae, last bus=1
PCI: Using configuration type 1
mtrr: v2.0 (20020519)
PCI: Probing PCI hardware
PCI: Probing PCI hardware (bus 00)
PCI: Transparent bridge - 0000:00:1e.0
PCI: Using IRQ router PIIX/ICH [8086/2410] at 0000:00:1f.0
Initializing Cryptographic API
Linux agpgart interface v0.100 (c) Dave Jones
serio: i8042 AUX port at 0x60,0x64 irq 12
serio: i8042 KBD port at 0x60,0x64 irq 1
io scheduler noop registered
io scheduler anticipatory registered
io scheduler deadline registered
io scheduler cfq registered
Uniform Multi-Platform E-IDE driver Revision: 7.00alpha2
ide: Assuming 33MHz system bus speed for PIO modes; override with
idebus=xx
ICH: IDE controller at PCI slot 0000:00:1f.1
ICH: chipset revision 2
ICH: not 100% native mode: will probe irqs later
    ide0: BM-DMA at 0x1800-0x1807, BIOS settings: hda:DMA, hdb:pio
    ide1: BM-DMA at 0x1808-0x180f, BIOS settings: hdc:DMA, hdd:pio
Probing IDE interface ide0...
hda: Maxtor 5T020H2, ATA DISK drive
elevator: using anticipatory as default io scheduler
ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
Probing IDE interface ide1...
hdc: CRD-8482B, ATAPI CD/DVD-ROM drive
ide1 at 0x170-0x177,0x376 on irq 15
hda: max request size: 128KiB
hda: Host Protected Area detected.
 current capacity is 39851760 sectors (20404 MB)
 native  capacity is 40021632 sectors (20491 MB)
hda: Host Protected Area disabled.
hda: 40021632 sectors (20491 MB) w/2048KiB Cache, CHS=39704/16/63,
UDMA(66)
hda: cache flushes not supported
 hda: hda1 hda2
mice: PS/2 mouse device common for all mice
input: AT Translated Set 2 keyboard on isa0060/serio0
input: ImPS/2 Generic Wheel Mouse on isa0060/serio1
NET: Registered protocol family 2
IP: routing cache hash table of 4096 buckets, 32Kbytes
TCP: Hash tables configured (established 32768 bind 65536)
ip_conntrack version 2.1 (4087 buckets, 32696 max) - 332 bytes per
conntrack
ip_tables: (C) 2000-2002 Netfilter core team
ipt_recent v0.3.1: Stephen Frost <sfrost@snowman.net>.
http://snowman.net/projects/ipt_recent/
Initializing IPsec netlink socket
NET: Registered protocol family 1
NET: Registered protocol family 17
NET: Registered protocol family 15
VFS: Mounted root (ext2 filesystem) readonly.
Freeing unused kernel memory: 356k freed
Adding 642592k swap on /dev/hda2.  Priority:-1 extents:1
PCI: Found IRQ 5 for device 0000:01:04.0
3c59x: Donald Becker and others. www.scyld.com/network/vortex.html
0000:01:04.0: 3Com PCI 3c905C Tornado at 0x2000. Vers LK1.1.19
agpgart: Detected an Intel i815 Chipset.
agpgart: Maximum main memory to use for agp memory: 438M
agpgart: AGP aperture is 64M @ 0xf0000000
PCI: Found IRQ 10 for device 0000:00:02.0
[drm] Initialized i810 1.4.0 20030605 on minor 0: Intel Corp. 82815 CGC
[Chipset Graphics Controller]
mtrr: base(0xf0000000) is not aligned on a size(0x41a000) boundary
[drm:i810_unlock] *ERROR* Process 187 using kernel context 0
mtrr: base(0xf0000000) is not aligned on a size(0x41a000) boundary
[drm:i810_unlock] *ERROR* Process 217 using kernel context 0
mtrr: base(0xf0000000) is not aligned on a size(0x41a000) boundary
[drm:i810_unlock] *ERROR* Process 235 using kernel context 0
mtrr: base(0xf0000000) is not aligned on a size(0x41a000) boundary
[drm:i810_unlock] *ERROR* Process 239 using kernel context 0
mtrr: base(0xf0000000) is not aligned on a size(0x180000) boundary
[drm] Using v1.4 init.
[drm] DMA Cleanup


lspci -vv output


00:00.0 Host bridge: Intel Corp. 82815 815 Chipset Host Bridge and
Memory Controller Hub (rev 02)
 Subsystem: Intel Corp. 82815 815 Chipset Host Bridge and Memory
Controller Hub
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR+ FastB2B-
 Status: Cap+ 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ >SERR- <PERR-
 Latency: 0
 Capabilities: [88] #09 [f104]

00:02.0 VGA compatible controller: Intel Corp. 82815 CGC [Chipset
Graphics Controller] (rev 02) (prog-if 00 [VGA])
 Subsystem: Hewlett-Packard Company: Unknown device 1245
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap+ 66Mhz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Latency: 0
 Interrupt: pin A routed to IRQ 10
 Region 0: Memory at f0000000 (32-bit, prefetchable) [size=64M]
 Region 1: Memory at ec000000 (32-bit, non-prefetchable) [size=512K]
 Capabilities: [dc] Power Management version 2
  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
PME(D0-,D1-,D2-,D3hot-,D3cold-)
  Status: D0 PME-Enable- DSel=0 DScale=0 PME-

00:1e.0 PCI bridge: Intel Corp. 82801AA PCI Bridge (rev 02) (prog-if 00
[Normal decode])
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR-
 Latency: 0
 Bus: primary=00, secondary=01, subordinate=01, sec-latency=32
 I/O behind bridge: 00002000-00002fff
 Memory behind bridge: ec100000-ec1fffff
 BridgeCtl: Parity- SERR- NoISA+ VGA- MAbort- >Reset- FastB2B-

00:1f.0 ISA bridge: Intel Corp. 82801AA ISA Bridge (LPC) (rev 02)
 Control: I/O+ Mem+ BusMaster+ SpecCycle+ MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Latency: 0

00:1f.1 IDE interface: Intel Corp. 82801AA IDE (rev 02) (prog-if 80
[Master])
 Subsystem: Intel Corp. 82801AA IDE
 Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Latency: 0
 Region 4: I/O ports at 1800 [size=16]

00:1f.2 USB Controller: Intel Corp. 82801AA USB (rev 02) (prog-if 00
[UHCI])
 Subsystem: Intel Corp. 82801AA USB
 Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Latency: 0
 Interrupt: pin D routed to IRQ 11
 Region 4: I/O ports at 1820 [size=32]

00:1f.3 SMBus: Intel Corp. 82801AA SMBus (rev 02)
 Subsystem: Intel Corp. 82801AA SMBus
 Control: I/O+ Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Interrupt: pin B routed to IRQ 9
 Region 4: I/O ports at 1810 [size=16]

00:1f.5 Multimedia audio controller: Intel Corp. 82801AA AC'97 Audio
(rev 02)
 Subsystem: Hewlett-Packard Company: Unknown device 1249
 Control: I/O+ Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap- 66Mhz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Interrupt: pin B routed to IRQ 9
 Region 0: I/O ports at 1200 [size=256]
 Region 1: I/O ports at 1300 [size=64]

01:04.0 Ethernet controller: 3Com Corporation 3c905C-TX/TX-M [Tornado]
(rev 78)
 Subsystem: Hewlett-Packard Company: Unknown device 1246
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B-
 Status: Cap+ 66Mhz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR-
 Latency: 80 (2500ns min, 2500ns max), cache line size 08
 Interrupt: pin A routed to IRQ 5
 Region 0: I/O ports at 2000 [size=128]
 Region 1: Memory at ec100000 (32-bit, non-prefetchable) [size=128]
 Expansion ROM at <unassigned> [disabled] [size=128K]
 Capabilities: [dc] Power Management version 2
  Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA
PME(D0+,D1+,D2+,D3hot+,D3cold+)
  Status: D0 PME-Enable- DSel=0 DScale=2 PME-




