From: Geraldo Netto <geraldonetto@gmail.com>
Subject: fglrx on kubuntu 9.10 shows a warning on dmesg
Date: Mon, 22 Feb 2010 01:47:13 -0300
Message-ID: <faf3083f1002212047g3815d96dobbe70aaa98326a15@mail.gmail.com>
References: <faf3083f1002212038j6b09d00bv7584bf156a8a9458@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-x11-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=H/mu/olLPwC1ERAx29BHLrArEp+/VM3zm1hqwexJkas=;
        b=clvT1f88FpzDNbIOPc5DQmIVKPYL7uHzT7jp3zoKLJ9Q1DbXSFSfz1UTsI0dxcKtM0
         GdU5n0e6HRHBf2+IuFxfLRTLx/sPGkMXDT5Q7z8zDAudWhjIF6QxqgzPVImF79h59FKD
         4sZaArqlnDbIrxVb1sy8tl00V2F8gJ1LvoRZw=
In-Reply-To: <faf3083f1002212038j6b09d00bv7584bf156a8a9458@mail.gmail.com>
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: xorg-driver-ati@lists.x.org, xorg@lists.freedesktop.org, linux-x11@vger.kernel.org

Hi All,

first, sorry for crossposting, but once i didn't know how to
proceed, i'm crossposting xorg-driver-ati@lists.x.org,
xorg@lists.freedesktop.org, linux-x11@vger.kernel.org
also, please, cc me once i'm not subscribed in any of those mailing lis=
ts....

well, while i still can play games like assaultcube, fglrx prints such
a warning...
I thought posting may somehow help to figure out what is happening
possibly someone from ati once its the proprietary driver can help...
ah, apparently openbox performs better than kwin too when running kde

logs(lots of them):

dmesg
[ =A0 17.493684] ------------[ cut here ]------------
[ =A0 17.493695] WARNING: at
/build/buildd/linux-2.6.31/mm/page_alloc.c:1751
__alloc_pages_slowpath+0x459/0x480()
[ =A0 17.493698] Hardware name: System Product Name
[ =A0 17.493700] Modules linked in: snd_hda_codec_atihdmi
snd_hda_codec_realtek pl2303 snd_seq_dummy snd_seq_oss snd_seq_midi
snd_rawmidi snd_seq_midi_event snd_seq snd_hda_intel snd_hda_codec
snd_hwdep usbserial snd_pcm_oss asix snd_mixer_oss usbnet snd_pcm
ppdev iptable_filter ip_tables snd_seq_device joydev x_tables usblp
psmouse fglrx(P) serio_raw agpgart snd_timer shpchp parport_pc snd
asus_atk0110 soundcore snd_page_alloc i2c_piix4 lp parport usbhid
8139too 8139cp r8169 mii
[ =A0 17.493737] Pid: 1243, comm: Xorg Tainted: P
2.6.31-19-generic-pae #56-Ubuntu
[ =A0 17.493739] Call Trace:
[ =A0 17.493745] =A0[<c01468ad>] warn_slowpath_common+0x6d/0xa0
[ =A0 17.493749] =A0[<c01ba309>] ? __alloc_pages_slowpath+0x459/0x480
[ =A0 17.493752] =A0[<c01ba309>] ? __alloc_pages_slowpath+0x459/0x480
[ =A0 17.493756] =A0[<c01468f5>] warn_slowpath_null+0x15/0x20
[ =A0 17.493759] =A0[<c01ba309>] __alloc_pages_slowpath+0x459/0x480
[ =A0 17.493762] =A0[<c01b9d28>] ? get_page_from_freelist+0x1e8/0x370
[ =A0 17.493828] =A0[<f87b3e88>] ? IsCrossFireCapable+0x18/0x30 [fglrx]
[ =A0 17.493877] =A0[<f87b23d4>] ?
AdjustRequestedMcAddressRangeInfo+0xa4/0xb0 [fglrx]
[ =A0 17.493881] =A0[<c01ba43f>] __alloc_pages_nodemask+0x10f/0x120
[ =A0 17.493884] =A0[<c01ba497>] __get_free_pages+0x17/0x30
[ =A0 17.493920] =A0[<f8751420>]
KCL_MEM_AllocContiguousPageFrames+0x10/0x20 [fglrx]
[ =A0 17.493959] =A0[<f8757f0d>] drm_alloc_pages+0xdd/0x290 [fglrx]
[ =A0 17.494001] =A0[<f876f3e7>] ?
MCIL_AllocateContiguousMemory+0x47/0x100 [fglrx]
[ =A0 17.494041] =A0[<f876fa28>] ? MCIL_ZeroMemory+0x58/0x60 [fglrx]
[ =A0 17.494096] =A0[<f88026ce>] ?
_ZN7GpsBase28GPS_AllocateContiguousMemoryEPvyjP15_ULARGE_INTEGERyyy+0xe=
e/0x150
[fglrx]
[ =A0 17.494149] =A0[<f880438f>] ?
_ZN10GPSContext22assessInitialResourcesEv+0xcf/0x240 [fglrx]
[ =A0 17.494202] =A0[<f881575a>] ?
_ZN23PageTableGartVmptSysMem4InitEv+0x9a/0x200 [fglrx]
[ =A0 17.494256] =A0[<f8802d15>] ? _ZN10GPSContextC1EP9_GPS_INIT+0x1d5/=
0x270 [fglrx]
[ =A0 17.494308] =A0[<f88132c6>] ?
_ZN13GartVmptRS78015CreatePageTableEP9GpsConfig+0x46/0x210 [fglrx]
[ =A0 17.494361] =A0[<f88040fd>] ?
_ZN10GPSContext18InitializeAsicGartEv+0x3d/0xe0 [fglrx]
[ =A0 17.494416] =A0[<f87fe339>] ? Gps_GartInitialization+0x29/0x40 [fg=
lrx]
[ =A0 17.494457] =A0[<f8775a13>] ? __gart_init+0x373/0x990 [fglrx]
[ =A0 17.494504] =A0[<f883a8e5>] ? amdPcsEngine_Command+0x145/0x600 [fg=
lrx]
[ =A0 17.494549] =A0[<f87973e8>] ? CAIL_BridgeASPMWorkaround+0x28/0x1d0=
 [fglrx]
[ =A0 17.494590] =A0[<f8755a0e>] ? KCL_lock_init+0x1e/0x80 [fglrx]
[ =A0 17.494631] =A0[<f8772e54>] ? gal_init+0xd4/0x190 [fglrx]
[ =A0 17.494672] =A0[<f877a22e>] ? mc_heap_init+0x12e/0x280 [fglrx]
[ =A0 17.494715] =A0[<f8782823>] ? hal_get_num_hzmem_pipes+0x23/0xa0 [f=
glrx]
[ =A0 17.494755] =A0[<f8765345>] ? firegl_init_pcie+0x1b5/0x4f0 [fglrx]
[ =A0 17.494795] =A0[<f876a98b>] ? firegl_cail_query_mc_range+0x7b/0xd0=
 [fglrx]
[ =A0 17.494801] =A0[<c02cb7c5>] ? security_capable+0x25/0x30
[ =A0 17.494840] =A0[<f8765190>] ? firegl_init_pcie+0x0/0x4f0 [fglrx]
[ =A0 17.494844] =A0[<c0150890>] ? capable+0x10/0x40
[ =A0 17.494882] =A0[<f8765190>] ? firegl_init_pcie+0x0/0x4f0 [fglrx]
[ =A0 17.494886] =A0[<c0246466>] ? ext3_iget+0xa6/0x390
[ =A0 17.494924] =A0[<f87603bd>] ? firegl_ioctl+0x22d/0x2b0 [fglrx]
[ =A0 17.494928] =A0[<c0246466>] ? ext3_iget+0xa6/0x390
[ =A0 17.494933] =A0[<c0246466>] ? ext3_iget+0xa6/0x390
[ =A0 17.494967] =A0[<f87559b9>] ? ip_firegl_ioctl+0x19/0x20 [fglrx]
[ =A0 17.494970] =A0[<c0246466>] ? ext3_iget+0xa6/0x390
[ =A0 17.494974] =A0[<c01f8bc3>] ? vfs_ioctl+0x73/0x90
[ =A0 17.494977] =A0[<c0246466>] ? ext3_iget+0xa6/0x390
[ =A0 17.494980] =A0[<c01f8e91>] ? do_vfs_ioctl+0x71/0x310
[ =A0 17.494985] =A0[<c057929b>] ? do_page_fault+0x19b/0x380
[ =A0 17.494988] =A0[<c01f918f>] ? sys_ioctl+0x5f/0x80
[ =A0 17.494991] =A0[<c0103283>] ? sysenter_do_call+0x12/0x28
[ =A0 17.494994] =A0[<c0246466>] ? ext3_iget+0xa6/0x390
[ =A0 17.494996] ---[ end trace 9a5763d4d0ccf5e0 ]---
[ =A0 17.554451] =A0 alloc irq_desc for 27 on node -1
[ =A0 17.554455] =A0 alloc kstat_irqs on node -1
[ =A0 17.554467] fglrx_pci 0000:01:05.0: irq 27 for MSI/MSI-X
[ =A0 17.557296] [fglrx] Firegl kernel thread PID: 1313
[ =A0 18.400152] [fglrx] Gart USWC size:1279 M.
[ =A0 18.400156] [fglrx] Gart cacheable size:508 M.
[ =A0 18.400162] [fglrx] Reserved FB block: Shared offset:0, size:10000=
00
[ =A0 18.400165] [fglrx] Reserved FB block: Unshared offset:fbfa000, si=
ze:401000
[ =A0 18.400168] [fglrx] Reserved FB block: Unshared offset:fffb000, si=
ze:5000

netto@black-dev:~$ uname -a
Linux black-dev 2.6.31-19-generic-pae #56-Ubuntu SMP Thu Jan 28
02:29:51 UTC 2010 i686 GNU/Linux
netto@black-dev:~$ free -m
=A0 =A0 =A0 =A0 =A0 =A0 total =A0 =A0 =A0 used =A0 =A0 =A0 free =A0 =A0=
 shared =A0 =A0buffers =A0 =A0 cached
Mem: =A0 =A0 =A0 =A0 =A07813 =A0 =A0 =A0 =A0618 =A0 =A0 =A0 7194 =A0 =A0=
 =A0 =A0 =A00 =A0 =A0 =A0 =A0 66 =A0 =A0 =A0 =A0285
-/+ buffers/cache: =A0 =A0 =A0 =A0267 =A0 =A0 =A0 7545
Swap: =A0 =A0 =A0 =A0 2000 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 2000
netto@black-dev:~$ lsmod
Module =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Size =A0Used by
nls_iso8859_1 =A0 =A0 =A0 =A0 =A0 3740 =A01
nls_cp437 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5372 =A01
vfat =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 10716 =A01
fat =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A051452 =A01 vfat
snd_hda_codec_atihdmi =A0 =A0 3356 =A01
snd_hda_codec_realtek =A0 203328 =A01
pl2303 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 17792 =A00
snd_seq_dummy =A0 =A0 =A0 =A0 =A0 2656 =A00
snd_seq_oss =A0 =A0 =A0 =A0 =A0 =A028576 =A00
snd_seq_midi =A0 =A0 =A0 =A0 =A0 =A06432 =A00
snd_rawmidi =A0 =A0 =A0 =A0 =A0 =A022208 =A01 snd_seq_midi
snd_seq_midi_event =A0 =A0 =A06940 =A02 snd_seq_oss,snd_seq_midi
snd_seq =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A050224 =A06
snd_seq_dummy,snd_seq_oss,snd_seq_midi,snd_seq_midi_event
snd_hda_intel =A0 =A0 =A0 =A0 =A026984 =A01
snd_hda_codec =A0 =A0 =A0 =A0 =A075708 =A03
snd_hda_codec_atihdmi,snd_hda_codec_realtek,snd_hda_intel
snd_hwdep =A0 =A0 =A0 =A0 =A0 =A0 =A0 7200 =A01 snd_hda_codec
usbserial =A0 =A0 =A0 =A0 =A0 =A0 =A036264 =A01 pl2303
snd_pcm_oss =A0 =A0 =A0 =A0 =A0 =A037920 =A00
asix =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 14716 =A00
snd_mixer_oss =A0 =A0 =A0 =A0 =A016028 =A01 snd_pcm_oss
usbnet =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 17188 =A01 asix
snd_pcm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A075520 =A03 snd_hda_intel,snd_hda=
_codec,snd_pcm_oss
ppdev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 6688 =A00
iptable_filter =A0 =A0 =A0 =A0 =A03100 =A00
ip_tables =A0 =A0 =A0 =A0 =A0 =A0 =A011692 =A01 iptable_filter
snd_seq_device =A0 =A0 =A0 =A0 =A06920 =A05
snd_seq_dummy,snd_seq_oss,snd_seq_midi,snd_rawmidi,snd_seq
joydev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 10240 =A00
x_tables =A0 =A0 =A0 =A0 =A0 =A0 =A0 16544 =A01 ip_tables
usblp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A012636 =A00
psmouse =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A056500 =A00
fglrx =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A01989980 =A028
serio_raw =A0 =A0 =A0 =A0 =A0 =A0 =A0 5280 =A00
agpgart =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A035020 =A01 fglrx
snd_timer =A0 =A0 =A0 =A0 =A0 =A0 =A022276 =A02 snd_seq,snd_pcm
shpchp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 32336 =A00
parport_pc =A0 =A0 =A0 =A0 =A0 =A0 32228 =A01
snd =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A059204 =A014
snd_hda_codec_realtek,snd_seq_oss,snd_rawmidi,snd_seq,snd_hda_intel,snd=
_hda_codec,snd_hwdep,snd_pcm_oss,snd_mixer_oss,snd_pcm,snd_seq_device,s=
nd_timer
asus_atk0110 =A0 =A0 =A0 =A0 =A0 =A08252 =A00
soundcore =A0 =A0 =A0 =A0 =A0 =A0 =A0 7264 =A01 snd
snd_page_alloc =A0 =A0 =A0 =A0 =A09252 =A02 snd_hda_intel,snd_pcm
i2c_piix4 =A0 =A0 =A0 =A0 =A0 =A0 =A010124 =A00
lp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08964 =A00
parport =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A035340 =A03 ppdev,parport_pc,lp
usbhid =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 38304 =A00
8139too =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A022716 =A00
8139cp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 19612 =A00
r8169 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A032384 =A00
mii =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5212 =A05 asix,usbnet,8139t=
oo,8139cp,r8169
netto@black-dev:/proc/ati$ cat debug
DebugTraceMask=3D0x0, 0x0. DebugLevelMask=3D0x0.
echo DebugTraceMask[0/1]=3D0xXX > /proc/dri/debug =A0-- Enable trace
functions with specified with bitmask.
Bit mask define for EnableTrace0:(bit0-bit31)
=46N_FIREGL_OPEN_RELEASE=3D0,FN_FIREGL_IOCTL, FN_FIREGL_MMAP, FN_FIREGL=
_READ_WRITE
=46N_FIREGL_FASYNC=3D4,FN_FIREGL_POLL, FN_FIREGL_LSEEK, FN_FIREGL_COMPA=
T_IOCTL
=46N_DRM_VM_OPEN_CLOSE=3D8, FN_DRM_NOPAGE, FN_FIREGL_ACPI, FN_FIREGL_IR=
Q
=46N_FIREGL_PROC=3D12, FN_FIREGL_KAS, FN_FIREGL_KCL, FN_FIREGL_INIT
=46N_GENERIC1=3D16, FN_GENERIC2, ... FN_GENERIC31
Bit mask for EnableTrace1 are reserved for developer.
echo DebugLevelMask=3D0xXX > /proc/dri/debug =A0-- Enable debug message
output with different level.
=46N_DEBUG_TRACE=3D0, FN_DEBUG_LEVEL1, ... FN_DEBUG_LEVEL7
n/a
netto@black-dev:/proc/ati/0$ cat biosversion

BIOS_CREATION_DATE=3D"05/15/08,06:10:42"
BIOS_MSG=3D"B27722 RS780 DDR2 200e/500m
=A0 =A0 =A0 =A0 =A0 =A0 =A0 "
BIOS_KIT_VERSION=3D"BK-ATI VER010.092.000.001.000000"
BIOS_PN=3D"<NOT FOUND>"
netto@black-dev:/proc/ati/0$ cat clients
a dev =A0 pid =A0 uid =A0 =A0 =A0magic =A0 =A0 ioctls =A0 =A0context

y =A0 0 =A01243 =A0 =A0 0 =A0 =A0 =A0 =A0 =A01 =A0 =A0 =A017460 0x00000=
001
netto@black-dev:/proc/ati/0$ cat interrupt_info
Device: PCI:1:5:0
Kernel: 0
AsyncIO: 0
netto@black-dev:/proc/ati/0$ cat lock
lock ([0xf830f000]=3D00000001)
netto@black-dev:/proc/ati/0$ cat mem
=A0 =A0 =A0 =A0 =A0 =A0 =A0total counts =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
outstanding
type =A0 =A0 =A0 =A0 =A0 alloc =A0fail =A0 =A0 =A0bytes | allocs =A0 =A0=
 =A0bytes
system =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 3897610240 | =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00
locked =A0 =A0 =A0 =A0 =A08748 =A0 =A0 0 =A0 39590312 | =A0 8748 =A0 39=
590312
sareas =A0 =A0 =A0 =A0 =A0 =A0 2 =A0 =A0 0 =A0 =A0 =A040960 | =A0 =A0 =A0=
2 =A0 =A0 =A040960
driver =A0 =A0 =A0 =A0 33009 =A0 =A0 1 =A0 =A07395226 | =A0 =A0114 =A0 =
=A04106134
magic =A0 =A0 =A0 =A0 =A0 =A0 =A01 =A0 =A0 0 =A0 =A0 =A0 =A0 12 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
maplist =A0 =A0 =A0 =A0 =A0 27 =A0 =A0 0 =A0 =A0 =A0 1620 | =A0 =A0 15 =
=A0 =A0 =A0 =A0900
vmalist =A0 =A0 =A0 =A0 =A0109 =A0 =A0 0 =A0 =A0 =A0 1308 | =A0 =A0 16 =
=A0 =A0 =A0 =A0192
buflist =A0 =A0 =A0 =A0 =A0 15 =A0 =A0 0 =A0 =A0 139108 | =A0 =A0 15 =A0=
 =A0 139108
files =A0 =A0 =A0 =A0 =A0 =A0 =A03 =A0 =A0 0 =A0 =A0 =A0 1536 | =A0 =A0=
 =A03 =A0 =A0 =A0 1536
contexts =A0 =A0 =A0 =A0 =A0 2 =A0 =A0 0 =A0 =A0 =A0 =A0 24 | =A0 =A0 =A0=
1 =A0 =A0 =A0 =A0 16
hwcontext =A0 =A0 =A0 =A0 =A03 =A0 =A0 0 =A0 =A0 =A024576 | =A0 =A0 =A0=
3 =A0 =A0 =A024576
netto@black-dev:/proc/ati/0$ cat mem1
=A0 =A0 =A0 =A0 =A0 =A0 =A0total counts =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
outstanding
type =A0 =A0 =A0 =A0 =A0 alloc =A0fail =A0 =A0 =A0bytes | allocs =A0 =A0=
 =A0bytes
mappings =A0 =A0 =A0 =A0 =A0 5 =A0 =A0 0 =A0 =A05382144 | =A0 =A0 =A05 =
=A0 =A05382144
textures =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
agplist =A0 =A0 =A0 =A0 =A0 =A00 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
agpmem =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
boundagp =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
aperture =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
dmabufs =A0 =A0 =A0 =A0 =A0 =A00 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
memlocks =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
mutex =A0 =A0 =A0 =A0 =A0 =A0 =A04 =A0 =A0 0 =A0 =A0 =A0 =A0 64 | =A0 =A0=
 =A04 =A0 =A0 =A0 =A0 64
drawables =A0 =A0 =A0 =A0 =A00 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00
mempages =A0 =A0 =A0 =A08721 =A0 =A0 0 =A0 35721216 | =A0 8721 =A0 3572=
1216
pcielist =A0 =A0 =A0 =A0 =A010 =A0 =A0 0 =A0 =A0 102572 | =A0 =A0 =A09 =
=A0 =A0 =A069804
pcie =A0 =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0=
 =A0 =A00 =A0 =A0 =A0 =A0 =A00
netto@black-dev:/proc/ati/0$ cat name
fglrx 0xfb00000 PCI:1:5:0
netto@black-dev:/proc/ati/0$ cat vm
offset =A0 =A0 size =A0 =A0 =A0 type flag handle =A0 =A0 mtrr map_count

0xf830f000 0x2000 =A0SHM 0x20 0xf830f000 none 2
0xd0000000 0x10000000 =A0 FB 0x00 0x00000000 none 0
0xfbdf0000 0x10000 =A0REG 0x00 0xf8720000 none 2
0x1ff000 0x1000 =A0 ?? 0x00 0x00000000 none 1
0x100000 0x700000 =A0 ?? 0x00 0x00000000 none 1
0xc0000000 0x101d000 =A0 ?? 0x00 0x00000000 none 1
0xf897d000 0x8000 =A0SHM 0x40 0xf897d000 none 1
0xc101d000 0x200000 =A0 ?? 0x00 0x00000000 none 1
0x2eb26000 0x1000 =A0CTX 0x01 0xeeb26000 none 0
0xc121d000 0x4000 =A0 ?? 0x00 0x00000000 none 1
0xc1221000 0x4000 =A0 ?? 0x00 0x00000000 none 1
0xc1225000 0x1000 =A0 ?? 0x00 0x00000000 none 1
0xc1226000 0x1000 =A0 ?? 0x00 0x00000000 none 1
0x850000 0x11000 =A0 ?? 0x00 0x00000000 none 1
0x860000 0x401000 =A0 ?? 0x00 0x00000000 none 1
0xc60000 0x401000 =A0 ?? 0x00 0x00000000 none 1
0x32946000 0x1000 =A0CTX 0x01 0xf2946000 none 0
netto@black-dev:/proc$ cat mtrr
reg00: base=3D0x000000000 ( =A0 =A00MB), size=3D 2048MB, count=3D1: wri=
te-back
reg01: base=3D0x080000000 ( 2048MB), size=3D 1024MB, count=3D1: write-b=
ack
netto@black-dev:/proc$ cat /etc/X11/xorg.conf
Section "ServerLayout"
=A0 =A0 =A0 =A0Identifier =A0 =A0 "Layout[all]"
=A0 =A0 =A0 =A0Screen =A0 =A0 =A00 =A0"aticonfig-Screen[0]-0" 0 0
=A0 =A0 =A0 =A0InputDevice =A0 =A0"Keyboard[0]" "CoreKeyboard"
=A0 =A0 =A0 =A0InputDevice =A0 =A0"Mouse[1]" "CorePointer"
EndSection

Section "Files"
=A0 =A0 =A0 =A0InputDevices =A0 "/dev/gpmdata"
=A0 =A0 =A0 =A0InputDevices =A0 "/dev/input/mice"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/misc:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/local"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/75dpi:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/100dpi:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/Type1"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/URW"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/Speedo"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/PEX"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/cyrillic"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/latin2/misc:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/latin2/75dpi:unscaled=
"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/latin2/100dpi:unscale=
d"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/latin2/Type1"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/latin7/75dpi:unscaled=
"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/baekmuk:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/japanese:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/kwintv"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/truetype"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/uni:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/CID"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/ucs/misc:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/ucs/75dpi:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/ucs/100dpi:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/hellas/misc:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/hellas/75dpi:unscaled=
"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/hellas/100dpi:unscale=
d"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/hellas/Type1"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/misc/sgi:unscaled"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/usr/share/fonts/xtest"
=A0 =A0 =A0 =A0FontPath =A0 =A0 "/opt/kde3/share/fonts"
EndSection

Section "Module"
=A0 =A0 =A0 =A0Load =A0"GLcore"
=A0 =A0 =A0 =A0Load =A0"glx"
=A0 =A0 =A0 =A0Load =A0"dri"
EndSection

Section "ServerFlags"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"AllowMouseOpenFail" "on"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"ZapWarning" "on"
EndSection

Section "InputDevice"
=A0 =A0 =A0 =A0Identifier =A0"Keyboard[0]"
=A0 =A0 =A0 =A0Driver =A0 =A0 =A0"kbd"
=A0 =A0 =A0 =A0Option =A0 =A0 "Protocol" "Standard"
=A0 =A0 =A0 =A0Option =A0 =A0 "XkbLayout" "br"
=A0 =A0 =A0 =A0Option =A0 =A0 "XkbModel" "pc105"
=A0 =A0 =A0 =A0Option =A0 =A0 "XkbRules" "xorg"
=A0 =A0 =A0 =A0Option =A0 =A0 "XkbVariant" "abtn2"
=A0 =A0 =A0 =A0Option =A0 =A0 "XkbOptions" "lv3:lwin_switch"
=A0 =A0 =A0 =A0Option =A0 =A0 "XkbOptions" "terminate:ctrl_alt_bksp"
EndSection

Section "InputDevice"
=A0 =A0 =A0 =A0Identifier =A0"Mouse[1]"
=A0 =A0 =A0 =A0Driver =A0 =A0 =A0"mouse"
=A0 =A0 =A0 =A0Option =A0 =A0 "Buttons" "5"
=A0 =A0 =A0 =A0Option =A0 =A0 "Device" "/dev/input/mice"
=A0 =A0 =A0 =A0Option =A0 =A0 "Name" "ImPS/2 Generic Wheel Mouse"
=A0 =A0 =A0 =A0Option =A0 =A0 "Protocol" "explorerps/2"
=A0 =A0 =A0 =A0Option =A0 =A0 "Vendor" "Sysp"
=A0 =A0 =A0 =A0Option =A0 =A0 "ZAxisMapping" "4 5"
EndSection

Section "Modes"
=A0 =A0 =A0 =A0Identifier =A0 =A0 "Modes[0]"
EndSection

Section "Monitor"
=A0 =A0 =A0 =A0Identifier =A0 "Monitor[0]"
=A0 =A0 =A0 =A0VendorName =A0 "LG"
=A0 =A0 =A0 =A0ModelName =A0 =A0"LG"
=A0 =A0 =A0 =A0UseModes =A0 =A0 "Modes[0]"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0 "PreferredMode" "1920x1080"
EndSection

Section "Monitor"
=A0 =A0 =A0 =A0Identifier =A0 "aticonfig-Monitor[0]-0"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"VendorName" "ATI Proprietary Driver"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"ModelName" "Generic Autodetecting Mon=
itor"
EndSection

Section "Device"
=A0 =A0 =A0 =A0Identifier =A0"aticonfig-Device[0]-0"
=A0 =A0 =A0 =A0Driver =A0 =A0 =A0"fglrx"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"XAANoOffscreenPixmaps" "true"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0 "AGPFastWrite" "true"
=A0 =A0 =A0 =A0#Option =A0 =A0 =A0"DynamicClocks" =A0 =A0"true"
=A0 =A0 =A0 =A0#Option =A0 =A0 =A0"VideoOverlay" "off"
=A0 =A0 =A0 =A0#Option =A0 =A0 =A0"OpenGLOverlay" "off"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"TexturedVideo" "on"
=A0 =A0 =A0 =A0Option =A0 =A0 =A0"UseFastTLS" "1"
=A0 =A0 =A0 =A0BusID =A0 =A0 =A0 "PCI:1:5:0"
EndSection

Section "Screen"
=A0 =A0 =A0 =A0Identifier "Screen[0]"
=A0 =A0 =A0 =A0Device =A0 =A0 "aticonfig-Device[0]-0"
=A0 =A0 =A0 =A0Monitor =A0 =A0"Monitor[0]"
=A0 =A0 =A0 =A0DefaultDepth =A0 =A0 24
=A0 =A0 =A0 =A0SubSection "Display"
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depth =A0 =A0 24
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Modes =A0 =A0"1920x1080"
=A0 =A0 =A0 =A0EndSubSection
EndSection

Section "Screen"
=A0 =A0 =A0 =A0Identifier "aticonfig-Screen[0]-0"
=A0 =A0 =A0 =A0Device =A0 =A0 "aticonfig-Device[0]-0"
=A0 =A0 =A0 =A0Monitor =A0 =A0"aticonfig-Monitor[0]-0"
=A0 =A0 =A0 =A0DefaultDepth =A0 =A0 24
=A0 =A0 =A0 =A0SubSection "Display"
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Viewport =A0 0 0
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depth =A0 =A0 24
=A0 =A0 =A0 =A0EndSubSection
EndSection

Section "DRI"
=A0 =A0 =A0 =A0Group =A0 =A0 =A0 =A0"video"
=A0 =A0 =A0 =A0Mode =A0 =A0 =A0 =A0 0666
EndSection

Section "Extensions"
=A0 =A0 =A0 =A0Option "XVideo" "Enable"
=A0 =A0 =A0 =A0Option "Composite" "Disable"
EndSection
netto@black-dev:/proc$ cat vmstat
nr_free_pages 1840450
nr_inactive_anon 0
nr_active_anon 49571
nr_inactive_file 74447
nr_active_file 15176
nr_unevictable 0
nr_mlock 0
nr_anon_pages 48610
nr_mapped 21972
nr_file_pages 90584
nr_dirty 13
nr_writeback 0
nr_slab_reclaimable 3692
nr_slab_unreclaimable 2436
nr_page_table_pages 869
nr_unstable 0
nr_bounce 0
nr_vmscan_write 0
nr_writeback_temp 0
pgpgin 427936
pgpgout 11808
pswpin 0
pswpout 0
pgalloc_dma 2
pgalloc_normal 182259
pgalloc_high 579867
pgalloc_movable 0
pgfree 2603452
pgactivate 17904
pgdeactivate 0
pgfault 880572
pgmajfault 1192
pgrefill_dma 0
pgrefill_normal 0
pgrefill_high 0
pgrefill_movable 0
pgsteal_dma 0
pgsteal_normal 0
pgsteal_high 0
pgsteal_movable 0
pgscan_kswapd_dma 0
pgscan_kswapd_normal 0
pgscan_kswapd_high 0
pgscan_kswapd_movable 0
pgscan_direct_dma 0
pgscan_direct_normal 0
pgscan_direct_high 0
pgscan_direct_movable 0
pginodesteal 0
slabs_scanned 0
kswapd_steal 0
kswapd_inodesteal 0
pageoutrun 0
allocstall 0
pgrotated 0
htlb_buddy_alloc_success 0
htlb_buddy_alloc_fail 0
unevictable_pgs_culled 0
unevictable_pgs_scanned 0
unevictable_pgs_rescued 0
unevictable_pgs_mlocked 0
unevictable_pgs_munlocked 0
unevictable_pgs_cleared 0
unevictable_pgs_stranded 0
unevictable_pgs_mlockfreed 0
netto@black-dev:/proc$ cat buddyinfo
Node 0, zone =A0 =A0 =A0DMA =A0 =A0 =A04 =A0 =A0 =A06 =A0 =A0 =A04 =A0 =
=A0 =A05 =A0 =A0 =A03 =A0 =A0 =A03 =A0 =A0 =A04
=A0 =A0 1 =A0 =A0 =A02 =A0 =A0 =A02 =A0 =A0 =A00
Node 0, zone =A0 Normal =A0 =A0 =A03 =A0 =A0 =A02 =A0 =A0 12 =A0 =A0 =A0=
7 =A0 =A0 25 =A0 =A0 28 =A0 =A0 20
=A0 =A014 =A0 =A0 =A09 =A0 =A0 =A07 =A0 =A0154
Node 0, zone =A0HighMem =A0 =A0 91 =A0 =A0 76 =A0 =A0 16 =A0 =A0 =A07 =A0=
 =A0 =A04 =A0 =A0 =A04 =A0 =A0 =A06
=A0 =A0 3 =A0 =A0 =A01 =A0 =A0 =A01 =A0 1629
netto@black-dev:/proc$ cat cpuinfo
processor =A0 =A0 =A0 : 0
vendor_id =A0 =A0 =A0 : AuthenticAMD
cpu family =A0 =A0 =A0: 16
model =A0 =A0 =A0 =A0 =A0 : 2
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor
stepping =A0 =A0 =A0 =A0: 2
cpu MHz =A0 =A0 =A0 =A0 : 2200.000
cache size =A0 =A0 =A0: 512 KB
physical id =A0 =A0 : 0
siblings =A0 =A0 =A0 =A0: 4
core id =A0 =A0 =A0 =A0 : 0
cpu cores =A0 =A0 =A0 : 4
apicid =A0 =A0 =A0 =A0 =A0: 0
initial apicid =A0: 0
fdiv_bug =A0 =A0 =A0 =A0: no
hlt_bug =A0 =A0 =A0 =A0 : no
f00f_bug =A0 =A0 =A0 =A0: no
coma_bug =A0 =A0 =A0 =A0: no
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes
fpu_exception =A0 : yes
cpuid level =A0 =A0 : 5
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep=
 mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips =A0 =A0 =A0 =A0: 4413.24
clflush size =A0 =A0: 64
power management: ts ttp tm stc 100mhzsteps hwpstate

processor =A0 =A0 =A0 : 1
vendor_id =A0 =A0 =A0 : AuthenticAMD
cpu family =A0 =A0 =A0: 16
model =A0 =A0 =A0 =A0 =A0 : 2
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor
stepping =A0 =A0 =A0 =A0: 2
cpu MHz =A0 =A0 =A0 =A0 : 2200.000
cache size =A0 =A0 =A0: 512 KB
physical id =A0 =A0 : 0
siblings =A0 =A0 =A0 =A0: 4
core id =A0 =A0 =A0 =A0 : 1
cpu cores =A0 =A0 =A0 : 4
apicid =A0 =A0 =A0 =A0 =A0: 1
initial apicid =A0: 1
fdiv_bug =A0 =A0 =A0 =A0: no
hlt_bug =A0 =A0 =A0 =A0 : no
f00f_bug =A0 =A0 =A0 =A0: no
coma_bug =A0 =A0 =A0 =A0: no
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes
fpu_exception =A0 : yes
cpuid level =A0 =A0 : 5
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep=
 mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips =A0 =A0 =A0 =A0: 4412.96
clflush size =A0 =A0: 64
power management: ts ttp tm stc 100mhzsteps hwpstate

processor =A0 =A0 =A0 : 2
vendor_id =A0 =A0 =A0 : AuthenticAMD
cpu family =A0 =A0 =A0: 16
model =A0 =A0 =A0 =A0 =A0 : 2
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor
stepping =A0 =A0 =A0 =A0: 2
cpu MHz =A0 =A0 =A0 =A0 : 2200.000
cache size =A0 =A0 =A0: 512 KB
physical id =A0 =A0 : 0
siblings =A0 =A0 =A0 =A0: 4
core id =A0 =A0 =A0 =A0 : 2
cpu cores =A0 =A0 =A0 : 4
apicid =A0 =A0 =A0 =A0 =A0: 2
initial apicid =A0: 2
fdiv_bug =A0 =A0 =A0 =A0: no
hlt_bug =A0 =A0 =A0 =A0 : no
f00f_bug =A0 =A0 =A0 =A0: no
coma_bug =A0 =A0 =A0 =A0: no
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes
fpu_exception =A0 : yes
cpuid level =A0 =A0 : 5
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep=
 mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips =A0 =A0 =A0 =A0: 4412.62
clflush size =A0 =A0: 64
power management: ts ttp tm stc 100mhzsteps hwpstate

processor =A0 =A0 =A0 : 3
vendor_id =A0 =A0 =A0 : AuthenticAMD
cpu family =A0 =A0 =A0: 16
model =A0 =A0 =A0 =A0 =A0 : 2
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor
stepping =A0 =A0 =A0 =A0: 2
cpu MHz =A0 =A0 =A0 =A0 : 2200.000
cache size =A0 =A0 =A0: 512 KB
physical id =A0 =A0 : 0
siblings =A0 =A0 =A0 =A0: 4
core id =A0 =A0 =A0 =A0 : 3
cpu cores =A0 =A0 =A0 : 4
apicid =A0 =A0 =A0 =A0 =A0: 3
initial apicid =A0: 3
fdiv_bug =A0 =A0 =A0 =A0: no
hlt_bug =A0 =A0 =A0 =A0 : no
f00f_bug =A0 =A0 =A0 =A0: no
coma_bug =A0 =A0 =A0 =A0: no
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes
fpu_exception =A0 : yes
cpuid level =A0 =A0 : 5
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep=
 mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips =A0 =A0 =A0 =A0: 4412.62
clflush size =A0 =A0: 64
power management: ts ttp tm stc 100mhzsteps hwpstate
netto@black-dev:/proc$ cat interrupts
=A0 =A0 =A0 =A0 =A0 CPU0 =A0 =A0 =A0 CPU1 =A0 =A0 =A0 CPU2 =A0 =A0 =A0 =
CPU3
=A00: =A0 =A0 =A0 =A0 46 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A02 =A0 IO-APIC-edge =A0 =A0 =A0timer
=A01: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A02 =A0 IO-APIC-edge =A0 =A0 =A0i8042
=A04: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A02 =A0 IO-APIC-edge
=A07: =A0 =A0 =A0 =A0 =A01 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 IO-APIC-edge =A0 =A0 =A0parport0
=A08: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A01 =A0 IO-APIC-edge =A0 =A0 =A0rtc0
=A09: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 IO-APIC-fasteoi =A0 acpi
=A012: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A04 =A0 IO-APIC-edge =A0 =A0 =A0i8042
=A014: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A04 =A0=
 =A0 =A0 1807 =A0 IO-APIC-edge =A0 =A0 =A0pata_atiixp
=A015: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 IO-APIC-edge =A0 =A0 =A0pata_atiixp
=A016: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0696 =A0 IO-APIC-fasteoi
ohci_hcd:usb3, ohci_hcd:usb4, HDA Intel
=A017: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 IO-APIC-fasteoi
ehci_hcd:usb1
=A018: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A01 =A0=
 =A0 =A0 =A0 33 =A0 IO-APIC-fasteoi
ohci_hcd:usb5, ohci_hcd:usb6, ohci_hcd:usb7
=A019: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A01 =A0=
 =A0 =A020852 =A0 IO-APIC-fasteoi
ehci_hcd:usb2, HDA Intel
=A021: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 IO-APIC-fasteoi =A0 eth1
=A022: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 12 =A0=
 =A0 =A014242 =A0 IO-APIC-fasteoi =A0 ahci
=A024: =A0 =A0 =A043478 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0HPET_MSI-edge =A0 =A0 =A0hpet2
=A026: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A02 =A0=
 =A0 =A0 3275 =A0 PCI-MSI-edge =A0 =A0 =A0eth0
=A027: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 PCI-MSI-edge
fglrx[0]@PCI:1:5:0
NMI: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Non-maskable interrupts
LOC: =A0 =A0 =A0 =A0 90 =A0 =A0 =A045493 =A0 =A0 =A026180 =A0 =A0 =A023=
050 =A0 Local timer interrupts
SPU: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Spurious interrupts
CNT: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Performance counter
interrupts
PND: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Performance pending work
RES: =A0 =A0 =A011614 =A0 =A0 =A0 7453 =A0 =A0 =A0 8060 =A0 =A0 =A0 766=
2 =A0 Rescheduling interrupts
CAL: =A0 =A0 =A0 =A0 86 =A0 =A0 =A0 =A0 96 =A0 =A0 =A0 =A0 83 =A0 =A0 =A0=
 =A0 52 =A0 Function call interrupts
TLB: =A0 =A0 =A0 =A0685 =A0 =A0 =A0 =A0414 =A0 =A0 =A0 =A0779 =A0 =A0 =A0=
 =A0513 =A0 TLB shootdowns
TRM: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Thermal event interrupts
THR: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Threshold APIC interrupts
MCE: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 =A00 =A0 Machine check exceptions
MCP: =A0 =A0 =A0 =A0 =A02 =A0 =A0 =A0 =A0 =A02 =A0 =A0 =A0 =A0 =A02 =A0=
 =A0 =A0 =A0 =A02 =A0 Machine check polls
ERR: =A0 =A0 =A0 =A0 =A05
MIS: =A0 =A0 =A0 =A0 =A00
netto@black-dev:/proc$ cat iomem
00000000-0000ffff : reserved
00010000-0009ebff : System RAM
0009ec00-0009ffff : reserved
000a0000-000bffff : Video RAM area
000c0000-000ce9ff : Video ROM
000e4000-000fffff : reserved
=A0000f0000-000fffff : System ROM
00100000-bff7ffff : System RAM
=A000100000-0057ba97 : Kernel code
=A00057ba98-007947e7 : Kernel data
=A000822000-008ad99f : Kernel bss
bff80000-bff97fff : ACPI Tables
bff98000-bffcffff : ACPI Non-volatile Storage
bffd0000-bfffffff : reserved
c0000000-cfffffff : pnp 00:01
d0000000-dfffffff : PCI Bus 0000:01
=A0d0000000-dfffffff : 0000:01:05.0
e0000000-efffffff : PCI MMCONFIG 0 [00-ff]
=A0e0000000-efffffff : pnp 00:0c
fbbf4000-fbbf7fff : 0000:00:14.2
=A0fbbf4000-fbbf7fff : ICH HD audio
fbbfa000-fbbfafff : 0000:00:14.5
=A0fbbfa000-fbbfafff : ohci_hcd
fbbfb000-fbbfbfff : 0000:00:13.1
=A0fbbfb000-fbbfbfff : ohci_hcd
fbbfc000-fbbfcfff : 0000:00:13.0
=A0fbbfc000-fbbfcfff : ohci_hcd
fbbfd000-fbbfdfff : 0000:00:12.1
=A0fbbfd000-fbbfdfff : ohci_hcd
fbbfe000-fbbfefff : 0000:00:12.0
=A0fbbfe000-fbbfefff : ohci_hcd
fbbff400-fbbff4ff : 0000:00:13.2
=A0fbbff400-fbbff4ff : ehci_hcd
fbbff800-fbbff8ff : 0000:00:12.2
=A0fbbff800-fbbff8ff : ehci_hcd
fbbffc00-fbbfffff : 0000:00:11.0
=A0fbbffc00-fbbfffff : ahci
fbc00000-fbdfffff : PCI Bus 0000:01
=A0fbc00000-fbcfffff : 0000:01:05.0
=A0fbde8000-fbdebfff : 0000:01:05.1
=A0 =A0fbde8000-fbdebfff : ICH HD audio
=A0fbdf0000-fbdfffff : 0000:01:05.0
fbe00000-fbefffff : PCI Bus 0000:02
=A0fbec0000-fbedffff : 0000:02:00.0
=A0fbeff000-fbefffff : 0000:02:00.0
=A0 =A0fbeff000-fbefffff : r8169
fbf00000-fbffffff : PCI Bus 0000:03
=A0fbfffc00-fbfffcff : 0000:03:07.0
=A0 =A0fbfffc00-fbfffcff : 8139too
fec00000-fec00fff : IOAPIC 0
fec10000-fec1001f : pnp 00:0a
fed00000-fed003ff : HPET 2
fed40000-fed44fff : pnp 00:0a
fee00000-fee00fff : Local APIC
=A0fee00000-fee00fff : pnp 00:09
ff700000-ffffffff : reserved
=A0ffb80000-ffbfffff : pnp 00:0a
100000000-22fffffff : System RAM
netto@black-dev:/proc$ cat ioports
0000-001f : dma1
0020-0021 : pic1
0040-0043 : timer0
0050-0053 : timer1
0060-0060 : keyboard
0064-0064 : keyboard
0070-0071 : rtc0
0080-008f : dma page reg
00a0-00a1 : pic2
00c0-00df : dma2
00f0-00ff : fpu
0170-0177 : 0000:00:14.1
=A00170-0177 : pata_atiixp
01f0-01f7 : 0000:00:14.1
=A001f0-01f7 : pata_atiixp
0230-023f : pnp 00:0b
0290-029f : pnp 00:0b
0300-030f : pnp 00:0b
0376-0376 : 0000:00:14.1
=A00376-0376 : pata_atiixp
0378-037a : parport0
03c0-03df : vga+
03f6-03f6 : 0000:00:14.1
=A003f6-03f6 : pata_atiixp
03f8-03ff : serial
040b-040b : pnp 00:0a
04d0-04d1 : pnp 00:0a
04d6-04d6 : pnp 00:0a
0800-089f : pnp 00:0a
=A00800-0803 : ACPI PM1a_EVT_BLK
=A00804-0805 : ACPI PM1a_CNT_BLK
=A00808-080b : ACPI PM_TMR
=A00810-0815 : ACPI CPU throttle
=A00820-0827 : ACPI GPE0_BLK
08ff-08ff : ACPI PM2_CNT_BLK
0900-090f : pnp 00:0a
0910-091f : pnp 00:0a
0a30-0a3f : pnp 00:0b
0b00-0b3f : pnp 00:0a
=A00b20-0b3f : pnp 00:0a
0c00-0c01 : pnp 00:0a
0c14-0c14 : pnp 00:0a
0c50-0c51 : pnp 00:0a
0c52-0c52 : pnp 00:0a
0c6c-0c6c : pnp 00:0a
0c6f-0c6f : pnp 00:0a
0cd0-0cd1 : pnp 00:0a
0cd2-0cd3 : pnp 00:0a
0cd4-0cd5 : pnp 00:0a
0cd6-0cd7 : pnp 00:0a
0cd8-0cdf : pnp 00:0a
0cf8-0cff : PCI conf1
7000-700f : 0000:00:11.0
=A07000-700f : ahci
8000-8003 : 0000:00:11.0
=A08000-8003 : ahci
9000-9007 : 0000:00:11.0
=A09000-9007 : ahci
a000-a003 : 0000:00:11.0
=A0a000-a003 : ahci
b000-b007 : 0000:00:11.0
=A0b000-b007 : ahci
c000-cfff : PCI Bus 0000:01
=A0c000-c0ff : 0000:01:05.0
d000-dfff : PCI Bus 0000:02
=A0d800-d8ff : 0000:02:00.0
=A0 =A0d800-d8ff : r8169
e000-efff : PCI Bus 0000:03
=A0e800-e8ff : 0000:03:07.0
=A0 =A0e800-e8ff : 8139too
fe00-fefe : pnp 00:0a
ff00-ff0f : 0000:00:14.1
=A0ff00-ff0f : pata_atiixp
netto@black-dev:/proc$ cat pagetypeinfo
Page block order: 9
Pages per block: =A0512

=46ree pages count per migrate type at order =A0 =A0 =A0 0 =A0 =A0 =A01=
 =A0 =A0 =A02
3 =A0 =A0 =A04 =A0 =A0 =A05 =A0 =A0 =A06 =A0 =A0 =A07 =A0 =A0 =A08 =A0 =
=A0 =A09 =A0 =A0 10
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0Unmovable =A0 =A0 =A00 =
=A0 =A0 =A01 =A0 =A0 =A01
1 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =
=A0 =A01 =A0 =A0 =A00
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0Reclaimable =A0 =A0 =A00 =A0=
 =A0 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0 =A0Movable =A0 =A0 =A0=
4 =A0 =A0 =A05 =A0 =A0 =A03
4 =A0 =A0 =A02 =A0 =A0 =A02 =A0 =A0 =A03 =A0 =A0 =A00 =A0 =A0 =A01 =A0 =
=A0 =A00 =A0 =A0 =A00
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0 =A0Reserve =A0 =A0 =A0=
0 =A0 =A0 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A01 =A0 =A0 =A00
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0 =A0Isolate =A0 =A0 =A0=
0 =A0 =A0 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00
Node =A0 =A00, zone =A0 Normal, type =A0 =A0Unmovable =A0 =A0 =A01 =A0 =
=A0 =A02 =A0 =A0 11
6 =A0 =A0 =A03 =A0 =A0 =A05 =A0 =A0 10 =A0 =A0 =A07 =A0 =A0 =A03 =A0 =A0=
 =A02 =A0 =A0 =A00
Node =A0 =A00, zone =A0 Normal, type =A0Reclaimable =A0 =A0 =A01 =A0 =A0=
 =A01 =A0 =A0 =A01
0 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A00 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =
=A0 =A01 =A0 =A0 =A00
Node =A0 =A00, zone =A0 Normal, type =A0 =A0 =A0Movable =A0 =A0 =A01 =A0=
 =A0 =A00 =A0 =A0 =A01
1 =A0 =A0 21 =A0 =A0 22 =A0 =A0 10 =A0 =A0 =A06 =A0 =A0 =A05 =A0 =A0 =A0=
4 =A0 =A0153
Node =A0 =A00, zone =A0 Normal, type =A0 =A0 =A0Reserve =A0 =A0 =A00 =A0=
 =A0 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A01
Node =A0 =A00, zone =A0 Normal, type =A0 =A0 =A0Isolate =A0 =A0 =A00 =A0=
 =A0 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00
Node =A0 =A00, zone =A0HighMem, type =A0 =A0Unmovable =A0 =A0 27 =A0 =A0=
 =A02 =A0 =A0 =A04
3 =A0 =A0 =A00 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A01 =A0 =A0 =A00
Node =A0 =A00, zone =A0HighMem, type =A0Reclaimable =A0 =A0 =A00 =A0 =A0=
 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00
Node =A0 =A00, zone =A0HighMem, type =A0 =A0 =A0Movable =A0 =A0121 =A0 =
=A0 96 =A0 =A0 29
14 =A0 =A0 10 =A0 =A0 =A05 =A0 =A0 =A04 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0=
 =A00 =A0 1629
Node =A0 =A00, zone =A0HighMem, type =A0 =A0 =A0Reserve =A0 =A0 =A00 =A0=
 =A0 =A02 =A0 =A0 =A01
1 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =
=A0 =A00 =A0 =A0 =A00
Node =A0 =A00, zone =A0HighMem, type =A0 =A0 =A0Isolate =A0 =A0 =A00 =A0=
 =A0 =A00 =A0 =A0 =A00
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00

Number of blocks type =A0 =A0 Unmovable =A0Reclaimable =A0 =A0 =A0Movab=
le
Reserve =A0 =A0 =A0Isolate
Node 0, zone =A0 =A0 =A0DMA =A0 =A0 =A0 =A0 =A0 =A01 =A0 =A0 =A0 =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A0 =A06
=A01 =A0 =A0 =A0 =A0 =A0 =A00
Node 0, zone =A0 Normal =A0 =A0 =A0 =A0 =A0 31 =A0 =A0 =A0 =A0 =A0 =A06=
 =A0 =A0 =A0 =A0 =A0398
=A02 =A0 =A0 =A0 =A0 =A0 =A00
Node 0, zone =A0HighMem =A0 =A0 =A0 =A0 =A0 16 =A0 =A0 =A0 =A0 =A0 =A00=
 =A0 =A0 =A0 =A0 4019
=A01 =A0 =A0 =A0 =A0 =A0 =A00
netto@black-dev:/proc$ cat /etc/sysctl.conf
#
# /etc/sysctl.conf - Configuration file for setting system variables
# See /etc/sysctl.d/ for additional system variables.
# See sysctl.conf (5) for information.
#

#kernel.domainname =3D example.com

# Uncomment the following to stop low-level messages on console
#kernel.printk =3D 4 4 1 7

##############################################################3
# Functions previously found in netbase
#

# Uncomment the next two lines to enable Spoof protection (reverse-path=
 filter)
# Turn on Source Address Verification in all interfaces to
# prevent some spoofing attacks
#net.ipv4.conf.default.rp_filter=3D1
#net.ipv4.conf.all.rp_filter=3D1

# Uncomment the next line to enable TCP/IP SYN cookies
# This disables TCP Window Scaling (http://lkml.org/lkml/2008/2/5/167),
# and is not recommended.
#net.ipv4.tcp_syncookies=3D1

# Uncomment the next line to enable packet forwarding for IPv4
net.ipv4.ip_forward=3D1

# Uncomment the next line to enable packet forwarding for IPv6
#net.ipv6.conf.all.forwarding=3D1


###################################################################
# Additional settings - these settings can improve the network
# security of the host and prevent against some network attacks
# including spoofing attacks and man in the middle attacks through
# redirection. Some network environments, however, require that these
# settings are disabled so review and enable them as needed.
#
# Ignore ICMP broadcasts
net.ipv4.icmp_echo_ignore_broadcasts =3D 0
#
# Ignore bogus ICMP errors
#net.ipv4.icmp_ignore_bogus_error_responses =3D 0
#
# Do not accept ICMP redirects (prevent MITM attacks)
#net.ipv4.conf.all.accept_redirects =3D 0
#net.ipv6.conf.all.accept_redirects =3D 0
# _or_
# Accept ICMP redirects only for gateways listed in our default
# gateway list (enabled by default)
# net.ipv4.conf.all.secure_redirects =3D 1
#
# Do not send ICMP redirects (we are not a router)
net.ipv4.conf.all.send_redirects =3D 1
#
# Do not accept IP source route packets (we are not a router)
net.ipv4.conf.all.accept_source_route =3D 1
#net.ipv6.conf.all.accept_source_route =3D 0
#
# Log Martian Packets
#net.ipv4.conf.all.log_martians =3D 1
#
# The contents of /proc/<pid>/maps and smaps files are only visible to
# readers that are allowed to ptrace() the process
# kernel.maps_protect =3D 1

# If active, enables the magic-sysrq key (alt+sysRq)
kernel.sysrq =3D 1

# If you are feeling daring, you can also use these settings below,
otherwise just remove them. (Should increase performance)
net.core.netdev_max_backlog =3D 2500
net.ipv4.tcp_tw_recycle =3D 1
net.ipv4.tcp_tw_reuse =3D 1

# Improve file system performance
vm.bdflush =3D 100 1200 128 512 15 5000 500 1884 2
# This will increase the amount of memory available for socket
input/output queues
net.ipv4.tcp_rmem =3D 4096 25165824 25165824
net.core.rmem_max =3D 25165824
net.core.rmem_default =3D 25165824
net.ipv4.tcp_wmem =3D 4096 65536 25165824
net.core.wmem_max =3D 25165824
net.core.wmem_default =3D 65536
net.core.optmem_max =3D 25165824
netto@black-dev:/proc/bus$ sudo dmidecode
[sudo] password for netto:
# dmidecode 2.9
SMBIOS 2.5 present.
70 structures occupying 2407 bytes.
Table at 0x0009F000.

Handle 0x0000, DMI type 0, 24 bytes
BIOS Information
=A0 =A0 =A0 =A0Vendor: American Megatrends Inc.
=A0 =A0 =A0 =A0Version: 0701
=A0 =A0 =A0 =A0Release Date: 04/09/2009
=A0 =A0 =A0 =A0Address: 0xF0000
=A0 =A0 =A0 =A0Runtime Size: 64 kB
=A0 =A0 =A0 =A0ROM Size: 1024 kB
=A0 =A0 =A0 =A0Characteristics:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ISA is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PCI is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PNP is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0APM is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS is upgradeable
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS shadowing is allowed
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ESCD support is available
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Boot from CD is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Selectable boot is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS ROM is socketed
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0EDD is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A05.25"/1.2 MB floppy services are support=
ed (int 13h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.5"/720 KB floppy services are supporte=
d (int 13h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.5"/2.88 MB floppy services are support=
ed (int 13h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Print screen service is supported (int 5=
h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08042 keyboard services are supported (in=
t 9h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Serial services are supported (int 14h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Printer services are supported (int 17h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0CGA/mono video services are supported (i=
nt 10h)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ACPI is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0USB legacy is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0LS-120 boot is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ATAPI Zip drive boot is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS boot specification is supported
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Targeted content distribution is support=
ed
=A0 =A0 =A0 =A0BIOS Revision: 8.15

Handle 0x0001, DMI type 1, 27 bytes
System Information
=A0 =A0 =A0 =A0Manufacturer: System manufacturer
=A0 =A0 =A0 =A0Product Name: System Product Name
=A0 =A0 =A0 =A0Version: System Version
=A0 =A0 =A0 =A0Serial Number: System Serial Number
=A0 =A0 =A0 =A0UUID: 00F4F00C-AF3D-DE11-96F3-002618055F09
=A0 =A0 =A0 =A0Wake-up Type: Power Switch
=A0 =A0 =A0 =A0SKU Number: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0Family: To Be Filled By O.E.M.

Handle 0x0002, DMI type 2, 15 bytes
Base Board Information
=A0 =A0 =A0 =A0Manufacturer: ASUSTeK Computer INC.
=A0 =A0 =A0 =A0Product Name: M4A78-EM
=A0 =A0 =A0 =A0Version: Rev X.0x
=A0 =A0 =A0 =A0Serial Number: MS1C96B05901908
=A0 =A0 =A0 =A0Asset Tag: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0Features:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Board is a hosting board
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Board is replaceable
=A0 =A0 =A0 =A0Location In Chassis: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0Chassis Handle: 0x0003
=A0 =A0 =A0 =A0Type: Motherboard
=A0 =A0 =A0 =A0Contained Object Handles: 0

Handle 0x0003, DMI type 3, 21 bytes
Chassis Information
=A0 =A0 =A0 =A0Manufacturer: Chassis Manufacture
=A0 =A0 =A0 =A0Type: Desktop
=A0 =A0 =A0 =A0Lock: Not Present
=A0 =A0 =A0 =A0Version: Chassis Version
=A0 =A0 =A0 =A0Serial Number: Chassis Serial Number
=A0 =A0 =A0 =A0Asset Tag: Asset-1234567890
=A0 =A0 =A0 =A0Boot-up State: Safe
=A0 =A0 =A0 =A0Power Supply State: Safe
=A0 =A0 =A0 =A0Thermal State: Safe
=A0 =A0 =A0 =A0Security Status: None
=A0 =A0 =A0 =A0OEM Information: 0x00000001
=A0 =A0 =A0 =A0Height: Unspecified
=A0 =A0 =A0 =A0Number Of Power Cords: 1
=A0 =A0 =A0 =A0Contained Elements: 0

Handle 0x0004, DMI type 4, 40 bytes
Processor Information
=A0 =A0 =A0 =A0Socket Designation: AM2
=A0 =A0 =A0 =A0Type: Central Processor
=A0 =A0 =A0 =A0Family: <OUT OF SPEC>
=A0 =A0 =A0 =A0Manufacturer: AMD
=A0 =A0 =A0 =A0ID: 22 0F 10 00 FF FB 8B 17
=A0 =A0 =A0 =A0Version: AMD Phenom(tm) 9500 Quad-Core Processor
=A0 =A0 =A0 =A0Voltage: 1.5 V
=A0 =A0 =A0 =A0External Clock: 200 MHz
=A0 =A0 =A0 =A0Max Speed: 3200 MHz
=A0 =A0 =A0 =A0Current Speed: 2200 MHz
=A0 =A0 =A0 =A0Status: Populated, Enabled
=A0 =A0 =A0 =A0Upgrade: Other
=A0 =A0 =A0 =A0L1 Cache Handle: 0x0005
=A0 =A0 =A0 =A0L2 Cache Handle: 0x0006
=A0 =A0 =A0 =A0L3 Cache Handle: 0x0007
=A0 =A0 =A0 =A0Serial Number: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0Asset Tag: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0Part Number: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0Core Count: 4
=A0 =A0 =A0 =A0Core Enabled: 4
=A0 =A0 =A0 =A0Characteristics:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A064-bit capable

Handle 0x0005, DMI type 7, 19 bytes
Cache Information
=A0 =A0 =A0 =A0Socket Designation: L1-Cache
=A0 =A0 =A0 =A0Configuration: Enabled, Not Socketed, Level 1
=A0 =A0 =A0 =A0Operational Mode: Varies With Memory Address
=A0 =A0 =A0 =A0Location: Internal
=A0 =A0 =A0 =A0Installed Size: 512 KB
=A0 =A0 =A0 =A0Maximum Size: 512 KB
=A0 =A0 =A0 =A0Supported SRAM Types:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pipeline Burst
=A0 =A0 =A0 =A0Installed SRAM Type: Pipeline Burst
=A0 =A0 =A0 =A0Speed: Unknown
=A0 =A0 =A0 =A0Error Correction Type: Single-bit ECC
=A0 =A0 =A0 =A0System Type: Data
=A0 =A0 =A0 =A0Associativity: 4-way Set-associative

Handle 0x0006, DMI type 7, 19 bytes
Cache Information
=A0 =A0 =A0 =A0Socket Designation: L2-Cache
=A0 =A0 =A0 =A0Configuration: Enabled, Not Socketed, Level 2
=A0 =A0 =A0 =A0Operational Mode: Varies With Memory Address
=A0 =A0 =A0 =A0Location: Internal
=A0 =A0 =A0 =A0Installed Size: 2048 KB
=A0 =A0 =A0 =A0Maximum Size: 2048 KB
=A0 =A0 =A0 =A0Supported SRAM Types:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pipeline Burst
=A0 =A0 =A0 =A0Installed SRAM Type: Pipeline Burst
=A0 =A0 =A0 =A0Speed: Unknown
=A0 =A0 =A0 =A0Error Correction Type: Single-bit ECC
=A0 =A0 =A0 =A0System Type: Unified
=A0 =A0 =A0 =A0Associativity: 4-way Set-associative

Handle 0x0007, DMI type 7, 19 bytes
Cache Information
=A0 =A0 =A0 =A0Socket Designation: L3-Cache
=A0 =A0 =A0 =A0Configuration: Enabled, Not Socketed, Level 3
=A0 =A0 =A0 =A0Operational Mode: Varies With Memory Address
=A0 =A0 =A0 =A0Location: Internal
=A0 =A0 =A0 =A0Installed Size: 2048 KB
=A0 =A0 =A0 =A0Maximum Size: 2048 KB
=A0 =A0 =A0 =A0Supported SRAM Types:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pipeline Burst
=A0 =A0 =A0 =A0Installed SRAM Type: Pipeline Burst
=A0 =A0 =A0 =A0Speed: Unknown
=A0 =A0 =A0 =A0Error Correction Type: Single-bit ECC
=A0 =A0 =A0 =A0System Type: Unified
=A0 =A0 =A0 =A0Associativity: 4-way Set-associative

Handle 0x0008, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: PS/2 KeyBoard
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Keyboard
=A0 =A0 =A0 =A0External Connector Type: PS/2
=A0 =A0 =A0 =A0Port Type: Keyboard Port

Handle 0x0009, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB1
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: USB1
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x000A, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB2
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: USB2
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x000B, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB3
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: USB3
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x000C, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB4
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: USB4
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x000D, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: LPT 1
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: LPT 1
=A0 =A0 =A0 =A0External Connector Type: DB-25 male
=A0 =A0 =A0 =A0Port Type: Parallel Port ECP/EPP

Handle 0x000E, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: COM 1
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: COM 1
=A0 =A0 =A0 =A0External Connector Type: DB-9 male
=A0 =A0 =A0 =A0Port Type: Serial Port 16550A Compatible

Handle 0x000F, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: LAN
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: LAN
=A0 =A0 =A0 =A0External Connector Type: RJ-45
=A0 =A0 =A0 =A0Port Type: Network Port

Handle 0x0010, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Line_In
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Audio_Line_In
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x0011, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Line_Out
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Audio_Line_Out
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x0012, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Mic_In
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Audio_Mic_In
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x0013, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Center/Sub
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Audio_Center/Sub
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x0014, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Rear
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Audio_Rear
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x0015, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Side
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: Audio_Side
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x0016, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: HDMI
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: HDMI port
=A0 =A0 =A0 =A0External Connector Type: Other
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0017, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: DVI
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: DVI port
=A0 =A0 =A0 =A0External Connector Type: Other
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0018, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SPDIFO
=A0 =A0 =A0 =A0Internal Connector Type: None
=A0 =A0 =A0 =A0External Reference Designator: SPDIFO
=A0 =A0 =A0 =A0External Connector Type: Other
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0019, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: PRI IDE
=A0 =A0 =A0 =A0Internal Connector Type: On Board IDE
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x001A, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA1
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x001B, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA2
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x001C, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA3
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x001D, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA4
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x001E, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA5
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x001F, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA6
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0020, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: CPU FAN
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0021, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: CHA FAN
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0022, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: PWR FAN
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x0023, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB5
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x0024, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB6
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x0025, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB7
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x0026, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB8
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x0027, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB9
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x0028, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB10
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x0029, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB11
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x002A, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: USB12
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: USB

Handle 0x002B, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: PANEL
=A0 =A0 =A0 =A0Internal Connector Type: 9 Pin Dual Inline (pin 10 cut)
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x002C, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: SPDIF OUT
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x002D, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: AAFP
=A0 =A0 =A0 =A0Internal Connector Type: Other
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Other

Handle 0x002E, DMI type 8, 9 bytes
Port Connector Information
=A0 =A0 =A0 =A0Internal Reference Designator: CD
=A0 =A0 =A0 =A0Internal Connector Type: On Board Sound Input From CD-RO=
M
=A0 =A0 =A0 =A0External Reference Designator: Not Specified
=A0 =A0 =A0 =A0External Connector Type: None
=A0 =A0 =A0 =A0Port Type: Audio Port

Handle 0x002F, DMI type 9, 13 bytes
System Slot Information
=A0 =A0 =A0 =A0Designation: PCIE1X
=A0 =A0 =A0 =A0Type: 32-bit PCI Express
=A0 =A0 =A0 =A0Current Usage: Available
=A0 =A0 =A0 =A0Length: Short
=A0 =A0 =A0 =A0ID: 4
=A0 =A0 =A0 =A0Characteristics:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported

Handle 0x0030, DMI type 9, 13 bytes
System Slot Information
=A0 =A0 =A0 =A0Designation: PCIE16X
=A0 =A0 =A0 =A0Type: 32-bit PCI Express
=A0 =A0 =A0 =A0Current Usage: Available
=A0 =A0 =A0 =A0Length: Short
=A0 =A0 =A0 =A0ID: 2
=A0 =A0 =A0 =A0Characteristics:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported

Handle 0x0031, DMI type 9, 13 bytes
System Slot Information
=A0 =A0 =A0 =A0Designation: PCI1
=A0 =A0 =A0 =A0Type: 32-bit PCI
=A0 =A0 =A0 =A0Current Usage: Available
=A0 =A0 =A0 =A0Length: Short
=A0 =A0 =A0 =A0ID: 13
=A0 =A0 =A0 =A0Characteristics:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported

Handle 0x0032, DMI type 9, 13 bytes
System Slot Information
=A0 =A0 =A0 =A0Designation: PCI2
=A0 =A0 =A0 =A0Type: 32-bit PCI
=A0 =A0 =A0 =A0Current Usage: In Use
=A0 =A0 =A0 =A0Length: Short
=A0 =A0 =A0 =A0ID: 14
=A0 =A0 =A0 =A0Characteristics:
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported

Handle 0x0033, DMI type 10, 6 bytes
On Board Device Information
=A0 =A0 =A0 =A0Type: Other
=A0 =A0 =A0 =A0Status: Enabled
=A0 =A0 =A0 =A0Description: =A0 To Be Filled By O.E.M.

Handle 0x0034, DMI type 10, 6 bytes
On Board Device Information
=A0 =A0 =A0 =A0Type: Ethernet
=A0 =A0 =A0 =A0Status: Enabled
=A0 =A0 =A0 =A0Description: To Be Filled By O.E.M.

Handle 0x0035, DMI type 10, 6 bytes
On Board Device Information
=A0 =A0 =A0 =A0Type: Sound
=A0 =A0 =A0 =A0Status: Enabled
=A0 =A0 =A0 =A0Description: To Be Filled By O.E.M.

Handle 0x0036, DMI type 10, 6 bytes
On Board Device Information
=A0 =A0 =A0 =A0Type: Other
=A0 =A0 =A0 =A0Status: Enabled
=A0 =A0 =A0 =A0Description: To Be Filled By O.E.M.

Handle 0x0037, DMI type 11, 5 bytes
OEM Strings
=A0 =A0 =A0 =A0String 1: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0String 2: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0String 3: To Be Filled By O.E.M.
=A0 =A0 =A0 =A0String 4: To Be Filled By O.E.M.

Handle 0x0038, DMI type 13, 22 bytes
BIOS Language Information
=A0 =A0 =A0 =A0Installable Languages: 1
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0en|US|iso8859-1
=A0 =A0 =A0 =A0Currently Installed Language: en|US|iso8859-1

Handle 0x0039, DMI type 15, 35 bytes
System Event Log
=A0 =A0 =A0 =A0Area Length: 4 bytes
=A0 =A0 =A0 =A0Header Start Offset: 0x0000
=A0 =A0 =A0 =A0Header Length: 2 bytes
=A0 =A0 =A0 =A0Data Start Offset: 0x0002
=A0 =A0 =A0 =A0Access Method: Indexed I/O, one 16-bit index port, one 8=
-bit data port
=A0 =A0 =A0 =A0Access Address: Index 0x046A, Data 0x046C
=A0 =A0 =A0 =A0Status: Invalid, Not Full
=A0 =A0 =A0 =A0Change Token: 0x00000000
=A0 =A0 =A0 =A0Header Format: No Header
=A0 =A0 =A0 =A0Supported Log Type Descriptors: 6
=A0 =A0 =A0 =A0Descriptor 1: End of log
=A0 =A0 =A0 =A0Data Format 1: OEM-specific
=A0 =A0 =A0 =A0Descriptor 2: End of log
=A0 =A0 =A0 =A0Data Format 2: OEM-specific
=A0 =A0 =A0 =A0Descriptor 3: End of log
=A0 =A0 =A0 =A0Data Format 3: OEM-specific
=A0 =A0 =A0 =A0Descriptor 4: End of log
=A0 =A0 =A0 =A0Data Format 4: OEM-specific
=A0 =A0 =A0 =A0Descriptor 5: End of log
=A0 =A0 =A0 =A0Data Format 5: OEM-specific
=A0 =A0 =A0 =A0Descriptor 6: End of log
=A0 =A0 =A0 =A0Data Format 6: OEM-specific

Handle 0x003A, DMI type 16, 15 bytes
Physical Memory Array
=A0 =A0 =A0 =A0Location: System Board Or Motherboard
=A0 =A0 =A0 =A0Use: System Memory
=A0 =A0 =A0 =A0Error Correction Type: None
=A0 =A0 =A0 =A0Maximum Capacity: 8 GB
=A0 =A0 =A0 =A0Error Information Handle: Not Provided
=A0 =A0 =A0 =A0Number Of Devices: 4

Handle 0x003B, DMI type 19, 15 bytes
Memory Array Mapped Address
=A0 =A0 =A0 =A0Starting Address: 0x00000000000
=A0 =A0 =A0 =A0Ending Address: 0x0022FFFFFFF
=A0 =A0 =A0 =A0Range Size: 8960 MB
=A0 =A0 =A0 =A0Physical Array Handle: 0x003A
=A0 =A0 =A0 =A0Partition Width: 0

Handle 0x003C, DMI type 17, 27 bytes
Memory Device
=A0 =A0 =A0 =A0Array Handle: 0x003A
=A0 =A0 =A0 =A0Error Information Handle: Not Provided
=A0 =A0 =A0 =A0Total Width: 64 bits
=A0 =A0 =A0 =A0Data Width: 64 bits
=A0 =A0 =A0 =A0Size: 2048 MB
=A0 =A0 =A0 =A0Form Factor: DIMM
=A0 =A0 =A0 =A0Set: None
=A0 =A0 =A0 =A0Locator: DIMM0
=A0 =A0 =A0 =A0Bank Locator: BANK0
=A0 =A0 =A0 =A0Type: DDR2
=A0 =A0 =A0 =A0Type Detail: Synchronous
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)
=A0 =A0 =A0 =A0Manufacturer: Manufacturer0
=A0 =A0 =A0 =A0Serial Number: SerNum0
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum0
=A0 =A0 =A0 =A0Part Number: PartNum0

Handle 0x003D, DMI type 20, 19 bytes
Memory Device Mapped Address
=A0 =A0 =A0 =A0Starting Address: 0x00000000000
=A0 =A0 =A0 =A0Ending Address: 0x0007FFFFFFF
=A0 =A0 =A0 =A0Range Size: 2 GB
=A0 =A0 =A0 =A0Physical Device Handle: 0x003C
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B
=A0 =A0 =A0 =A0Partition Row Position: 1

Handle 0x003E, DMI type 17, 27 bytes
Memory Device
=A0 =A0 =A0 =A0Array Handle: 0x003A
=A0 =A0 =A0 =A0Error Information Handle: Not Provided
=A0 =A0 =A0 =A0Total Width: 64 bits
=A0 =A0 =A0 =A0Data Width: 64 bits
=A0 =A0 =A0 =A0Size: 2048 MB
=A0 =A0 =A0 =A0Form Factor: DIMM
=A0 =A0 =A0 =A0Set: None
=A0 =A0 =A0 =A0Locator: DIMM1
=A0 =A0 =A0 =A0Bank Locator: BANK1
=A0 =A0 =A0 =A0Type: DDR2
=A0 =A0 =A0 =A0Type Detail: Synchronous
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)
=A0 =A0 =A0 =A0Manufacturer: Manufacturer1
=A0 =A0 =A0 =A0Serial Number: SerNum1
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum1
=A0 =A0 =A0 =A0Part Number: PartNum1

Handle 0x003F, DMI type 20, 19 bytes
Memory Device Mapped Address
=A0 =A0 =A0 =A0Starting Address: 0x00080000000
=A0 =A0 =A0 =A0Ending Address: 0x000FFFFFFFF
=A0 =A0 =A0 =A0Range Size: 2 GB
=A0 =A0 =A0 =A0Physical Device Handle: 0x003E
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B
=A0 =A0 =A0 =A0Partition Row Position: 1

Handle 0x0040, DMI type 17, 27 bytes
Memory Device
=A0 =A0 =A0 =A0Array Handle: 0x003A
=A0 =A0 =A0 =A0Error Information Handle: Not Provided
=A0 =A0 =A0 =A0Total Width: 64 bits
=A0 =A0 =A0 =A0Data Width: 64 bits
=A0 =A0 =A0 =A0Size: 2048 MB
=A0 =A0 =A0 =A0Form Factor: DIMM
=A0 =A0 =A0 =A0Set: None
=A0 =A0 =A0 =A0Locator: DIMM2
=A0 =A0 =A0 =A0Bank Locator: BANK2
=A0 =A0 =A0 =A0Type: DDR2
=A0 =A0 =A0 =A0Type Detail: Synchronous
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)
=A0 =A0 =A0 =A0Manufacturer: Manufacturer2
=A0 =A0 =A0 =A0Serial Number: SerNum2
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum2
=A0 =A0 =A0 =A0Part Number: PartNum2

Handle 0x0041, DMI type 20, 19 bytes
Memory Device Mapped Address
=A0 =A0 =A0 =A0Starting Address: 0x00100000000
=A0 =A0 =A0 =A0Ending Address: 0x0017FFFFFFF
=A0 =A0 =A0 =A0Range Size: 2 GB
=A0 =A0 =A0 =A0Physical Device Handle: 0x0040
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B
=A0 =A0 =A0 =A0Partition Row Position: 1

Handle 0x0042, DMI type 17, 27 bytes
Memory Device
=A0 =A0 =A0 =A0Array Handle: 0x003A
=A0 =A0 =A0 =A0Error Information Handle: Not Provided
=A0 =A0 =A0 =A0Total Width: 64 bits
=A0 =A0 =A0 =A0Data Width: 64 bits
=A0 =A0 =A0 =A0Size: 2048 MB
=A0 =A0 =A0 =A0Form Factor: DIMM
=A0 =A0 =A0 =A0Set: None
=A0 =A0 =A0 =A0Locator: DIMM3
=A0 =A0 =A0 =A0Bank Locator: BANK3
=A0 =A0 =A0 =A0Type: DDR2
=A0 =A0 =A0 =A0Type Detail: Synchronous
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)
=A0 =A0 =A0 =A0Manufacturer: Manufacturer3
=A0 =A0 =A0 =A0Serial Number: SerNum3
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum3
=A0 =A0 =A0 =A0Part Number: PartNum3

Handle 0x0043, DMI type 20, 19 bytes
Memory Device Mapped Address
=A0 =A0 =A0 =A0Starting Address: 0x00180000000
=A0 =A0 =A0 =A0Ending Address: 0x001FFFFFFFF
=A0 =A0 =A0 =A0Range Size: 2 GB
=A0 =A0 =A0 =A0Physical Device Handle: 0x0042
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B
=A0 =A0 =A0 =A0Partition Row Position: 1

Handle 0x0044, DMI type 32, 20 bytes
System Boot Information
=A0 =A0 =A0 =A0Status: No errors detected

Handle 0x0045, DMI type 127, 4 bytes
End Of Table

netto@black-dev:~$ cat /var/log/Xorg.0.log

X.Org X Server 1.6.4
Release Date: 2009-9-27
X Protocol Version 11, Revision 0
Build Operating System: Linux 2.6.24-23-server i686 Ubuntu
Current Operating System: Linux black-dev 2.6.31-19-generic-pae
#56-Ubuntu SMP Thu Jan 28 02:29:51 UTC 2010 i686
Kernel command line: BOOT_IMAGE=3D/boot/vmlinuz-2.6.31-19-generic-pae
root=3DUUID=3Df446fc23-1950-4f4b-baf8-eec2012a1bc9 ro quiet splash
Build Date: 14 November 2009 =A005:48:26PM
xorg-server 2:1.6.4-2ubuntu4.1 (buildd@)
=A0 =A0 =A0 =A0Before reporting problems, check http://wiki.x.org
=A0 =A0 =A0 =A0to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
=A0 =A0 =A0 =A0(++) from command line, (!!) notice, (II) informational,
=A0 =A0 =A0 =A0(WW) warning, (EE) error, (NI) not implemented, (??) unk=
nown.
(=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Sun Feb 21 23:55:50 201=
0
(=3D=3D) Using config file: "/etc/X11/xorg.conf"
(=3D=3D) ServerLayout "Layout[all]"
(**) |-->Screen "aticonfig-Screen[0]-0" (0)
(**) | =A0 |-->Monitor "aticonfig-Monitor[0]-0"
(**) | =A0 |-->Device "aticonfig-Device[0]-0"
(**) |-->Input Device "Keyboard[0]"
(**) |-->Input Device "Mouse[1]"
(**) Option "AllowMouseOpenFail" "on"
(=3D=3D) Automatically adding devices
(=3D=3D) Automatically enabling devices
(WW) The directory "/usr/share/fonts/misc" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/local" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/75dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/100dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/Type1" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/URW" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/Speedo" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/PEX" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/cyrillic" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/misc" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/75dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/100dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/Type1" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin7/75dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/baekmuk" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/japanese" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/kwintv" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) `fonts.dir' not found (or not valid) in
"/usr/share/fonts/truetype".
=A0 =A0 =A0 =A0Entry deleted from font path.
=A0 =A0 =A0 =A0(Run 'mkfontdir' on "/usr/share/fonts/truetype").
(WW) The directory "/usr/share/fonts/uni" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/CID" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/ucs/misc" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/ucs/75dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/ucs/100dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/misc" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/75dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/100dpi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/Type1" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/misc/sgi" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/xtest" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/opt/kde3/share/fonts" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/cyrillic" does not exist.
=A0 =A0 =A0 =A0Entry deleted from font path.
(**) FontPath set to:
=A0 =A0 =A0 =A0/usr/share/fonts/X11/misc,
=A0 =A0 =A0 =A0/usr/share/fonts/X11/100dpi/:unscaled,
=A0 =A0 =A0 =A0/usr/share/fonts/X11/75dpi/:unscaled,
=A0 =A0 =A0 =A0/usr/share/fonts/X11/Type1,
=A0 =A0 =A0 =A0/usr/share/fonts/X11/100dpi,
=A0 =A0 =A0 =A0/usr/share/fonts/X11/75dpi,
=A0 =A0 =A0 =A0/var/lib/defoma/x-ttcidfont-conf.d/dirs/TrueType,
=A0 =A0 =A0 =A0built-ins
(**) Input device list set to "/dev/gpmdata,/dev/input/mice"
(=3D=3D) ModulePath set to "/usr/lib/xorg/modules"
(**) Extension "XVideo" is enabled
(**) Extension "Composite" is disabled
(WW) AllowEmptyInput is on, devices using drivers 'kbd', 'mouse' or
'vmmouse' will be disabled.
(WW) Disabling Keyboard[0]
(WW) Disabling Mouse[1]
(II) Loader magic: 0x3bc0
(II) Module ABI versions:
=A0 =A0 =A0 =A0X.Org ANSI C Emulation: 0.4
=A0 =A0 =A0 =A0X.Org Video Driver: 5.0
=A0 =A0 =A0 =A0X.Org XInput driver : 4.0
=A0 =A0 =A0 =A0X.Org Server Extension : 2.0
(II) Loader running on linux
(++) using VT number 7

(--) PCI:*(0:1:5:0) 1002:9610:1043:82f1 ATI Technologies Inc Radeon HD
3200 Graphics rev 0, Mem @ 0xd0000000/268435456, 0xfbdf0000/65536,
0xfbc00000/1048576, I/O @ 0x0000c000/256
(II) Open ACPI successful (/var/run/acpid.socket)
(II) System resource ranges:
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[24] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[25] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[26] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
(II) "extmod" will be loaded by default.
(II) "dbe" will be loaded by default.
(II) "glx" will be loaded. This was enabled by default and also
specified in the config file.
(II) "record" will be loaded by default.
(II) "dri" will be loaded. This was enabled by default and also
specified in the config file.
(II) "dri2" will be loaded by default.
(II) LoadModule: "glx"
(II) Loading /usr/lib/xorg/modules/extensions//libglx.so
(II) Module glx: vendor=3D"FireGL - ATI Technologies Inc."
=A0 =A0 =A0 =A0compiled for 7.4.0, module version =3D 1.0.0
(II) Loading extension GLX
(II) LoadModule: "dri"
(II) Loading /usr/lib/xorg/modules/extensions//libdri.so
(II) Module dri: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 7.4.0, module version =3D 1.0.0
(II) Loading sub module "fglrxdrm"
(II) LoadModule: "fglrxdrm"
(II) Loading /usr/lib/xorg/modules/linux//libfglrxdrm.so
(II) Module fglrxdrm: vendor=3D"FireGL - ATI Technologies Inc."
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 8.66.10
(II) Loading extension XFree86-DRI
(II) LoadModule: "extmod"
(II) Loading /usr/lib/xorg/modules/extensions//libextmod.so
(II) Module extmod: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.0.0
=A0 =A0 =A0 =A0Module class: X.Org Server Extension
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0
(II) Loading extension MIT-SCREEN-SAVER
(II) Loading extension XFree86-VidModeExtension
(II) Loading extension XFree86-DGA
(II) Loading extension DPMS
(II) Loading extension XVideo
(II) Loading extension XVideo-MotionCompensation
(II) Loading extension X-Resource
(II) LoadModule: "dbe"
(II) Loading /usr/lib/xorg/modules/extensions//libdbe.so
(II) Module dbe: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.0.0
=A0 =A0 =A0 =A0Module class: X.Org Server Extension
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0
(II) Loading extension DOUBLE-BUFFER
(II) LoadModule: "record"
(II) Loading /usr/lib/xorg/modules/extensions//librecord.so
(II) Module record: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.13.0
=A0 =A0 =A0 =A0Module class: X.Org Server Extension
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0
(II) Loading extension RECORD
(II) LoadModule: "dri2"
(II) Loading /usr/lib/xorg/modules/extensions//libdri2.so
(II) Module dri2: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.1.0
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0
(II) Loading extension DRI2
(II) LoadModule: "fglrx"
(II) Loading /usr/lib/xorg/modules/drivers//fglrx_drv.so
(II) Module fglrx: vendor=3D"FireGL - ATI Technologies Inc."
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 8.66.10
=A0 =A0 =A0 =A0Module class: X.Org Video Driver
(II) Primary Device is: PCI 01@00:05:0
(WW) Falling back to old probe method for fglrx
(II) ATI Proprietary Linux Driver Version Identifier:8.66.10
(II) ATI Proprietary Linux Driver Release Identifier: 8.66.1
(II) ATI Proprietary Linux Driver Build Date: Sep =A03 2009 21:35:19
(II) Loading PCS database from /etc/ati/amdpcsdb
(--) Chipset Supported AMD Graphics Processor (0x9610) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:17:0) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:18:0) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:18:1) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:18:2) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:19:0) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:19:1) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:19:2) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:20:0) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:20:1) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:20:2) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:20:3) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:20:4) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@0:20:5) found
(WW) fglrx: No matching Device section for instance (BusID
PCI:0@1:5:1) found
(II) AMD Video driver is running on a device belonging to a group
targeted for this release
(II) AMD Video driver is signed
(II) resource ranges after xf86ClaimFixedResources() call:
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[24] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[25] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[26] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
(II) fglrx(0): pEnt->device->identifier=3D0x8da5dd0
(II) resource ranges after probing:
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[24] 0 =A00 =A0 =A0 =A0 0x000a0000 - 0x000affff (0x10000=
) MS[B]
=A0 =A0 =A0 =A0[25] 0 =A00 =A0 =A0 =A0 0x000b0000 - 0x000b7fff (0x8000)=
 MS[B]
=A0 =A0 =A0 =A0[26] 0 =A00 =A0 =A0 =A0 0x000b8000 - 0x000bffff (0x8000)=
 MS[B]
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[36] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[37] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[38] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[39] 0 =A00 =A0 =A0 =A0 0x000003b0 - 0x000003bb (0xc) IS=
[B]
=A0 =A0 =A0 =A0[40] 0 =A00 =A0 =A0 =A0 0x000003c0 - 0x000003df (0x20) I=
S[B]
(II) Setting vga for screen 0.
(II) fglrx(0): =3D=3D=3D [atiddxPreInit] =3D=3D=3D begin
(II) Loading sub module "vgahw"
(II) LoadModule: "vgahw"
(II) Loading /usr/lib/xorg/modules//libvgahw.so
(II) Module vgahw: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 0.1.0
=A0 =A0 =A0 =A0ABI class: X.Org Video Driver, version 5.0
(II) fglrx(0): PCI bus 1 card 5 func 0
(**) fglrx(0): Depth 24, (--) framebuffer bpp 32
(II) fglrx(0): Pixel depth =3D 24 bits stored in 4 bytes (32 bpp
pixmaps)
(=3D=3D) fglrx(0): Default visual is TrueColor
(**) fglrx(0): Option "UseFastTLS" "1"
(**) fglrx(0): Option "TexturedVideo" "on"
(=3D=3D) fglrx(0): RGB weight 888
(II) fglrx(0): Using 8 bits per RGB (8 bit DAC)
(**) fglrx(0): Gamma Correction for I is 0x06419064
(=3D=3D) fglrx(0): Gamma Correction for II is 0x06419064
(=3D=3D) fglrx(0): Buffer Tiling is ON
(II) Loading sub module "fglrxdrm"
(II) LoadModule: "fglrxdrm"
(II) Reloading /usr/lib/xorg/modules/linux//libfglrxdrm.so
(II) Loading sub module "dri"
(II) LoadModule: "dri"
(II) Reloading /usr/lib/xorg/modules/extensions//libdri.so
(II) Loading sub module "fglrxdrm"
(II) LoadModule: "fglrxdrm"
(II) Reloading /usr/lib/xorg/modules/linux//libfglrxdrm.so
(II) Loading extension XFree86-DRI
drmDynamicMajor: found major device number 251
drmDynamicMajor: found major device number 251
drmOpenByBusid: Searching for BusID PCI:1:5:0
drmOpenDevice: node name is /dev/ati/card0
drmOpenDevice: open result is 9, (OK)
drmOpenByBusid: drmOpenMinor returns 9
drmOpenByBusid: drmGetBusid reports PCI:1:5:0
(--) fglrx(0): Chipset: "ATI Radeon HD 3200 Graphics" (Chipset =3D
0x9610)
(--) fglrx(0): (PciSubVendor =3D 0x1043, PciSubDevice =3D 0x82f1)
(--) fglrx(0): board vendor info: third party graphics adapter - NOT
original ATI
(--) fglrx(0): Linear framebuffer (phys) at 0xd0000000
(--) fglrx(0): MMIO registers at 0xfbdf0000
(--) fglrx(0): I/O port at 0x0000c000
(=3D=3D) fglrx(0): ROM-BIOS at 0x000c0000
(II) fglrx(0): AC Adapter is used
(II) fglrx(0): Primary V_BIOS segment is: 0xc000
(II) Loading sub module "vbe"
(II) LoadModule: "vbe"
(II) Loading /usr/lib/xorg/modules//libvbe.so
(II) Module vbe: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.1.0
=A0 =A0 =A0 =A0ABI class: X.Org Video Driver, version 5.0
(II) fglrx(0): VESA BIOS detected
(II) fglrx(0): VESA VBE Version 3.0
(II) fglrx(0): VESA VBE Total Mem: 16384 kB
(II) fglrx(0): VESA VBE OEM: ATI ATOMBIOS
(II) fglrx(0): VESA VBE OEM Software Rev: 10.92
(II) fglrx(0): VESA VBE OEM Vendor: (C) 1988-2005, ATI Technologies
Inc.
(II) fglrx(0): VESA VBE OEM Product: RS780
(II) fglrx(0): VESA VBE OEM Product Rev: 01.00
(II) fglrx(0): ATI Video BIOS revision 9 or later detected
(--) fglrx(0): Video RAM: 262144 kByte, Type: DDR2
(II) fglrx(0): PCIE card detected
(--) fglrx(0): Using per-process page tables (PPPT) as GART.
(WW) fglrx(0): board is an unknown third party board, chipset is
supported
(II) fglrx(0): Using adapter: 1:5.0.
(II) fglrx(0): [FB] MC range(MCFBBase =3D 0xc0000000, MCFBSize =3D
0x10000000)
(II) fglrx(0): Interrupt handler installed at IRQ 27.
(II) fglrx(0): IRQ 27 Enabled.
(II) fglrx(0): RandR 1.2 support is enabled!
(II) fglrx(0): RandR 1.2 rotation support is enabled!
(=3D=3D) fglrx(0): Center Mode is disabled
(II) Loading sub module "fb"
(II) LoadModule: "fb"
(II) Loading /usr/lib/xorg/modules//libfb.so
(II) Module fb: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.0.0
=A0 =A0 =A0 =A0ABI class: X.Org ANSI C Emulation, version 0.4
(II) Loading sub module "ddc"
(II) LoadModule: "ddc"
(II) Module "ddc" already built-in
(II) fglrx(0): Finished Initialize PPLIB!
(II) Loading sub module "ddc"
(II) LoadModule: "ddc"
(II) Module "ddc" already built-in
(II) fglrx(0): ***Display: ConnectedDisplayTypes=3D0x00000001,
disabled=3D0x00000000
(II) fglrx(0): Connected Display1: CRT on primary DAC [crt1]
(II) fglrx(0): Display1 EDID data ---------------------------
(II) fglrx(0): Manufacturer: GSM =A0Model: 56ee =A0Serial#: 16843009
(II) fglrx(0): Year: 2009 =A0Week: 6
(II) fglrx(0): EDID Version: 1.3
(II) fglrx(0): Analog Display Input, =A0Input Voltage Level: 0.700/0.70=
0
V
(II) fglrx(0): Sync: =A0Separate =A0SyncOnGreen
(II) fglrx(0): Max Image Size [cm]: horiz.: 51 =A0vert.: 29
(II) fglrx(0): Gamma: 2.20
(II) fglrx(0): DPMS capabilities: StandBy Suspend Off; RGB/Color
Display
(II) fglrx(0): First detailed timing is preferred mode
(II) fglrx(0): redX: 0.635 redY: 0.342 =A0 greenX: 0.292 greenY: 0.611
(II) fglrx(0): blueX: 0.147 blueY: 0.070 =A0 whiteX: 0.313 whiteY: 0.32=
9
(II) fglrx(0): Supported established timings:
(II) fglrx(0): 720x400@70Hz
(II) fglrx(0): 640x480@60Hz
(II) fglrx(0): 640x480@75Hz
(II) fglrx(0): 800x600@56Hz
(II) fglrx(0): 800x600@60Hz
(II) fglrx(0): 800x600@75Hz
(II) fglrx(0): 832x624@75Hz
(II) fglrx(0): 1024x768@60Hz
(II) fglrx(0): 1024x768@75Hz
(II) fglrx(0): 1280x1024@75Hz
(II) fglrx(0): 1152x870@75Hz
(II) fglrx(0): Manufacturer's mask: 0
(II) fglrx(0): Supported standard timings:
(II) fglrx(0): #0: hsize: 1680 =A0vsize 1050 =A0refresh: 60 =A0vid: 179
(II) fglrx(0): #1: hsize: 1280 =A0vsize 1024 =A0refresh: 75 =A0vid: 367=
37
(II) fglrx(0): #2: hsize: 1280 =A0vsize 1024 =A0refresh: 60 =A0vid: 328=
97
(II) fglrx(0): #3: hsize: 1152 =A0vsize 864 =A0refresh: 75 =A0vid: 2033=
7
(II) fglrx(0): Supported detailed timing:
(II) fglrx(0): clock: 148.5 MHz =A0 Image Size: =A0510 x 290 mm
(II) fglrx(0): h_active: 1920 =A0h_sync: 2008 =A0h_sync_end 2052
h_blank_end 2200 h_border: 0
(II) fglrx(0): v_active: 1080 =A0v_sync: 1084 =A0v_sync_end 1089
v_blanking: 1125 v_border: 0
(II) fglrx(0): Supported detailed timing:
(II) fglrx(0): clock: 146.2 MHz =A0 Image Size: =A0474 x 296 mm
(II) fglrx(0): h_active: 1680 =A0h_sync: 1784 =A0h_sync_end 1960
h_blank_end 2240 h_border: 0
(II) fglrx(0): v_active: 1050 =A0v_sync: 1053 =A0v_sync_end 1059
v_blanking: 1089 v_border: 0
(II) fglrx(0): Ranges: V min: 56 V max: 75 Hz, H min: 30 H max: 83
kHz, PixClock max 150 MHz
(II) fglrx(0): Monitor name: W2353
(II) fglrx(0): EDID (in hex):
(II) fglrx(0): =A000ffffffffffff001e6dee5601010101
(II) fglrx(0): =A0061301036a331d78eaaec5a2574a9c25
(II) fglrx(0): =A0125054a76b80b300818f8180714f0101
(II) fglrx(0): =A0010101010101023a801871382d40582c
(II) fglrx(0): =A04500fe221100001e21399030621a2740
(II) fglrx(0): =A068b03600da281100001c000000fd0038
(II) fglrx(0): =A04b1e530f000a202020202020000000fc
(II) fglrx(0): =A00057323335330a20202020202020005f
(II) fglrx(0): End of Display1 EDID data --------------------
(II) fglrx(0): Output DFP2 using monitor section
aticonfig-Monitor[0]-0
(II) fglrx(0): Output CRT1 has no monitor section
(II) fglrx(0): Output DFP2 disconnected
(II) fglrx(0): Output CRT1 connected
(II) fglrx(0): Using exact sizes for initial modes
(II) fglrx(0): Output CRT1 using initial mode 1920x1080
(II) fglrx(0): DPI set to (96, 96)
(=3D=3D) fglrx(0): Using gamma correction (1.0, 1.0, 1.0)
(=3D=3D) fglrx(0): QBS disabled
(=3D=3D) fglrx(0): =A0PseudoColor visuals disabled
(II) Loading sub module "ramdac"
(II) LoadModule: "ramdac"
(II) Module "ramdac" already built-in
(=3D=3D) fglrx(0): NoAccel =3D NO
(II) Loading sub module "xaa"
(II) LoadModule: "xaa"
(II) Loading /usr/lib/xorg/modules//libxaa.so
(II) Module xaa: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.2.1
=A0 =A0 =A0 =A0ABI class: X.Org Video Driver, version 5.0
(=3D=3D) fglrx(0): NoDRI =3D NO
(=3D=3D) fglrx(0): Capabilities: 0x00000000
(=3D=3D) fglrx(0): CapabilitiesEx: 0x00000000
(=3D=3D) fglrx(0): OpenGL ClientDriverName: "fglrx_dri.so"
(**) fglrx(0): UseFastTLS=3D1
(=3D=3D) fglrx(0): BlockSignalsOnLock=3D1
(--) Depth 24 pixmap format is 32 bpp
(II) do I need RAC? =A0No, I don't.
(II) resource ranges after preInit:
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000=
) MX[B]
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000=
) MX[B]
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX=
[B]
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000=
) MX[B]
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B=
]
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) =
MX[B]
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) =
MX[B]
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) =
MX[B]
=A0 =A0 =A0 =A0[24] 0 =A00 =A0 =A0 =A0 0x000a0000 - 0x000affff (0x10000=
) MS[B](OprU)
=A0 =A0 =A0 =A0[25] 0 =A00 =A0 =A0 =A0 0x000b0000 - 0x000b7fff (0x8000)=
 MS[B](OprU)
=A0 =A0 =A0 =A0[26] 0 =A00 =A0 =A0 =A0 0x000b8000 - 0x000bffff (0x8000)=
 MS[B](OprU)
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[36] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[37] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B=
]
=A0 =A0 =A0 =A0[38] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B=
]
=A0 =A0 =A0 =A0[39] 0 =A00 =A0 =A0 =A0 0x000003b0 - 0x000003bb (0xc) IS=
[B](OprU)
=A0 =A0 =A0 =A0[40] 0 =A00 =A0 =A0 =A0 0x000003c0 - 0x000003df (0x20) I=
S[B](OprU)
(II) fglrx(0): driver needs X.org 1.4.x.y with x.y >=3D 99.906
(WW) fglrx(0): could not detect X server version (query_status=3D-1)
(II) Loading extension ATIFGLRXDRI
(II) fglrx(0): doing DRIScreenInit
(II) fglrx(0): DRIScreenInit for fglrx driver
drmDynamicMajor: found major device number 251
drmDynamicMajor: found major device number 251
drmDynamicMajor: found major device number 251
drmOpenByBusid: Searching for BusID PCI:1:5:0
drmOpenDevice: node name is /dev/ati/card0
drmOpenDevice: open result is 13, (OK)
drmOpenByBusid: drmOpenMinor returns 13
drmOpenByBusid: drmGetBusid reports PCI:1:5:0
(II) fglrx(0): [drm] DRM interface version 1.0
(II) fglrx(0): [drm] created "fglrx" driver at busid "PCI:1:5:0"
(II) fglrx(0): [drm] added 8192 byte SAREA at 0x2000
(II) fglrx(0): [drm] mapped SAREA 0x2000 to 0xb68b1000
(II) fglrx(0): [drm] framebuffer handle =3D 0x3000
(II) fglrx(0): [drm] added 1 reserved context for kernel
(II) fglrx(0): DRIScreenInit done
(II) fglrx(0): Kernel Module Version Information:
(II) fglrx(0): =A0 =A0 Name: fglrx
(II) fglrx(0): =A0 =A0 Version: 8.66.10
(II) fglrx(0): =A0 =A0 Date: Sep =A03 2009
(II) fglrx(0): =A0 =A0 Desc: ATI FireGL DRM kernel module
(II) fglrx(0): Kernel Module version matches driver.
(II) fglrx(0): Kernel Module Build Time Information:
(II) fglrx(0): =A0 =A0 Build-Kernel UTS_RELEASE:
2.6.31-19-generic-pae
(II) fglrx(0): =A0 =A0 Build-Kernel MODVERSIONS: =A0 =A0 =A0 =A0yes
(II) fglrx(0): =A0 =A0 Build-Kernel __SMP__: =A0 =A0 =A0 =A0 =A0 =A0yes
(II) fglrx(0): =A0 =A0 Build-Kernel PAGE_SIZE: =A0 =A0 =A0 =A0 =A00x100=
0
(II) fglrx(0): [drm] register handle =3D 0x00004000
(II) fglrx(0): DRI initialization successfull!
(II) fglrx(0): FBADPhys: 0xc0000000 FBMappedSize: 0x0101d000
(II) fglrx(0): FBMM initialized for area (0,0)-(1920,2200)
(II) fglrx(0): FBMM auto alloc for area (0,0)-(1920,1920) (front color
buffer - assumption)
(II) fglrx(0): Largest offscreen area available: 1920 x 280
(=3D=3D) fglrx(0): Backing store disabled
(II) Loading extension FGLRXEXTENSION
(II) Loading extension ATITVOUT
(II) fglrx(0): DPMS enabled
(**) fglrx(0): Textured Video is enabled.
(II) LoadModule: "glesx"
(II) Loading /usr/lib/xorg/modules//glesx.so
(II) Module glesx: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 1.0.0
(II) Loading extension GLESX
(II) fglrx(0): GLESX enableFlags =3D 94
(**) fglrx(0): Option "XaaNoOffscreenPixmaps" "true"
(II) fglrx(0): Using XFree86 Acceleration Architecture (XAA)
=A0 =A0 =A0 =A0Screen to screen bit blits
=A0 =A0 =A0 =A0Solid filled rectangles
=A0 =A0 =A0 =A0Solid Horizontal and Vertical Lines
=A0 =A0 =A0 =A0Driver provided ScreenToScreenBitBlt replacement
=A0 =A0 =A0 =A0Driver provided FillSolidRects replacement
(II) fglrx(0): GLESX is enabled
(II) LoadModule: "amdxmm"
(II) Loading /usr/lib/xorg/modules//amdxmm.so
(II) Module amdxmm: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 1.0.0
(II) Loading extension AMDXVOPL
(II) fglrx(0): UVD2 feature is available
(II) fglrx(0): Composite extension is not loaded
(WW) fglrx(0): Option "AGPFastWrite" is not used
(WW) fglrx(0): Option "VendorName" is not used
(WW) fglrx(0): Option "ModelName" is not used
(II) fglrx(0): X context handle =3D 0x1
(II) fglrx(0): [DRI] installation complete
(=3D=3D) fglrx(0): Silken mouse enabled
(=3D=3D) fglrx(0): Using HW cursor of display infrastructure!
(=3D=3D) fglrx(0): Using software cursor
(II) fglrx(0): Disabling in-server RandR and enabling in-driver RandR
1.2.
(--) RandR disabled
(II) Initializing built-in extension Generic Event Extension
(II) Initializing built-in extension SHAPE
(II) Initializing built-in extension MIT-SHM
(II) Initializing built-in extension XInputExtension
(II) Initializing built-in extension XTEST
(II) Initializing built-in extension BIG-REQUESTS
(II) Initializing built-in extension SYNC
(II) Initializing built-in extension XKEYBOARD
(II) Initializing built-in extension XC-MISC
(II) Initializing built-in extension SECURITY
(II) Initializing built-in extension XINERAMA
(II) Initializing built-in extension XFIXES
(II) Initializing built-in extension RENDER
(II) Initializing built-in extension RANDR
(II) Initializing built-in extension COMPOSITE
(II) Initializing built-in extension DAMAGE
drmDynamicMajor: found major device number 251
drmDynamicMajor: found major device number 251
drmOpenByBusid: Searching for BusID PCI:1:5:0
drmOpenDevice: node name is /dev/ati/card0
drmOpenDevice: open result is 14, (OK)
drmOpenByBusid: drmOpenMinor returns 14
drmOpenByBusid: drmGetBusid reports PCI:1:5:0
(WW) AIGLX: 3D driver claims to not support visual 0x3f
(WW) AIGLX: 3D driver claims to not support visual 0x40
(WW) AIGLX: 3D driver claims to not support visual 0x41
(WW) AIGLX: 3D driver claims to not support visual 0x42
(WW) AIGLX: 3D driver claims to not support visual 0x47
(WW) AIGLX: 3D driver claims to not support visual 0x48
(WW) AIGLX: 3D driver claims to not support visual 0x49
(WW) AIGLX: 3D driver claims to not support visual 0x4a
(WW) AIGLX: 3D driver claims to not support visual 0x67
(WW) AIGLX: 3D driver claims to not support visual 0x68
(WW) AIGLX: 3D driver claims to not support visual 0x69
(WW) AIGLX: 3D driver claims to not support visual 0x6a
(WW) AIGLX: 3D driver claims to not support visual 0x6f
(WW) AIGLX: 3D driver claims to not support visual 0x70
(WW) AIGLX: 3D driver claims to not support visual 0x71
(WW) AIGLX: 3D driver claims to not support visual 0x72
(II) AIGLX: Loaded and initialized /usr/lib/dri/fglrx_dri.so
(II) GLX: Initialized DRI GL provider for screen 0
(II) fglrx(0): Enable the clock gating!
(II) fglrx(0): Setting screen physical size to 510 x 290
(II) fglrx(0): Restoring Recent Mode via PCS is not supported in RANDR
1.2 capable environments
(II) config/hal: Adding input device Composite USB PS2 Converter USB
to PS2 Adaptor =A0v1.12
(II) LoadModule: "evdev"
(II) Loading /usr/lib/xorg/modules/input//evdev_drv.so
(II) Module evdev: vendor=3D"X.Org Foundation"
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 2.2.5
=A0 =A0 =A0 =A0Module class: X.Org XInput Driver
=A0 =A0 =A0 =A0ABI class: X.Org XInput driver, version 4.0
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: always
reports core events
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Device:
"/dev/input/event4"
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found 10
mouse buttons
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found x
and y relative axes
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found
scroll wheel(s)
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found key=
s
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:
Configuring as mouse
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:
Configuring as keyboard
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:
YAxisMapping: buttons 4 and 5
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:
EmulateWheelButton: 4, EmulateWheelInertia: 10, EmulateWheelTimeout:
200
(II) XINPUT: Adding extended input device "Composite USB PS2 Converter
USB to PS2 Adaptor =A0v1.12" (type: KEYBOARD)
(**) Option "xkb_rules" "evdev"
(**) Option "xkb_model" "pc105"
(**) Option "xkb_layout" "br"
(**) Option "xkb_variant" "abnt2"
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)
keeping acceleration scheme 1
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)
filter chain progression: 2.00
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)
filter stage 0: 20.00 ms
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)
set acceleration profile 0
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:
initialized for relative axes.
(II) config/hal: Adding input device Composite USB PS2 Converter USB
to PS2 Adaptor =A0v1.12
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: always
reports core events
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Device:
"/dev/input/event3"
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found key=
s
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:
Configuring as keyboard
(II) XINPUT: Adding extended input device "Composite USB PS2 Converter
USB to PS2 Adaptor =A0v1.12" (type: KEYBOARD)
(**) Option "xkb_rules" "evdev"
(**) Option "xkb_model" "pc105"
(**) Option "xkb_layout" "br"
(**) Option "xkb_variant" "abnt2"
(II) config/hal: Adding input device Power Button
(**) Power Button: always reports core events
(**) Power Button: Device: "/dev/input/event1"
(II) Power Button: Found keys
(II) Power Button: Configuring as keyboard
(II) XINPUT: Adding extended input device "Power Button" (type:
KEYBOARD)
(**) Option "xkb_rules" "evdev"
(**) Option "xkb_model" "pc105"
(**) Option "xkb_layout" "br"
(**) Option "xkb_variant" "abnt2"
(II) config/hal: Adding input device Power Button
(**) Power Button: always reports core events
(**) Power Button: Device: "/dev/input/event0"
(II) Power Button: Found keys
(II) Power Button: Configuring as keyboard
(II) XINPUT: Adding extended input device "Power Button" (type:
KEYBOARD)
(**) Option "xkb_rules" "evdev"
(**) Option "xkb_model" "pc105"
(**) Option "xkb_layout" "br"
(**) Option "xkb_variant" "abnt2"
(II) config/hal: Adding input device Macintosh mouse button emulation
(**) Macintosh mouse button emulation: always reports core events
(**) Macintosh mouse button emulation: Device: "/dev/input/event2"
(II) Macintosh mouse button emulation: Found 3 mouse buttons
(II) Macintosh mouse button emulation: Found x and y relative axes
(II) Macintosh mouse button emulation: Configuring as mouse
(**) Macintosh mouse button emulation: YAxisMapping: buttons 4 and 5
(**) Macintosh mouse button emulation: EmulateWheelButton: 4,
EmulateWheelInertia: 10, EmulateWheelTimeout: 200
(II) XINPUT: Adding extended input device "Macintosh mouse button
emulation" (type: MOUSE)
(**) Macintosh mouse button emulation: (accel) keeping acceleration sch=
eme 1
(**) Macintosh mouse button emulation: (accel) filter chain progression=
: 2.00
(**) Macintosh mouse button emulation: (accel) filter stage 0: 20.00 ms
(**) Macintosh mouse button emulation: (accel) set acceleration profile=
 0
(II) Macintosh mouse button emulation: initialized for relative axes.
(II) config/hal: Adding input device Logitech USB Optical Mouse
(**) Logitech USB Optical Mouse: always reports core events
(**) Logitech USB Optical Mouse: Device: "/dev/input/event5"
(II) Logitech USB Optical Mouse: Found 3 mouse buttons
(II) Logitech USB Optical Mouse: Found x and y relative axes
(II) Logitech USB Optical Mouse: Found scroll wheel(s)
(II) Logitech USB Optical Mouse: Configuring as mouse
(**) Logitech USB Optical Mouse: YAxisMapping: buttons 4 and 5
(**) Logitech USB Optical Mouse: EmulateWheelButton: 4,
EmulateWheelInertia: 10, EmulateWheelTimeout: 200
(II) XINPUT: Adding extended input device "Logitech USB Optical Mouse"
(type: MOUSE)
(**) Logitech USB Optical Mouse: (accel) keeping acceleration scheme 1
(**) Logitech USB Optical Mouse: (accel) filter chain progression: 2.00
(**) Logitech USB Optical Mouse: (accel) filter stage 0: 20.00 ms
(**) Logitech USB Optical Mouse: (accel) set acceleration profile 0
(II) Logitech USB Optical Mouse: initialized for relative axes.
(II) fglrx(0): EDID vendor "GSM", prod id 22254
(II) fglrx(0): Using EDID range info for horizontal sync
(II) fglrx(0): Using EDID range info for vertical refresh
(II) fglrx(0): Printing DDC gathered Modelines:
(II) fglrx(0): Modeline "1920x1080"x0.0 =A0148.50 =A01920 2008 2052 220=
0
1080 1084 1089 1125 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0 =A0146.25 =A01680 1784 1960 224=
0
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "800x600"x0.0 =A0 40.00 =A0800 840 968 1056 =A0=
600
601 605 628 +hsync +vsync (37.9 kHz)
(II) fglrx(0): Modeline "800x600"x0.0 =A0 36.00 =A0800 824 896 1024 =A0=
600
601 603 625 +hsync +vsync (35.2 kHz)
(II) fglrx(0): Modeline "640x480"x0.0 =A0 31.50 =A0640 656 720 840 =A04=
80
481 484 500 -hsync -vsync (37.5 kHz)
(II) fglrx(0): Modeline "640x480"x0.0 =A0 25.18 =A0640 656 752 800 =A04=
80
490 492 525 -hsync -vsync (31.5 kHz)
(II) fglrx(0): Modeline "720x400"x0.0 =A0 28.32 =A0720 738 846 900 =A04=
00
412 414 449 -hsync +vsync (31.5 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0 =A0135.00 =A01280 1296 1440 168=
8
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0 =A0 78.75 =A01024 1040 1136 1312
768 769 772 800 +hsync +vsync (60.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0 =A0 65.00 =A01024 1048 1184 1344
768 771 777 806 -hsync -vsync (48.4 kHz)
(II) fglrx(0): Modeline "832x624"x0.0 =A0 57.28 =A0832 864 928 1152 =A0=
624
625 628 667 -hsync -vsync (49.7 kHz)
(II) fglrx(0): Modeline "800x600"x0.0 =A0 49.50 =A0800 816 896 1056 =A0=
600
601 604 625 +hsync +vsync (46.9 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0 =A0108.00 =A01152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0 =A0146.25 =A01680 1784 1960 224=
0
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0 =A0135.00 =A01280 1296 1440 168=
8
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0 =A0108.00 =A01280 1328 1440 168=
8
1024 1025 1028 1066 +hsync +vsync (64.0 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0 =A0108.00 =A01152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)
(II) fglrx(0): EDID vendor "GSM", prod id 22254
(II) fglrx(0): Using hsync ranges from config file
(II) fglrx(0): Using vrefresh ranges from config file
(II) fglrx(0): Printing DDC gathered Modelines:
(II) fglrx(0): Modeline "1920x1080"x0.0 =A0148.50 =A01920 2008 2052 220=
0
1080 1084 1089 1125 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0 =A0146.25 =A01680 1784 1960 224=
0
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "800x600"x0.0 =A0 40.00 =A0800 840 968 1056 =A0=
600
601 605 628 +hsync +vsync (37.9 kHz)
(II) fglrx(0): Modeline "800x600"x0.0 =A0 36.00 =A0800 824 896 1024 =A0=
600
601 603 625 +hsync +vsync (35.2 kHz)
(II) fglrx(0): Modeline "640x480"x0.0 =A0 31.50 =A0640 656 720 840 =A04=
80
481 484 500 -hsync -vsync (37.5 kHz)
(II) fglrx(0): Modeline "640x480"x0.0 =A0 25.18 =A0640 656 752 800 =A04=
80
490 492 525 -hsync -vsync (31.5 kHz)
(II) fglrx(0): Modeline "720x400"x0.0 =A0 28.32 =A0720 738 846 900 =A04=
00
412 414 449 -hsync +vsync (31.5 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0 =A0135.00 =A01280 1296 1440 168=
8
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0 =A0 78.75 =A01024 1040 1136 1312
768 769 772 800 +hsync +vsync (60.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0 =A0 65.00 =A01024 1048 1184 1344
768 771 777 806 -hsync -vsync (48.4 kHz)
(II) fglrx(0): Modeline "832x624"x0.0 =A0 57.28 =A0832 864 928 1152 =A0=
624
625 628 667 -hsync -vsync (49.7 kHz)
(II) fglrx(0): Modeline "800x600"x0.0 =A0 49.50 =A0800 816 896 1056 =A0=
600
601 604 625 +hsync +vsync (46.9 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0 =A0108.00 =A01152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0 =A0146.25 =A01680 1784 1960 224=
0
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0 =A0135.00 =A01280 1296 1440 168=
8
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0 =A0108.00 =A01280 1328 1440 168=
8
1024 1025 1028 1066 +hsync +vsync (64.0 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0 =A0108.00 =A01152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)


Geraldo
Sapere Aude =3D> Non dvcor, dvco
S=E3o Paulo, Brasil, -3gmt
O< ascii ribbon campaign - www.asciiribbon.org
site: http://exdev.sf.net/
github: http://github.com/geraldonetto
msn: geraldo_boca@hotmail.com
skype: geraldo-netto
icq: 145-061-456
