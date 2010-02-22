From: Geraldo Netto <geraldonetto@gmail.com>
Subject: fglrx on kubuntu 9.10 shows a warning on dmesg
Date: Mon, 22 Feb 2010 01:38:49 -0300
Message-ID: <faf3083f1002212038j6b09d00bv7584bf156a8a9458@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-x11-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=svxSOKFeIeoMQ/KxOIA8A8NKIDKNv2IH9RC3ov5ME2I=;
        b=ctcl58ZREKGqXtlWGGFt4mw6C+hm13fORdPScxdPFZJkrA5JTrb45mfdG0bmlLMYCd
         3ZLV1EVDI1P5mG+g4TH8LYpDLoCt7w4itxYgWQoj8G5ukTxMDRky0eoxSHyY8BrNQN82
         j5D5FwO47aU4ITgYqeGsnu+cDhCLI6BS+gk34=
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
[   17.493684] ------------[ cut here ]------------
[   17.493695] WARNING: at
/build/buildd/linux-2.6.31/mm/page_alloc.c:1751
__alloc_pages_slowpath+0x459/0x480()
[   17.493698] Hardware name: System Product Name
[   17.493700] Modules linked in: snd_hda_codec_atihdmi
snd_hda_codec_realtek pl2303 snd_seq_dummy snd_seq_oss snd_seq_midi
snd_rawmidi snd_seq_midi_event snd_seq snd_hda_intel snd_hda_codec
snd_hwdep usbserial snd_pcm_oss asix snd_mixer_oss usbnet snd_pcm
ppdev iptable_filter ip_tables snd_seq_device joydev x_tables usblp
psmouse fglrx(P) serio_raw agpgart snd_timer shpchp parport_pc snd
asus_atk0110 soundcore snd_page_alloc i2c_piix4 lp parport usbhid
8139too 8139cp r8169 mii
[   17.493737] Pid: 1243, comm: Xorg Tainted: P
2.6.31-19-generic-pae #56-Ubuntu
[   17.493739] Call Trace:
[   17.493745]  [<c01468ad>] warn_slowpath_common+0x6d/0xa0
[   17.493749]  [<c01ba309>] ? __alloc_pages_slowpath+0x459/0x480
[   17.493752]  [<c01ba309>] ? __alloc_pages_slowpath+0x459/0x480
[   17.493756]  [<c01468f5>] warn_slowpath_null+0x15/0x20
[   17.493759]  [<c01ba309>] __alloc_pages_slowpath+0x459/0x480
[   17.493762]  [<c01b9d28>] ? get_page_from_freelist+0x1e8/0x370
[   17.493828]  [<f87b3e88>] ? IsCrossFireCapable+0x18/0x30 [fglrx]
[   17.493877]  [<f87b23d4>] ?
AdjustRequestedMcAddressRangeInfo+0xa4/0xb0 [fglrx]
[   17.493881]  [<c01ba43f>] __alloc_pages_nodemask+0x10f/0x120
[   17.493884]  [<c01ba497>] __get_free_pages+0x17/0x30
[   17.493920]  [<f8751420>]
KCL_MEM_AllocContiguousPageFrames+0x10/0x20 [fglrx]
[   17.493959]  [<f8757f0d>] drm_alloc_pages+0xdd/0x290 [fglrx]
[   17.494001]  [<f876f3e7>] ?
MCIL_AllocateContiguousMemory+0x47/0x100 [fglrx]
[   17.494041]  [<f876fa28>] ? MCIL_ZeroMemory+0x58/0x60 [fglrx]
[   17.494096]  [<f88026ce>] ?
_ZN7GpsBase28GPS_AllocateContiguousMemoryEPvyjP15_ULARGE_INTEGERyyy+0xe=
e/0x150
[fglrx]
[   17.494149]  [<f880438f>] ?
_ZN10GPSContext22assessInitialResourcesEv+0xcf/0x240 [fglrx]
[   17.494202]  [<f881575a>] ?
_ZN23PageTableGartVmptSysMem4InitEv+0x9a/0x200 [fglrx]
[   17.494256]  [<f8802d15>] ? _ZN10GPSContextC1EP9_GPS_INIT+0x1d5/0x27=
0 [fglrx]
[   17.494308]  [<f88132c6>] ?
_ZN13GartVmptRS78015CreatePageTableEP9GpsConfig+0x46/0x210 [fglrx]
[   17.494361]  [<f88040fd>] ?
_ZN10GPSContext18InitializeAsicGartEv+0x3d/0xe0 [fglrx]
[   17.494416]  [<f87fe339>] ? Gps_GartInitialization+0x29/0x40 [fglrx]
[   17.494457]  [<f8775a13>] ? __gart_init+0x373/0x990 [fglrx]
[   17.494504]  [<f883a8e5>] ? amdPcsEngine_Command+0x145/0x600 [fglrx]
[   17.494549]  [<f87973e8>] ? CAIL_BridgeASPMWorkaround+0x28/0x1d0 [fg=
lrx]
[   17.494590]  [<f8755a0e>] ? KCL_lock_init+0x1e/0x80 [fglrx]
[   17.494631]  [<f8772e54>] ? gal_init+0xd4/0x190 [fglrx]
[   17.494672]  [<f877a22e>] ? mc_heap_init+0x12e/0x280 [fglrx]
[   17.494715]  [<f8782823>] ? hal_get_num_hzmem_pipes+0x23/0xa0 [fglrx=
]
[   17.494755]  [<f8765345>] ? firegl_init_pcie+0x1b5/0x4f0 [fglrx]
[   17.494795]  [<f876a98b>] ? firegl_cail_query_mc_range+0x7b/0xd0 [fg=
lrx]
[   17.494801]  [<c02cb7c5>] ? security_capable+0x25/0x30
[   17.494840]  [<f8765190>] ? firegl_init_pcie+0x0/0x4f0 [fglrx]
[   17.494844]  [<c0150890>] ? capable+0x10/0x40
[   17.494882]  [<f8765190>] ? firegl_init_pcie+0x0/0x4f0 [fglrx]
[   17.494886]  [<c0246466>] ? ext3_iget+0xa6/0x390
[   17.494924]  [<f87603bd>] ? firegl_ioctl+0x22d/0x2b0 [fglrx]
[   17.494928]  [<c0246466>] ? ext3_iget+0xa6/0x390
[   17.494933]  [<c0246466>] ? ext3_iget+0xa6/0x390
[   17.494967]  [<f87559b9>] ? ip_firegl_ioctl+0x19/0x20 [fglrx]
[   17.494970]  [<c0246466>] ? ext3_iget+0xa6/0x390
[   17.494974]  [<c01f8bc3>] ? vfs_ioctl+0x73/0x90
[   17.494977]  [<c0246466>] ? ext3_iget+0xa6/0x390
[   17.494980]  [<c01f8e91>] ? do_vfs_ioctl+0x71/0x310
[   17.494985]  [<c057929b>] ? do_page_fault+0x19b/0x380
[   17.494988]  [<c01f918f>] ? sys_ioctl+0x5f/0x80
[   17.494991]  [<c0103283>] ? sysenter_do_call+0x12/0x28
[   17.494994]  [<c0246466>] ? ext3_iget+0xa6/0x390
[   17.494996] ---[ end trace 9a5763d4d0ccf5e0 ]---
[   17.554451]   alloc irq_desc for 27 on node -1
[   17.554455]   alloc kstat_irqs on node -1
[   17.554467] fglrx_pci 0000:01:05.0: irq 27 for MSI/MSI-X
[   17.557296] [fglrx] Firegl kernel thread PID: 1313
[   18.400152] [fglrx] Gart USWC size:1279 M.
[   18.400156] [fglrx] Gart cacheable size:508 M.
[   18.400162] [fglrx] Reserved FB block: Shared offset:0, size:1000000
[   18.400165] [fglrx] Reserved FB block: Unshared offset:fbfa000, size=
:401000
[   18.400168] [fglrx] Reserved FB block: Unshared offset:fffb000, size=
:5000

netto@black-dev:~$ uname -a
Linux black-dev 2.6.31-19-generic-pae #56-Ubuntu SMP Thu Jan 28
02:29:51 UTC 2010 i686 GNU/Linux
netto@black-dev:~$ free -m
             total       used       free     shared    buffers     cach=
ed
Mem:          7813        618       7194          0         66        2=
85
-/+ buffers/cache:        267       7545
Swap:         2000          0       2000
netto@black-dev:~$ lsmod
Module                  Size  Used by
nls_iso8859_1           3740  1
nls_cp437               5372  1
vfat                   10716  1
fat                    51452  1 vfat
snd_hda_codec_atihdmi     3356  1
snd_hda_codec_realtek   203328  1
pl2303                 17792  0
snd_seq_dummy           2656  0
snd_seq_oss            28576  0
snd_seq_midi            6432  0
snd_rawmidi            22208  1 snd_seq_midi
snd_seq_midi_event      6940  2 snd_seq_oss,snd_seq_midi
snd_seq                50224  6
snd_seq_dummy,snd_seq_oss,snd_seq_midi,snd_seq_midi_event
snd_hda_intel          26984  1
snd_hda_codec          75708  3
snd_hda_codec_atihdmi,snd_hda_codec_realtek,snd_hda_intel
snd_hwdep               7200  1 snd_hda_codec
usbserial              36264  1 pl2303
snd_pcm_oss            37920  0
asix                   14716  0
snd_mixer_oss          16028  1 snd_pcm_oss
usbnet                 17188  1 asix
snd_pcm                75520  3 snd_hda_intel,snd_hda_codec,snd_pcm_oss
ppdev                   6688  0
iptable_filter          3100  0
ip_tables              11692  1 iptable_filter
snd_seq_device          6920  5
snd_seq_dummy,snd_seq_oss,snd_seq_midi,snd_rawmidi,snd_seq
joydev                 10240  0
x_tables               16544  1 ip_tables
usblp                  12636  0
psmouse                56500  0
fglrx                1989980  28
serio_raw               5280  0
agpgart                35020  1 fglrx
snd_timer              22276  2 snd_seq,snd_pcm
shpchp                 32336  0
parport_pc             32228  1
snd                    59204  14
snd_hda_codec_realtek,snd_seq_oss,snd_rawmidi,snd_seq,snd_hda_intel,snd=
_hda_codec,snd_hwdep,snd_pcm_oss,snd_mixer_oss,snd_pcm,snd_seq_device,s=
nd_timer
asus_atk0110            8252  0
soundcore               7264  1 snd
snd_page_alloc          9252  2 snd_hda_intel,snd_pcm
i2c_piix4              10124  0
lp                      8964  0
parport                35340  3 ppdev,parport_pc,lp
usbhid                 38304  0
8139too                22716  0
8139cp                 19612  0
r8169                  32384  0
mii                     5212  5 asix,usbnet,8139too,8139cp,r8169
netto@black-dev:/proc/ati$ cat debug
DebugTraceMask=3D0x0, 0x0. DebugLevelMask=3D0x0.
echo DebugTraceMask[0/1]=3D0xXX > /proc/dri/debug  -- Enable trace
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
echo DebugLevelMask=3D0xXX > /proc/dri/debug  -- Enable debug message
output with different level.
=46N_DEBUG_TRACE=3D0, FN_DEBUG_LEVEL1, ... FN_DEBUG_LEVEL7
n/a
netto@black-dev:/proc/ati/0$ cat biosversion

BIOS_CREATION_DATE=3D"05/15/08,06:10:42"
BIOS_MSG=3D"B27722 RS780 DDR2 200e/500m
               "
BIOS_KIT_VERSION=3D"BK-ATI VER010.092.000.001.000000"
BIOS_PN=3D"<NOT FOUND>"
netto@black-dev:/proc/ati/0$ cat clients
a dev   pid   uid      magic     ioctls    context

y   0  1243     0          1      17460 0x00000001
netto@black-dev:/proc/ati/0$ cat interrupt_info
Device: PCI:1:5:0
Kernel: 0
AsyncIO: 0
netto@black-dev:/proc/ati/0$ cat lock
lock ([0xf830f000]=3D00000001)
netto@black-dev:/proc/ati/0$ cat mem
              total counts            |    outstanding
type           alloc  fail      bytes | allocs      bytes
system             0     0 3897610240 |      0          0
locked          8748     0   39590312 |   8748   39590312
sareas             2     0      40960 |      2      40960
driver         33009     1    7395226 |    114    4106134
magic              1     0         12 |      0          0
maplist           27     0       1620 |     15        900
vmalist          109     0       1308 |     16        192
buflist           15     0     139108 |     15     139108
files              3     0       1536 |      3       1536
contexts           2     0         24 |      1         16
hwcontext          3     0      24576 |      3      24576
netto@black-dev:/proc/ati/0$ cat mem1
              total counts            |    outstanding
type           alloc  fail      bytes | allocs      bytes
mappings           5     0    5382144 |      5    5382144
textures           0     0          0 |      0          0
agplist            0     0          0 |      0          0
agpmem             0     0          0 |      0          0
boundagp           0     0          0 |      0          0
aperture           0     0          0 |      0          0
dmabufs            0     0          0 |      0          0
memlocks           0     0          0 |      0          0
mutex              4     0         64 |      4         64
drawables          0     0          0 |      0          0
mempages        8721     0   35721216 |   8721   35721216
pcielist          10     0     102572 |      9      69804
pcie               0     0          0 |      0          0
netto@black-dev:/proc/ati/0$ cat name
fglrx 0xfb00000 PCI:1:5:0
netto@black-dev:/proc/ati/0$ cat vm
offset     size       type flag handle     mtrr map_count

0xf830f000 0x2000  SHM 0x20 0xf830f000 none 2
0xd0000000 0x10000000   FB 0x00 0x00000000 none 0
0xfbdf0000 0x10000  REG 0x00 0xf8720000 none 2
0x1ff000 0x1000   ?? 0x00 0x00000000 none 1
0x100000 0x700000   ?? 0x00 0x00000000 none 1
0xc0000000 0x101d000   ?? 0x00 0x00000000 none 1
0xf897d000 0x8000  SHM 0x40 0xf897d000 none 1
0xc101d000 0x200000   ?? 0x00 0x00000000 none 1
0x2eb26000 0x1000  CTX 0x01 0xeeb26000 none 0
0xc121d000 0x4000   ?? 0x00 0x00000000 none 1
0xc1221000 0x4000   ?? 0x00 0x00000000 none 1
0xc1225000 0x1000   ?? 0x00 0x00000000 none 1
0xc1226000 0x1000   ?? 0x00 0x00000000 none 1
0x850000 0x11000   ?? 0x00 0x00000000 none 1
0x860000 0x401000   ?? 0x00 0x00000000 none 1
0xc60000 0x401000   ?? 0x00 0x00000000 none 1
0x32946000 0x1000  CTX 0x01 0xf2946000 none 0
netto@black-dev:/proc$ cat mtrr
reg00: base=3D0x000000000 (    0MB), size=3D 2048MB, count=3D1: write-b=
ack
reg01: base=3D0x080000000 ( 2048MB), size=3D 1024MB, count=3D1: write-b=
ack
netto@black-dev:/proc$ cat /etc/X11/xorg.conf
Section "ServerLayout"
        Identifier     "Layout[all]"
        Screen      0  "aticonfig-Screen[0]-0" 0 0
        InputDevice    "Keyboard[0]" "CoreKeyboard"
        InputDevice    "Mouse[1]" "CorePointer"
EndSection

Section "Files"
        InputDevices   "/dev/gpmdata"
        InputDevices   "/dev/input/mice"
        FontPath     "/usr/share/fonts/misc:unscaled"
        FontPath     "/usr/share/fonts/local"
        FontPath     "/usr/share/fonts/75dpi:unscaled"
        FontPath     "/usr/share/fonts/100dpi:unscaled"
        FontPath     "/usr/share/fonts/Type1"
        FontPath     "/usr/share/fonts/URW"
        FontPath     "/usr/share/fonts/Speedo"
        FontPath     "/usr/share/fonts/PEX"
        FontPath     "/usr/share/fonts/cyrillic"
        FontPath     "/usr/share/fonts/latin2/misc:unscaled"
        FontPath     "/usr/share/fonts/latin2/75dpi:unscaled"
        FontPath     "/usr/share/fonts/latin2/100dpi:unscaled"
        FontPath     "/usr/share/fonts/latin2/Type1"
        FontPath     "/usr/share/fonts/latin7/75dpi:unscaled"
        FontPath     "/usr/share/fonts/baekmuk:unscaled"
        FontPath     "/usr/share/fonts/japanese:unscaled"
        FontPath     "/usr/share/fonts/kwintv"
        FontPath     "/usr/share/fonts/truetype"
        FontPath     "/usr/share/fonts/uni:unscaled"
        FontPath     "/usr/share/fonts/CID"
        FontPath     "/usr/share/fonts/ucs/misc:unscaled"
        FontPath     "/usr/share/fonts/ucs/75dpi:unscaled"
        FontPath     "/usr/share/fonts/ucs/100dpi:unscaled"
        FontPath     "/usr/share/fonts/hellas/misc:unscaled"
        FontPath     "/usr/share/fonts/hellas/75dpi:unscaled"
        FontPath     "/usr/share/fonts/hellas/100dpi:unscaled"
        FontPath     "/usr/share/fonts/hellas/Type1"
        FontPath     "/usr/share/fonts/misc/sgi:unscaled"
        FontPath     "/usr/share/fonts/xtest"
        FontPath     "/opt/kde3/share/fonts"
EndSection

Section "Module"
        Load  "GLcore"
        Load  "glx"
        Load  "dri"
EndSection

Section "ServerFlags"
        Option      "AllowMouseOpenFail" "on"
        Option      "ZapWarning" "on"
EndSection

Section "InputDevice"
        Identifier  "Keyboard[0]"
        Driver      "kbd"
        Option     "Protocol" "Standard"
        Option     "XkbLayout" "br"
        Option     "XkbModel" "pc105"
        Option     "XkbRules" "xorg"
        Option     "XkbVariant" "abtn2"
        Option     "XkbOptions" "lv3:lwin_switch"
        Option     "XkbOptions" "terminate:ctrl_alt_bksp"
EndSection

Section "InputDevice"
        Identifier  "Mouse[1]"
        Driver      "mouse"
        Option     "Buttons" "5"
        Option     "Device" "/dev/input/mice"
        Option     "Name" "ImPS/2 Generic Wheel Mouse"
        Option     "Protocol" "explorerps/2"
        Option     "Vendor" "Sysp"
        Option     "ZAxisMapping" "4 5"
EndSection

Section "Modes"
        Identifier     "Modes[0]"
EndSection

Section "Monitor"
        Identifier   "Monitor[0]"
        VendorName   "LG"
        ModelName    "LG"
        UseModes     "Modes[0]"
        Option       "PreferredMode" "1920x1080"
EndSection

Section "Monitor"
        Identifier   "aticonfig-Monitor[0]-0"
        Option      "VendorName" "ATI Proprietary Driver"
        Option      "ModelName" "Generic Autodetecting Monitor"
EndSection

Section "Device"
        Identifier  "aticonfig-Device[0]-0"
        Driver      "fglrx"
        Option      "XAANoOffscreenPixmaps" "true"
        Option       "AGPFastWrite" "true"
        #Option      "DynamicClocks"    "true"
        #Option      "VideoOverlay" "off"
        #Option      "OpenGLOverlay" "off"
        Option      "TexturedVideo" "on"
        Option      "UseFastTLS" "1"
        BusID       "PCI:1:5:0"
EndSection

Section "Screen"
        Identifier "Screen[0]"
        Device     "aticonfig-Device[0]-0"
        Monitor    "Monitor[0]"
        DefaultDepth     24
        SubSection "Display"
                Depth     24
                Modes    "1920x1080"
        EndSubSection
EndSection

Section "Screen"
        Identifier "aticonfig-Screen[0]-0"
        Device     "aticonfig-Device[0]-0"
        Monitor    "aticonfig-Monitor[0]-0"
        DefaultDepth     24
        SubSection "Display"
                Viewport   0 0
                Depth     24
        EndSubSection
EndSection

Section "DRI"
        Group        "video"
        Mode         0666
EndSection

Section "Extensions"
        Option "XVideo" "Enable"
        Option "Composite" "Disable"
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
Node 0, zone      DMA      4      6      4      5      3      3      4
     1      2      2      0
Node 0, zone   Normal      3      2     12      7     25     28     20
    14      9      7    154
Node 0, zone  HighMem     91     76     16      7      4      4      6
     3      1      1   1629
netto@black-dev:/proc$ cat cpuinfo
processor       : 0
vendor_id       : AuthenticAMD
cpu family      : 16
model           : 2
model name      : AMD Phenom(tm) 9500 Quad-Core Processor
stepping        : 2
cpu MHz         : 2200.000
cache size      : 512 KB
physical id     : 0
siblings        : 4
core id         : 0
cpu cores       : 4
apicid          : 0
initial apicid  : 0
fdiv_bug        : no
hlt_bug         : no
f00f_bug        : no
coma_bug        : no
fpu             : yes
fpu_exception   : yes
cpuid level     : 5
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips        : 4413.24
clflush size    : 64
power management: ts ttp tm stc 100mhzsteps hwpstate

processor       : 1
vendor_id       : AuthenticAMD
cpu family      : 16
model           : 2
model name      : AMD Phenom(tm) 9500 Quad-Core Processor
stepping        : 2
cpu MHz         : 2200.000
cache size      : 512 KB
physical id     : 0
siblings        : 4
core id         : 1
cpu cores       : 4
apicid          : 1
initial apicid  : 1
fdiv_bug        : no
hlt_bug         : no
f00f_bug        : no
coma_bug        : no
fpu             : yes
fpu_exception   : yes
cpuid level     : 5
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips        : 4412.96
clflush size    : 64
power management: ts ttp tm stc 100mhzsteps hwpstate

processor       : 2
vendor_id       : AuthenticAMD
cpu family      : 16
model           : 2
model name      : AMD Phenom(tm) 9500 Quad-Core Processor
stepping        : 2
cpu MHz         : 2200.000
cache size      : 512 KB
physical id     : 0
siblings        : 4
core id         : 2
cpu cores       : 4
apicid          : 2
initial apicid  : 2
fdiv_bug        : no
hlt_bug         : no
f00f_bug        : no
coma_bug        : no
fpu             : yes
fpu_exception   : yes
cpuid level     : 5
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips        : 4412.62
clflush size    : 64
power management: ts ttp tm stc 100mhzsteps hwpstate

processor       : 3
vendor_id       : AuthenticAMD
cpu family      : 16
model           : 2
model name      : AMD Phenom(tm) 9500 Quad-Core Processor
stepping        : 2
cpu MHz         : 2200.000
cache size      : 512 KB
physical id     : 0
siblings        : 4
core id         : 3
cpu cores       : 4
apicid          : 3
initial apicid  : 3
fdiv_bug        : no
hlt_bug         : no
f00f_bug        : no
coma_bug        : no
fpu             : yes
fpu_exception   : yes
cpuid level     : 5
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs
bogomips        : 4412.62
clflush size    : 64
power management: ts ttp tm stc 100mhzsteps hwpstate
netto@black-dev:/proc$ cat interrupts
           CPU0       CPU1       CPU2       CPU3
  0:         46          0          0          2   IO-APIC-edge      ti=
mer
  1:          0          0          0          2   IO-APIC-edge      i8=
042
  4:          0          0          0          2   IO-APIC-edge
  7:          1          0          0          0   IO-APIC-edge      pa=
rport0
  8:          0          0          0          1   IO-APIC-edge      rt=
c0
  9:          0          0          0          0   IO-APIC-fasteoi   ac=
pi
 12:          0          0          0          4   IO-APIC-edge      i8=
042
 14:          0          0          4       1807   IO-APIC-edge      pa=
ta_atiixp
 15:          0          0          0          0   IO-APIC-edge      pa=
ta_atiixp
 16:          0          0          0        696   IO-APIC-fasteoi
ohci_hcd:usb3, ohci_hcd:usb4, HDA Intel
 17:          0          0          0          0   IO-APIC-fasteoi
ehci_hcd:usb1
 18:          0          0          1         33   IO-APIC-fasteoi
ohci_hcd:usb5, ohci_hcd:usb6, ohci_hcd:usb7
 19:          0          0          1      20852   IO-APIC-fasteoi
ehci_hcd:usb2, HDA Intel
 21:          0          0          0          0   IO-APIC-fasteoi   et=
h1
 22:          0          0         12      14242   IO-APIC-fasteoi   ah=
ci
 24:      43478          0          0          0  HPET_MSI-edge      hp=
et2
 26:          0          0          2       3275   PCI-MSI-edge      et=
h0
 27:          0          0          0          0   PCI-MSI-edge
fglrx[0]@PCI:1:5:0
NMI:          0          0          0          0   Non-maskable interru=
pts
LOC:         90      45493      26180      23050   Local timer interrup=
ts
SPU:          0          0          0          0   Spurious interrupts
CNT:          0          0          0          0   Performance counter
interrupts
PND:          0          0          0          0   Performance pending =
work
RES:      11614       7453       8060       7662   Rescheduling interru=
pts
CAL:         86         96         83         52   Function call interr=
upts
TLB:        685        414        779        513   TLB shootdowns
TRM:          0          0          0          0   Thermal event interr=
upts
THR:          0          0          0          0   Threshold APIC inter=
rupts
MCE:          0          0          0          0   Machine check except=
ions
MCP:          2          2          2          2   Machine check polls
ERR:          5
MIS:          0
netto@black-dev:/proc$ cat iomem
00000000-0000ffff : reserved
00010000-0009ebff : System RAM
0009ec00-0009ffff : reserved
000a0000-000bffff : Video RAM area
000c0000-000ce9ff : Video ROM
000e4000-000fffff : reserved
  000f0000-000fffff : System ROM
00100000-bff7ffff : System RAM
  00100000-0057ba97 : Kernel code
  0057ba98-007947e7 : Kernel data
  00822000-008ad99f : Kernel bss
bff80000-bff97fff : ACPI Tables
bff98000-bffcffff : ACPI Non-volatile Storage
bffd0000-bfffffff : reserved
c0000000-cfffffff : pnp 00:01
d0000000-dfffffff : PCI Bus 0000:01
  d0000000-dfffffff : 0000:01:05.0
e0000000-efffffff : PCI MMCONFIG 0 [00-ff]
  e0000000-efffffff : pnp 00:0c
fbbf4000-fbbf7fff : 0000:00:14.2
  fbbf4000-fbbf7fff : ICH HD audio
fbbfa000-fbbfafff : 0000:00:14.5
  fbbfa000-fbbfafff : ohci_hcd
fbbfb000-fbbfbfff : 0000:00:13.1
  fbbfb000-fbbfbfff : ohci_hcd
fbbfc000-fbbfcfff : 0000:00:13.0
  fbbfc000-fbbfcfff : ohci_hcd
fbbfd000-fbbfdfff : 0000:00:12.1
  fbbfd000-fbbfdfff : ohci_hcd
fbbfe000-fbbfefff : 0000:00:12.0
  fbbfe000-fbbfefff : ohci_hcd
fbbff400-fbbff4ff : 0000:00:13.2
  fbbff400-fbbff4ff : ehci_hcd
fbbff800-fbbff8ff : 0000:00:12.2
  fbbff800-fbbff8ff : ehci_hcd
fbbffc00-fbbfffff : 0000:00:11.0
  fbbffc00-fbbfffff : ahci
fbc00000-fbdfffff : PCI Bus 0000:01
  fbc00000-fbcfffff : 0000:01:05.0
  fbde8000-fbdebfff : 0000:01:05.1
    fbde8000-fbdebfff : ICH HD audio
  fbdf0000-fbdfffff : 0000:01:05.0
fbe00000-fbefffff : PCI Bus 0000:02
  fbec0000-fbedffff : 0000:02:00.0
  fbeff000-fbefffff : 0000:02:00.0
    fbeff000-fbefffff : r8169
fbf00000-fbffffff : PCI Bus 0000:03
  fbfffc00-fbfffcff : 0000:03:07.0
    fbfffc00-fbfffcff : 8139too
fec00000-fec00fff : IOAPIC 0
fec10000-fec1001f : pnp 00:0a
fed00000-fed003ff : HPET 2
fed40000-fed44fff : pnp 00:0a
fee00000-fee00fff : Local APIC
  fee00000-fee00fff : pnp 00:09
ff700000-ffffffff : reserved
  ffb80000-ffbfffff : pnp 00:0a
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
  0170-0177 : pata_atiixp
01f0-01f7 : 0000:00:14.1
  01f0-01f7 : pata_atiixp
0230-023f : pnp 00:0b
0290-029f : pnp 00:0b
0300-030f : pnp 00:0b
0376-0376 : 0000:00:14.1
  0376-0376 : pata_atiixp
0378-037a : parport0
03c0-03df : vga+
03f6-03f6 : 0000:00:14.1
  03f6-03f6 : pata_atiixp
03f8-03ff : serial
040b-040b : pnp 00:0a
04d0-04d1 : pnp 00:0a
04d6-04d6 : pnp 00:0a
0800-089f : pnp 00:0a
  0800-0803 : ACPI PM1a_EVT_BLK
  0804-0805 : ACPI PM1a_CNT_BLK
  0808-080b : ACPI PM_TMR
  0810-0815 : ACPI CPU throttle
  0820-0827 : ACPI GPE0_BLK
08ff-08ff : ACPI PM2_CNT_BLK
0900-090f : pnp 00:0a
0910-091f : pnp 00:0a
0a30-0a3f : pnp 00:0b
0b00-0b3f : pnp 00:0a
  0b20-0b3f : pnp 00:0a
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
  7000-700f : ahci
8000-8003 : 0000:00:11.0
  8000-8003 : ahci
9000-9007 : 0000:00:11.0
  9000-9007 : ahci
a000-a003 : 0000:00:11.0
  a000-a003 : ahci
b000-b007 : 0000:00:11.0
  b000-b007 : ahci
c000-cfff : PCI Bus 0000:01
  c000-c0ff : 0000:01:05.0
d000-dfff : PCI Bus 0000:02
  d800-d8ff : 0000:02:00.0
    d800-d8ff : r8169
e000-efff : PCI Bus 0000:03
  e800-e8ff : 0000:03:07.0
    e800-e8ff : 8139too
fe00-fefe : pnp 00:0a
ff00-ff0f : 0000:00:14.1
  ff00-ff0f : pata_atiixp
netto@black-dev:/proc$ cat pagetypeinfo
Page block order: 9
Pages per block:  512

=46ree pages count per migrate type at order       0      1      2
3      4      5      6      7      8      9     10
Node    0, zone      DMA, type    Unmovable      0      1      1
1      1      1      1      1      1      1      0
Node    0, zone      DMA, type  Reclaimable      0      0      0
0      0      0      0      0      0      0      0
Node    0, zone      DMA, type      Movable      4      5      3
4      2      2      3      0      1      0      0
Node    0, zone      DMA, type      Reserve      0      0      0
0      0      0      0      0      0      1      0
Node    0, zone      DMA, type      Isolate      0      0      0
0      0      0      0      0      0      0      0
Node    0, zone   Normal, type    Unmovable      1      2     11
6      3      5     10      7      3      2      0
Node    0, zone   Normal, type  Reclaimable      1      1      1
0      1      1      0      1      1      1      0
Node    0, zone   Normal, type      Movable      1      0      1
1     21     22     10      6      5      4    153
Node    0, zone   Normal, type      Reserve      0      0      0
0      0      0      0      0      0      0      1
Node    0, zone   Normal, type      Isolate      0      0      0
0      0      0      0      0      0      0      0
Node    0, zone  HighMem, type    Unmovable     27      2      4
3      0      1      1      0      0      1      0
Node    0, zone  HighMem, type  Reclaimable      0      0      0
0      0      0      0      0      0      0      0
Node    0, zone  HighMem, type      Movable    121     96     29
14     10      5      4      0      0      0   1629
Node    0, zone  HighMem, type      Reserve      0      2      1
1      1      1      1      1      1      0      0
Node    0, zone  HighMem, type      Isolate      0      0      0
0      0      0      0      0      0      0      0

Number of blocks type     Unmovable  Reclaimable      Movable
Reserve      Isolate
Node 0, zone      DMA            1            0            6
 1            0
Node 0, zone   Normal           31            6          398
 2            0
Node 0, zone  HighMem           16            0         4019
 1            0
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
        Vendor: American Megatrends Inc.
        Version: 0701
        Release Date: 04/09/2009
        Address: 0xF0000
        Runtime Size: 64 kB
        ROM Size: 1024 kB
        Characteristics:
                ISA is supported
                PCI is supported
                PNP is supported
                APM is supported
                BIOS is upgradeable
                BIOS shadowing is allowed
                ESCD support is available
                Boot from CD is supported
                Selectable boot is supported
                BIOS ROM is socketed
                EDD is supported
                5.25"/1.2 MB floppy services are supported (int 13h)
                3.5"/720 KB floppy services are supported (int 13h)
                3.5"/2.88 MB floppy services are supported (int 13h)
                Print screen service is supported (int 5h)
                8042 keyboard services are supported (int 9h)
                Serial services are supported (int 14h)
                Printer services are supported (int 17h)
                CGA/mono video services are supported (int 10h)
                ACPI is supported
                USB legacy is supported
                LS-120 boot is supported
                ATAPI Zip drive boot is supported
                BIOS boot specification is supported
                Targeted content distribution is supported
        BIOS Revision: 8.15

Handle 0x0001, DMI type 1, 27 bytes
System Information
        Manufacturer: System manufacturer
        Product Name: System Product Name
        Version: System Version
        Serial Number: System Serial Number
        UUID: 00F4F00C-AF3D-DE11-96F3-002618055F09
        Wake-up Type: Power Switch
        SKU Number: To Be Filled By O.E.M.
        Family: To Be Filled By O.E.M.

Handle 0x0002, DMI type 2, 15 bytes
Base Board Information
        Manufacturer: ASUSTeK Computer INC.
        Product Name: M4A78-EM
        Version: Rev X.0x
        Serial Number: MS1C96B05901908
        Asset Tag: To Be Filled By O.E.M.
        Features:
                Board is a hosting board
                Board is replaceable
        Location In Chassis: To Be Filled By O.E.M.
        Chassis Handle: 0x0003
        Type: Motherboard
        Contained Object Handles: 0

Handle 0x0003, DMI type 3, 21 bytes
Chassis Information
        Manufacturer: Chassis Manufacture
        Type: Desktop
        Lock: Not Present
        Version: Chassis Version
        Serial Number: Chassis Serial Number
        Asset Tag: Asset-1234567890
        Boot-up State: Safe
        Power Supply State: Safe
        Thermal State: Safe
        Security Status: None
        OEM Information: 0x00000001
        Height: Unspecified
        Number Of Power Cords: 1
        Contained Elements: 0

Handle 0x0004, DMI type 4, 40 bytes
Processor Information
        Socket Designation: AM2
        Type: Central Processor
        Family: <OUT OF SPEC>
        Manufacturer: AMD
        ID: 22 0F 10 00 FF FB 8B 17
        Version: AMD Phenom(tm) 9500 Quad-Core Processor
        Voltage: 1.5 V
        External Clock: 200 MHz
        Max Speed: 3200 MHz
        Current Speed: 2200 MHz
        Status: Populated, Enabled
        Upgrade: Other
        L1 Cache Handle: 0x0005
        L2 Cache Handle: 0x0006
        L3 Cache Handle: 0x0007
        Serial Number: To Be Filled By O.E.M.
        Asset Tag: To Be Filled By O.E.M.
        Part Number: To Be Filled By O.E.M.
        Core Count: 4
        Core Enabled: 4
        Characteristics:
                64-bit capable

Handle 0x0005, DMI type 7, 19 bytes
Cache Information
        Socket Designation: L1-Cache
        Configuration: Enabled, Not Socketed, Level 1
        Operational Mode: Varies With Memory Address
        Location: Internal
        Installed Size: 512 KB
        Maximum Size: 512 KB
        Supported SRAM Types:
                Pipeline Burst
        Installed SRAM Type: Pipeline Burst
        Speed: Unknown
        Error Correction Type: Single-bit ECC
        System Type: Data
        Associativity: 4-way Set-associative

Handle 0x0006, DMI type 7, 19 bytes
Cache Information
        Socket Designation: L2-Cache
        Configuration: Enabled, Not Socketed, Level 2
        Operational Mode: Varies With Memory Address
        Location: Internal
        Installed Size: 2048 KB
        Maximum Size: 2048 KB
        Supported SRAM Types:
                Pipeline Burst
        Installed SRAM Type: Pipeline Burst
        Speed: Unknown
        Error Correction Type: Single-bit ECC
        System Type: Unified
        Associativity: 4-way Set-associative

Handle 0x0007, DMI type 7, 19 bytes
Cache Information
        Socket Designation: L3-Cache
        Configuration: Enabled, Not Socketed, Level 3
        Operational Mode: Varies With Memory Address
        Location: Internal
        Installed Size: 2048 KB
        Maximum Size: 2048 KB
        Supported SRAM Types:
                Pipeline Burst
        Installed SRAM Type: Pipeline Burst
        Speed: Unknown
        Error Correction Type: Single-bit ECC
        System Type: Unified
        Associativity: 4-way Set-associative

Handle 0x0008, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: PS/2 KeyBoard
        Internal Connector Type: None
        External Reference Designator: Keyboard
        External Connector Type: PS/2
        Port Type: Keyboard Port

Handle 0x0009, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB1
        Internal Connector Type: None
        External Reference Designator: USB1
        External Connector Type: Access Bus (USB)
        Port Type: USB

Handle 0x000A, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB2
        Internal Connector Type: None
        External Reference Designator: USB2
        External Connector Type: Access Bus (USB)
        Port Type: USB

Handle 0x000B, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB3
        Internal Connector Type: None
        External Reference Designator: USB3
        External Connector Type: Access Bus (USB)
        Port Type: USB

Handle 0x000C, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB4
        Internal Connector Type: None
        External Reference Designator: USB4
        External Connector Type: Access Bus (USB)
        Port Type: USB

Handle 0x000D, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: LPT 1
        Internal Connector Type: None
        External Reference Designator: LPT 1
        External Connector Type: DB-25 male
        Port Type: Parallel Port ECP/EPP

Handle 0x000E, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: COM 1
        Internal Connector Type: None
        External Reference Designator: COM 1
        External Connector Type: DB-9 male
        Port Type: Serial Port 16550A Compatible

Handle 0x000F, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: LAN
        Internal Connector Type: None
        External Reference Designator: LAN
        External Connector Type: RJ-45
        Port Type: Network Port

Handle 0x0010, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: Audio_Line_In
        Internal Connector Type: None
        External Reference Designator: Audio_Line_In
        External Connector Type: Mini Jack (headphones)
        Port Type: Audio Port

Handle 0x0011, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: Audio_Line_Out
        Internal Connector Type: None
        External Reference Designator: Audio_Line_Out
        External Connector Type: Mini Jack (headphones)
        Port Type: Audio Port

Handle 0x0012, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: Audio_Mic_In
        Internal Connector Type: None
        External Reference Designator: Audio_Mic_In
        External Connector Type: Mini Jack (headphones)
        Port Type: Audio Port

Handle 0x0013, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: Audio_Center/Sub
        Internal Connector Type: None
        External Reference Designator: Audio_Center/Sub
        External Connector Type: Mini Jack (headphones)
        Port Type: Audio Port

Handle 0x0014, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: Audio_Rear
        Internal Connector Type: None
        External Reference Designator: Audio_Rear
        External Connector Type: Mini Jack (headphones)
        Port Type: Audio Port

Handle 0x0015, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: Audio_Side
        Internal Connector Type: None
        External Reference Designator: Audio_Side
        External Connector Type: Mini Jack (headphones)
        Port Type: Audio Port

Handle 0x0016, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: HDMI
        Internal Connector Type: None
        External Reference Designator: HDMI port
        External Connector Type: Other
        Port Type: Other

Handle 0x0017, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: DVI
        Internal Connector Type: None
        External Reference Designator: DVI port
        External Connector Type: Other
        Port Type: Other

Handle 0x0018, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SPDIFO
        Internal Connector Type: None
        External Reference Designator: SPDIFO
        External Connector Type: Other
        Port Type: Other

Handle 0x0019, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: PRI IDE
        Internal Connector Type: On Board IDE
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x001A, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SB_SATA1
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x001B, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SB_SATA2
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x001C, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SB_SATA3
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x001D, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SB_SATA4
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x001E, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SB_SATA5
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x001F, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SB_SATA6
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x0020, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: CPU FAN
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x0021, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: CHA FAN
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x0022, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: PWR FAN
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x0023, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB5
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x0024, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB6
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x0025, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB7
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x0026, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB8
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x0027, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB9
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x0028, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB10
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x0029, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB11
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x002A, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: USB12
        Internal Connector Type: Access Bus (USB)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: USB

Handle 0x002B, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: PANEL
        Internal Connector Type: 9 Pin Dual Inline (pin 10 cut)
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x002C, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: SPDIF OUT
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x002D, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: AAFP
        Internal Connector Type: Other
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Other

Handle 0x002E, DMI type 8, 9 bytes
Port Connector Information
        Internal Reference Designator: CD
        Internal Connector Type: On Board Sound Input From CD-ROM
        External Reference Designator: Not Specified
        External Connector Type: None
        Port Type: Audio Port

Handle 0x002F, DMI type 9, 13 bytes
System Slot Information
        Designation: PCIE1X
        Type: 32-bit PCI Express
        Current Usage: Available
        Length: Short
        ID: 4
        Characteristics:
                3.3 V is provided
                Opening is shared
                PME signal is supported

Handle 0x0030, DMI type 9, 13 bytes
System Slot Information
        Designation: PCIE16X
        Type: 32-bit PCI Express
        Current Usage: Available
        Length: Short
        ID: 2
        Characteristics:
                3.3 V is provided
                Opening is shared
                PME signal is supported

Handle 0x0031, DMI type 9, 13 bytes
System Slot Information
        Designation: PCI1
        Type: 32-bit PCI
        Current Usage: Available
        Length: Short
        ID: 13
        Characteristics:
                3.3 V is provided
                Opening is shared
                PME signal is supported

Handle 0x0032, DMI type 9, 13 bytes
System Slot Information
        Designation: PCI2
        Type: 32-bit PCI
        Current Usage: In Use
        Length: Short
        ID: 14
        Characteristics:
                3.3 V is provided
                Opening is shared
                PME signal is supported

Handle 0x0033, DMI type 10, 6 bytes
On Board Device Information
        Type: Other
        Status: Enabled
        Description:   To Be Filled By O.E.M.

Handle 0x0034, DMI type 10, 6 bytes
On Board Device Information
        Type: Ethernet
        Status: Enabled
        Description: To Be Filled By O.E.M.

Handle 0x0035, DMI type 10, 6 bytes
On Board Device Information
        Type: Sound
        Status: Enabled
        Description: To Be Filled By O.E.M.

Handle 0x0036, DMI type 10, 6 bytes
On Board Device Information
        Type: Other
        Status: Enabled
        Description: To Be Filled By O.E.M.

Handle 0x0037, DMI type 11, 5 bytes
OEM Strings
        String 1: To Be Filled By O.E.M.
        String 2: To Be Filled By O.E.M.
        String 3: To Be Filled By O.E.M.
        String 4: To Be Filled By O.E.M.

Handle 0x0038, DMI type 13, 22 bytes
BIOS Language Information
        Installable Languages: 1
                en|US|iso8859-1
        Currently Installed Language: en|US|iso8859-1

Handle 0x0039, DMI type 15, 35 bytes
System Event Log
        Area Length: 4 bytes
        Header Start Offset: 0x0000
        Header Length: 2 bytes
        Data Start Offset: 0x0002
        Access Method: Indexed I/O, one 16-bit index port, one 8-bit da=
ta port
        Access Address: Index 0x046A, Data 0x046C
        Status: Invalid, Not Full
        Change Token: 0x00000000
        Header Format: No Header
        Supported Log Type Descriptors: 6
        Descriptor 1: End of log
        Data Format 1: OEM-specific
        Descriptor 2: End of log
        Data Format 2: OEM-specific
        Descriptor 3: End of log
        Data Format 3: OEM-specific
        Descriptor 4: End of log
        Data Format 4: OEM-specific
        Descriptor 5: End of log
        Data Format 5: OEM-specific
        Descriptor 6: End of log
        Data Format 6: OEM-specific

Handle 0x003A, DMI type 16, 15 bytes
Physical Memory Array
        Location: System Board Or Motherboard
        Use: System Memory
        Error Correction Type: None
        Maximum Capacity: 8 GB
        Error Information Handle: Not Provided
        Number Of Devices: 4

Handle 0x003B, DMI type 19, 15 bytes
Memory Array Mapped Address
        Starting Address: 0x00000000000
        Ending Address: 0x0022FFFFFFF
        Range Size: 8960 MB
        Physical Array Handle: 0x003A
        Partition Width: 0

Handle 0x003C, DMI type 17, 27 bytes
Memory Device
        Array Handle: 0x003A
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 2048 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM0
        Bank Locator: BANK0
        Type: DDR2
        Type Detail: Synchronous
        Speed: 667 MHz (1.5 ns)
        Manufacturer: Manufacturer0
        Serial Number: SerNum0
        Asset Tag: AssetTagNum0
        Part Number: PartNum0

Handle 0x003D, DMI type 20, 19 bytes
Memory Device Mapped Address
        Starting Address: 0x00000000000
        Ending Address: 0x0007FFFFFFF
        Range Size: 2 GB
        Physical Device Handle: 0x003C
        Memory Array Mapped Address Handle: 0x003B
        Partition Row Position: 1

Handle 0x003E, DMI type 17, 27 bytes
Memory Device
        Array Handle: 0x003A
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 2048 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM1
        Bank Locator: BANK1
        Type: DDR2
        Type Detail: Synchronous
        Speed: 667 MHz (1.5 ns)
        Manufacturer: Manufacturer1
        Serial Number: SerNum1
        Asset Tag: AssetTagNum1
        Part Number: PartNum1

Handle 0x003F, DMI type 20, 19 bytes
Memory Device Mapped Address
        Starting Address: 0x00080000000
        Ending Address: 0x000FFFFFFFF
        Range Size: 2 GB
        Physical Device Handle: 0x003E
        Memory Array Mapped Address Handle: 0x003B
        Partition Row Position: 1

Handle 0x0040, DMI type 17, 27 bytes
Memory Device
        Array Handle: 0x003A
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 2048 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM2
        Bank Locator: BANK2
        Type: DDR2
        Type Detail: Synchronous
        Speed: 667 MHz (1.5 ns)
        Manufacturer: Manufacturer2
        Serial Number: SerNum2
        Asset Tag: AssetTagNum2
        Part Number: PartNum2

Handle 0x0041, DMI type 20, 19 bytes
Memory Device Mapped Address
        Starting Address: 0x00100000000
        Ending Address: 0x0017FFFFFFF
        Range Size: 2 GB
        Physical Device Handle: 0x0040
        Memory Array Mapped Address Handle: 0x003B
        Partition Row Position: 1

Handle 0x0042, DMI type 17, 27 bytes
Memory Device
        Array Handle: 0x003A
        Error Information Handle: Not Provided
        Total Width: 64 bits
        Data Width: 64 bits
        Size: 2048 MB
        Form Factor: DIMM
        Set: None
        Locator: DIMM3
        Bank Locator: BANK3
        Type: DDR2
        Type Detail: Synchronous
        Speed: 667 MHz (1.5 ns)
        Manufacturer: Manufacturer3
        Serial Number: SerNum3
        Asset Tag: AssetTagNum3
        Part Number: PartNum3

Handle 0x0043, DMI type 20, 19 bytes
Memory Device Mapped Address
        Starting Address: 0x00180000000
        Ending Address: 0x001FFFFFFFF
        Range Size: 2 GB
        Physical Device Handle: 0x0042
        Memory Array Mapped Address Handle: 0x003B
        Partition Row Position: 1

Handle 0x0044, DMI type 32, 20 bytes
System Boot Information
        Status: No errors detected

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
Build Date: 14 November 2009  05:48:26PM
xorg-server 2:1.6.4-2ubuntu4.1 (buildd@)
        Before reporting problems, check http://wiki.x.org
        to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
        (++) from command line, (!!) notice, (II) informational,
        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Sun Feb 21 23:55:50 201=
0
(=3D=3D) Using config file: "/etc/X11/xorg.conf"
(=3D=3D) ServerLayout "Layout[all]"
(**) |-->Screen "aticonfig-Screen[0]-0" (0)
(**) |   |-->Monitor "aticonfig-Monitor[0]-0"
(**) |   |-->Device "aticonfig-Device[0]-0"
(**) |-->Input Device "Keyboard[0]"
(**) |-->Input Device "Mouse[1]"
(**) Option "AllowMouseOpenFail" "on"
(=3D=3D) Automatically adding devices
(=3D=3D) Automatically enabling devices
(WW) The directory "/usr/share/fonts/misc" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/local" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/75dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/100dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/Type1" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/URW" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/Speedo" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/PEX" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/cyrillic" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/misc" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/75dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/100dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin2/Type1" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/latin7/75dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/baekmuk" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/japanese" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/kwintv" does not exist.
        Entry deleted from font path.
(WW) `fonts.dir' not found (or not valid) in
"/usr/share/fonts/truetype".
        Entry deleted from font path.
        (Run 'mkfontdir' on "/usr/share/fonts/truetype").
(WW) The directory "/usr/share/fonts/uni" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/CID" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/ucs/misc" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/ucs/75dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/ucs/100dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/misc" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/75dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/100dpi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/hellas/Type1" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/misc/sgi" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/xtest" does not exist.
        Entry deleted from font path.
(WW) The directory "/opt/kde3/share/fonts" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/cyrillic" does not exist.
        Entry deleted from font path.
(**) FontPath set to:
        /usr/share/fonts/X11/misc,
        /usr/share/fonts/X11/100dpi/:unscaled,
        /usr/share/fonts/X11/75dpi/:unscaled,
        /usr/share/fonts/X11/Type1,
        /usr/share/fonts/X11/100dpi,
        /usr/share/fonts/X11/75dpi,
        /var/lib/defoma/x-ttcidfont-conf.d/dirs/TrueType,
        built-ins
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
        X.Org ANSI C Emulation: 0.4
        X.Org Video Driver: 5.0
        X.Org XInput driver : 4.0
        X.Org Server Extension : 2.0
(II) Loader running on linux
(++) using VT number 7

(--) PCI:*(0:1:5:0) 1002:9610:1043:82f1 ATI Technologies Inc Radeon HD
3200 Graphics rev 0, Mem @ 0xd0000000/268435456, 0xfbdf0000/65536,
0xfbc00000/1048576, I/O @ 0x0000c000/256
(II) Open ACPI successful (/var/run/acpid.socket)
(II) System resource ranges:
        [0] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [1] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [2] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [3] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [4] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [5] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [6] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [7] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [8] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [9] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [10] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [11] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [12] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [13] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [14] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [15] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [16] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [17] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [18] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [19] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [20] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [21] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [22] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [23] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [24] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [25] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [26] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [27] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [28] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [29] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [30] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [31] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [32] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [33] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [34] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [35] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
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
        compiled for 7.4.0, module version =3D 1.0.0
(II) Loading extension GLX
(II) LoadModule: "dri"
(II) Loading /usr/lib/xorg/modules/extensions//libdri.so
(II) Module dri: vendor=3D"X.Org Foundation"
        compiled for 7.4.0, module version =3D 1.0.0
(II) Loading sub module "fglrxdrm"
(II) LoadModule: "fglrxdrm"
(II) Loading /usr/lib/xorg/modules/linux//libfglrxdrm.so
(II) Module fglrxdrm: vendor=3D"FireGL - ATI Technologies Inc."
        compiled for 1.4.99.906, module version =3D 8.66.10
(II) Loading extension XFree86-DRI
(II) LoadModule: "extmod"
(II) Loading /usr/lib/xorg/modules/extensions//libextmod.so
(II) Module extmod: vendor=3D"X.Org Foundation"
        compiled for 1.6.4, module version =3D 1.0.0
        Module class: X.Org Server Extension
        ABI class: X.Org Server Extension, version 2.0
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
        compiled for 1.6.4, module version =3D 1.0.0
        Module class: X.Org Server Extension
        ABI class: X.Org Server Extension, version 2.0
(II) Loading extension DOUBLE-BUFFER
(II) LoadModule: "record"
(II) Loading /usr/lib/xorg/modules/extensions//librecord.so
(II) Module record: vendor=3D"X.Org Foundation"
        compiled for 1.6.4, module version =3D 1.13.0
        Module class: X.Org Server Extension
        ABI class: X.Org Server Extension, version 2.0
(II) Loading extension RECORD
(II) LoadModule: "dri2"
(II) Loading /usr/lib/xorg/modules/extensions//libdri2.so
(II) Module dri2: vendor=3D"X.Org Foundation"
        compiled for 1.6.4, module version =3D 1.1.0
        ABI class: X.Org Server Extension, version 2.0
(II) Loading extension DRI2
(II) LoadModule: "fglrx"
(II) Loading /usr/lib/xorg/modules/drivers//fglrx_drv.so
(II) Module fglrx: vendor=3D"FireGL - ATI Technologies Inc."
        compiled for 1.4.99.906, module version =3D 8.66.10
        Module class: X.Org Video Driver
(II) Primary Device is: PCI 01@00:05:0
(WW) Falling back to old probe method for fglrx
(II) ATI Proprietary Linux Driver Version Identifier:8.66.10
(II) ATI Proprietary Linux Driver Release Identifier: 8.66.1
(II) ATI Proprietary Linux Driver Build Date: Sep  3 2009 21:35:19
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
        [0] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [1] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [2] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [3] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [4] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [5] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [6] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [7] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [8] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [9] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [10] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [11] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [12] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [13] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [14] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [15] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [16] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [17] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [18] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [19] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [20] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [21] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [22] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [23] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [24] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [25] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [26] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [27] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [28] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [29] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [30] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [31] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [32] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [33] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [34] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [35] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
(II) fglrx(0): pEnt->device->identifier=3D0x8da5dd0
(II) resource ranges after probing:
        [0] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [1] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [2] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [3] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [4] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [5] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [6] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [7] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [8] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [9] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [10] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [11] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [12] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [13] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [14] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [15] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [16] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [17] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [18] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [19] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [20] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [21] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [22] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [23] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [24] 0  0       0x000a0000 - 0x000affff (0x10000) MS[B]
        [25] 0  0       0x000b0000 - 0x000b7fff (0x8000) MS[B]
        [26] 0  0       0x000b8000 - 0x000bffff (0x8000) MS[B]
        [27] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [28] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [29] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [30] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [31] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [32] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [33] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [34] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [35] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [36] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [37] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [38] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [39] 0  0       0x000003b0 - 0x000003bb (0xc) IS[B]
        [40] 0  0       0x000003c0 - 0x000003df (0x20) IS[B]
(II) Setting vga for screen 0.
(II) fglrx(0): =3D=3D=3D [atiddxPreInit] =3D=3D=3D begin
(II) Loading sub module "vgahw"
(II) LoadModule: "vgahw"
(II) Loading /usr/lib/xorg/modules//libvgahw.so
(II) Module vgahw: vendor=3D"X.Org Foundation"
        compiled for 1.6.4, module version =3D 0.1.0
        ABI class: X.Org Video Driver, version 5.0
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
        compiled for 1.6.4, module version =3D 1.1.0
        ABI class: X.Org Video Driver, version 5.0
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
        compiled for 1.6.4, module version =3D 1.0.0
        ABI class: X.Org ANSI C Emulation, version 0.4
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
(II) fglrx(0): Manufacturer: GSM  Model: 56ee  Serial#: 16843009
(II) fglrx(0): Year: 2009  Week: 6
(II) fglrx(0): EDID Version: 1.3
(II) fglrx(0): Analog Display Input,  Input Voltage Level: 0.700/0.700
V
(II) fglrx(0): Sync:  Separate  SyncOnGreen
(II) fglrx(0): Max Image Size [cm]: horiz.: 51  vert.: 29
(II) fglrx(0): Gamma: 2.20
(II) fglrx(0): DPMS capabilities: StandBy Suspend Off; RGB/Color
Display
(II) fglrx(0): First detailed timing is preferred mode
(II) fglrx(0): redX: 0.635 redY: 0.342   greenX: 0.292 greenY: 0.611
(II) fglrx(0): blueX: 0.147 blueY: 0.070   whiteX: 0.313 whiteY: 0.329
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
(II) fglrx(0): #0: hsize: 1680  vsize 1050  refresh: 60  vid: 179
(II) fglrx(0): #1: hsize: 1280  vsize 1024  refresh: 75  vid: 36737
(II) fglrx(0): #2: hsize: 1280  vsize 1024  refresh: 60  vid: 32897
(II) fglrx(0): #3: hsize: 1152  vsize 864  refresh: 75  vid: 20337
(II) fglrx(0): Supported detailed timing:
(II) fglrx(0): clock: 148.5 MHz   Image Size:  510 x 290 mm
(II) fglrx(0): h_active: 1920  h_sync: 2008  h_sync_end 2052
h_blank_end 2200 h_border: 0
(II) fglrx(0): v_active: 1080  v_sync: 1084  v_sync_end 1089
v_blanking: 1125 v_border: 0
(II) fglrx(0): Supported detailed timing:
(II) fglrx(0): clock: 146.2 MHz   Image Size:  474 x 296 mm
(II) fglrx(0): h_active: 1680  h_sync: 1784  h_sync_end 1960
h_blank_end 2240 h_border: 0
(II) fglrx(0): v_active: 1050  v_sync: 1053  v_sync_end 1059
v_blanking: 1089 v_border: 0
(II) fglrx(0): Ranges: V min: 56 V max: 75 Hz, H min: 30 H max: 83
kHz, PixClock max 150 MHz
(II) fglrx(0): Monitor name: W2353
(II) fglrx(0): EDID (in hex):
(II) fglrx(0):  00ffffffffffff001e6dee5601010101
(II) fglrx(0):  061301036a331d78eaaec5a2574a9c25
(II) fglrx(0):  125054a76b80b300818f8180714f0101
(II) fglrx(0):  010101010101023a801871382d40582c
(II) fglrx(0):  4500fe221100001e21399030621a2740
(II) fglrx(0):  68b03600da281100001c000000fd0038
(II) fglrx(0):  4b1e530f000a202020202020000000fc
(II) fglrx(0):  0057323335330a20202020202020005f
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
(=3D=3D) fglrx(0):  PseudoColor visuals disabled
(II) Loading sub module "ramdac"
(II) LoadModule: "ramdac"
(II) Module "ramdac" already built-in
(=3D=3D) fglrx(0): NoAccel =3D NO
(II) Loading sub module "xaa"
(II) LoadModule: "xaa"
(II) Loading /usr/lib/xorg/modules//libxaa.so
(II) Module xaa: vendor=3D"X.Org Foundation"
        compiled for 1.6.4, module version =3D 1.2.1
        ABI class: X.Org Video Driver, version 5.0
(=3D=3D) fglrx(0): NoDRI =3D NO
(=3D=3D) fglrx(0): Capabilities: 0x00000000
(=3D=3D) fglrx(0): CapabilitiesEx: 0x00000000
(=3D=3D) fglrx(0): OpenGL ClientDriverName: "fglrx_dri.so"
(**) fglrx(0): UseFastTLS=3D1
(=3D=3D) fglrx(0): BlockSignalsOnLock=3D1
(--) Depth 24 pixmap format is 32 bpp
(II) do I need RAC?  No, I don't.
(II) resource ranges after preInit:
        [0] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [1] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [2] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [3] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [4] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [5] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [6] -1  0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [7] -1  0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [8] -1  0       0xffffffff - 0xffffffff (0x1) MX[B]
        [9] -1  0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [10] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [11] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [12] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [13] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [14] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [15] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [16] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [17] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [18] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [19] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [20] -1 0       0xffffffff - 0xffffffff (0x1) MX[B]
        [21] -1 0       0x000f0000 - 0x000fffff (0x10000) MX[B]
        [22] -1 0       0x000c0000 - 0x000effff (0x30000) MX[B]
        [23] -1 0       0x00000000 - 0x0009ffff (0xa0000) MX[B]
        [24] 0  0       0x000a0000 - 0x000affff (0x10000) MS[B](OprU)
        [25] 0  0       0x000b0000 - 0x000b7fff (0x8000) MS[B](OprU)
        [26] 0  0       0x000b8000 - 0x000bffff (0x8000) MS[B](OprU)
        [27] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [28] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [29] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [30] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [31] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [32] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [33] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [34] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [35] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [36] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [37] -1 0       0x0000ffff - 0x0000ffff (0x1) IX[B]
        [38] -1 0       0x00000000 - 0x00000000 (0x1) IX[B]
        [39] 0  0       0x000003b0 - 0x000003bb (0xc) IS[B](OprU)
        [40] 0  0       0x000003c0 - 0x000003df (0x20) IS[B](OprU)
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
(II) fglrx(0):     Name: fglrx
(II) fglrx(0):     Version: 8.66.10
(II) fglrx(0):     Date: Sep  3 2009
(II) fglrx(0):     Desc: ATI FireGL DRM kernel module
(II) fglrx(0): Kernel Module version matches driver.
(II) fglrx(0): Kernel Module Build Time Information:
(II) fglrx(0):     Build-Kernel UTS_RELEASE:
2.6.31-19-generic-pae
(II) fglrx(0):     Build-Kernel MODVERSIONS:        yes
(II) fglrx(0):     Build-Kernel __SMP__:            yes
(II) fglrx(0):     Build-Kernel PAGE_SIZE:          0x1000
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
        compiled for 1.4.99.906, module version =3D 1.0.0
(II) Loading extension GLESX
(II) fglrx(0): GLESX enableFlags =3D 94
(**) fglrx(0): Option "XaaNoOffscreenPixmaps" "true"
(II) fglrx(0): Using XFree86 Acceleration Architecture (XAA)
        Screen to screen bit blits
        Solid filled rectangles
        Solid Horizontal and Vertical Lines
        Driver provided ScreenToScreenBitBlt replacement
        Driver provided FillSolidRects replacement
(II) fglrx(0): GLESX is enabled
(II) LoadModule: "amdxmm"
(II) Loading /usr/lib/xorg/modules//amdxmm.so
(II) Module amdxmm: vendor=3D"X.Org Foundation"
        compiled for 1.4.99.906, module version =3D 1.0.0
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
to PS2 Adaptor  v1.12
(II) LoadModule: "evdev"
(II) Loading /usr/lib/xorg/modules/input//evdev_drv.so
(II) Module evdev: vendor=3D"X.Org Foundation"
        compiled for 1.6.4, module version =3D 2.2.5
        Module class: X.Org XInput Driver
        ABI class: X.Org XInput driver, version 4.0
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: always
reports core events
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Device:
"/dev/input/event4"
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Found 10
mouse buttons
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Found x
and y relative axes
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Found
scroll wheel(s)
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Found keys
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12:
Configuring as mouse
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12:
Configuring as keyboard
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12:
YAxisMapping: buttons 4 and 5
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12:
EmulateWheelButton: 4, EmulateWheelInertia: 10, EmulateWheelTimeout:
200
(II) XINPUT: Adding extended input device "Composite USB PS2 Converter
USB to PS2 Adaptor  v1.12" (type: KEYBOARD)
(**) Option "xkb_rules" "evdev"
(**) Option "xkb_model" "pc105"
(**) Option "xkb_layout" "br"
(**) Option "xkb_variant" "abnt2"
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: (accel)
keeping acceleration scheme 1
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: (accel)
filter chain progression: 2.00
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: (accel)
filter stage 0: 20.00 ms
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: (accel)
set acceleration profile 0
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12:
initialized for relative axes.
(II) config/hal: Adding input device Composite USB PS2 Converter USB
to PS2 Adaptor  v1.12
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: always
reports core events
(**) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Device:
"/dev/input/event3"
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12: Found keys
(II) Composite USB PS2 Converter USB to PS2 Adaptor  v1.12:
Configuring as keyboard
(II) XINPUT: Adding extended input device "Composite USB PS2 Converter
USB to PS2 Adaptor  v1.12" (type: KEYBOARD)
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
(II) fglrx(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200
1080 1084 1089 1125 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0  146.25  1680 1784 1960 2240
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600
601 605 628 +hsync +vsync (37.9 kHz)
(II) fglrx(0): Modeline "800x600"x0.0   36.00  800 824 896 1024  600
601 603 625 +hsync +vsync (35.2 kHz)
(II) fglrx(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480
481 484 500 -hsync -vsync (37.5 kHz)
(II) fglrx(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480
490 492 525 -hsync -vsync (31.5 kHz)
(II) fglrx(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400
412 414 449 -hsync +vsync (31.5 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312
768 769 772 800 +hsync +vsync (60.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344
768 771 777 806 -hsync -vsync (48.4 kHz)
(II) fglrx(0): Modeline "832x624"x0.0   57.28  832 864 928 1152  624
625 628 667 -hsync -vsync (49.7 kHz)
(II) fglrx(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600
601 604 625 +hsync +vsync (46.9 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0  146.25  1680 1784 1960 2240
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688
1024 1025 1028 1066 +hsync +vsync (64.0 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)
(II) fglrx(0): EDID vendor "GSM", prod id 22254
(II) fglrx(0): Using hsync ranges from config file
(II) fglrx(0): Using vrefresh ranges from config file
(II) fglrx(0): Printing DDC gathered Modelines:
(II) fglrx(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200
1080 1084 1089 1125 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0  146.25  1680 1784 1960 2240
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600
601 605 628 +hsync +vsync (37.9 kHz)
(II) fglrx(0): Modeline "800x600"x0.0   36.00  800 824 896 1024  600
601 603 625 +hsync +vsync (35.2 kHz)
(II) fglrx(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480
481 484 500 -hsync -vsync (37.5 kHz)
(II) fglrx(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480
490 492 525 -hsync -vsync (31.5 kHz)
(II) fglrx(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400
412 414 449 -hsync +vsync (31.5 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312
768 769 772 800 +hsync +vsync (60.0 kHz)
(II) fglrx(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344
768 771 777 806 -hsync -vsync (48.4 kHz)
(II) fglrx(0): Modeline "832x624"x0.0   57.28  832 864 928 1152  624
625 628 667 -hsync -vsync (49.7 kHz)
(II) fglrx(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600
601 604 625 +hsync +vsync (46.9 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600
864 865 868 900 +hsync +vsync (67.5 kHz)
(II) fglrx(0): Modeline "1680x1050"x0.0  146.25  1680 1784 1960 2240
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)
(II) fglrx(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688
1024 1025 1028 1066 +hsync +vsync (64.0 kHz)
(II) fglrx(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600
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
