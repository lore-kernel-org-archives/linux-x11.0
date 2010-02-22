From: Corbin Simpson <mostawesomedude@gmail.com>
Subject: Re: fglrx on kubuntu 9.10 shows a warning on dmesg
Date: Sun, 21 Feb 2010 21:11:39 -0800
Message-ID: <e7bd23c31002212111y3ffcd885yf15b0b59e33c4@mail.gmail.com>
References: <faf3083f1002212038j6b09d00bv7584bf156a8a9458@mail.gmail.com>
	<faf3083f1002212047g3815d96dobbe70aaa98326a15@mail.gmail.com>
	<e7bd23c31002212110j52c2526ck830d4392e0f416da@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1762336906=="
Return-path: <xorg-bounces@lists.freedesktop.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:in-reply-to:references
	:date:message-id:subject:from:to:cc:content-type;
	bh=rCpq0y8oPiBeKAJjSwlI2SwYfKLGCqJSiLkucn5IA+w=;
	b=R7XuWzo1ho6UVcg3iUMTTGzUD/LdmHD5TV9FpDX2RvVfnyMmwXVU8MyRwJZjywNhi1
	mc/lYXV3fNSWCze1AYX6Wp/D9e5eWIFNnwhSKbN8pSu0OAAKb/QOmcJys3xL5V5jy5dE
	l+oyF38pMsKFyCUwStKYeMqC5qbNpqKh1bpGU=
In-Reply-To: <e7bd23c31002212110j52c2526ck830d4392e0f416da@mail.gmail.com>
List-Id: <linux-x11.vger.kernel.org>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/xorg>,
	<mailto:xorg-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/xorg>
List-Post: <mailto:xorg@lists.freedesktop.org>
List-Help: <mailto:xorg-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/xorg>,
	<mailto:xorg-request@lists.freedesktop.org?subject=subscribe>
Mime-version: 1.0
Sender: xorg-bounces@lists.freedesktop.org
Errors-To: xorg-bounces@lists.freedesktop.org
To: Geraldo Netto <geraldonetto@gmail.com>
Cc: linux-x11@vger.kernel.org, xorg-driver-ati@lists.x.org, xorg@lists.freedesktop.org

--===============1762336906==
Content-Type: multipart/alternative; boundary=000e0cd32f16dde9450480297728

--000e0cd32f16dde9450480297728
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

We cannot help with fglrx. Also please don't post walls of text.

Posting from a mobile, pardon my terseness. ~ C.

On Feb 21, 2010 8:47 PM, "Geraldo Netto" <geraldonetto@gmail.com> wrote:

Hi All,

first, sorry for crossposting, but once i didn't know how to
proceed, i'm crossposting xorg-driver-ati@lists.x.org,
xorg@lists.freedesktop.org, linux-x11@vger.kernel.org
also, please, cc me once i'm not subscribed in any of those mailing
lists....

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
_ZN7GpsBase28GPS_AllocateContiguousMemoryEPvyjP15_ULARGE_INTEGERyyy+0xee/0x=
150
[fglrx]
[   17.494149]  [<f880438f>] ?
_ZN10GPSContext22assessInitialResourcesEv+0xcf/0x240 [fglrx]
[   17.494202]  [<f881575a>] ?
_ZN23PageTableGartVmptSysMem4InitEv+0x9a/0x200 [fglrx]
[   17.494256]  [<f8802d15>] ? _ZN10GPSContextC1EP9_GPS_INIT+0x1d5/0x270
[fglrx]
[   17.494308]  [<f88132c6>] ?
_ZN13GartVmptRS78015CreatePageTableEP9GpsConfig+0x46/0x210 [fglrx]
[   17.494361]  [<f88040fd>] ?
_ZN10GPSContext18InitializeAsicGartEv+0x3d/0xe0 [fglrx]
[   17.494416]  [<f87fe339>] ? Gps_GartInitialization+0x29/0x40 [fglrx]
[   17.494457]  [<f8775a13>] ? __gart_init+0x373/0x990 [fglrx]
[   17.494504]  [<f883a8e5>] ? amdPcsEngine_Command+0x145/0x600 [fglrx]
[   17.494549]  [<f87973e8>] ? CAIL_BridgeASPMWorkaround+0x28/0x1d0 [fglrx]
[   17.494590]  [<f8755a0e>] ? KCL_lock_init+0x1e/0x80 [fglrx]
[   17.494631]  [<f8772e54>] ? gal_init+0xd4/0x190 [fglrx]
[   17.494672]  [<f877a22e>] ? mc_heap_init+0x12e/0x280 [fglrx]
[   17.494715]  [<f8782823>] ? hal_get_num_hzmem_pipes+0x23/0xa0 [fglrx]
[   17.494755]  [<f8765345>] ? firegl_init_pcie+0x1b5/0x4f0 [fglrx]
[   17.494795]  [<f876a98b>] ? firegl_cail_query_mc_range+0x7b/0xd0 [fglrx]
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
[   18.400165] [fglrx] Reserved FB block: Unshared offset:fbfa000,
size:401000
[   18.400168] [fglrx] Reserved FB block: Unshared offset:fffb000, size:500=
0

netto@black-dev:~$ uname -a
Linux black-dev 2.6.31-19-generic-pae #56-Ubuntu SMP Thu Jan 28
02:29:51 UTC 2010 i686 GNU/Linux
netto@black-dev:~$ free -m
            total       used       free     shared    buffers     cached
Mem:          7813        618       7194          0         66        285
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
snd_hda_codec_realtek,snd_seq_oss,snd_rawmidi,snd_seq,snd_hda_intel,snd_hda=
_codec,snd_hwdep,snd_pcm_oss,snd_mixer_oss,snd_pcm,snd_seq_device,snd_timer
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
FN_FIREGL_OPEN_RELEASE=3D0,FN_FIREGL_IOCTL, FN_FIREGL_MMAP,
FN_FIREGL_READ_WRITE
FN_FIREGL_FASYNC=3D4,FN_FIREGL_POLL, FN_FIREGL_LSEEK, FN_FIREGL_COMPAT_IOCT=
L
FN_DRM_VM_OPEN_CLOSE=3D8, FN_DRM_NOPAGE, FN_FIREGL_ACPI, FN_FIREGL_IRQ
FN_FIREGL_PROC=3D12, FN_FIREGL_KAS, FN_FIREGL_KCL, FN_FIREGL_INIT
FN_GENERIC1=3D16, FN_GENERIC2, ... FN_GENERIC31
Bit mask for EnableTrace1 are reserved for developer.
echo DebugLevelMask=3D0xXX > /proc/dri/debug  -- Enable debug message
output with different level.
FN_DEBUG_TRACE=3D0, FN_DEBUG_LEVEL1, ... FN_DEBUG_LEVEL7
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
reg00: base=3D0x000000000 (    0MB), size=3D 2048MB, count=3D1: write-back
reg01: base=3D0x080000000 ( 2048MB), size=3D 1024MB, count=3D1: write-back
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
 0:         46          0          0          2   IO-APIC-edge      timer
 1:          0          0          0          2   IO-APIC-edge      i8042
 4:          0          0          0          2   IO-APIC-edge
 7:          1          0          0          0   IO-APIC-edge      parport=
0
 8:          0          0          0          1   IO-APIC-edge      rtc0
 9:          0          0          0          0   IO-APIC-fasteoi   acpi
 12:          0          0          0          4   IO-APIC-edge      i8042
 14:          0          0          4       1807   IO-APIC-edge
 pata_atiixp
 15:          0          0          0          0   IO-APIC-edge
 pata_atiixp
 16:          0          0          0        696   IO-APIC-fasteoi
ohci_hcd:usb3, ohci_hcd:usb4, HDA Intel
 17:          0          0          0          0   IO-APIC-fasteoi
ehci_hcd:usb1
 18:          0          0          1         33   IO-APIC-fasteoi
ohci_hcd:usb5, ohci_hcd:usb6, ohci_hcd:usb7
 19:          0          0          1      20852   IO-APIC-fasteoi
ehci_hcd:usb2, HDA Intel
 21:          0          0          0          0   IO-APIC-fasteoi   eth1
 22:          0          0         12      14242   IO-APIC-fasteoi   ahci
 24:      43478          0          0          0  HPET_MSI-edge      hpet2
 26:          0          0          2       3275   PCI-MSI-edge      eth0
 27:          0          0          0          0   PCI-MSI-edge
fglrx[0]@PCI:1:5:0
NMI:          0          0          0          0   Non-maskable interrupts
LOC:         90      45493      26180      23050   Local timer interrupts
SPU:          0          0          0          0   Spurious interrupts
CNT:          0          0          0          0   Performance counter
interrupts
PND:          0          0          0          0   Performance pending work
RES:      11614       7453       8060       7662   Rescheduling interrupts
CAL:         86         96         83         52   Function call interrupts
TLB:        685        414        779        513   TLB shootdowns
TRM:          0          0          0          0   Thermal event interrupts
THR:          0          0          0          0   Threshold APIC interrupt=
s
MCE:          0          0          0          0   Machine check exceptions
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

Free pages count per migrate type at order       0      1      2
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

# Uncomment the next two lines to enable Spoof protection (reverse-path
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
       Access Method: Indexed I/O, one 16-bit index port, one 8-bit data
port
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
(=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Sun Feb 21 23:55:50 2010
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
(**) Macintosh mouse button emulation: (accel) keeping acceleration scheme =
1
(**) Macintosh mouse button emulation: (accel) filter chain progression:
2.00
(**) Macintosh mouse button emulation: (accel) filter stage 0: 20.00 ms
(**) Macintosh mouse button emulation: (accel) set acceleration profile 0
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
_______________________________________________
xorg mailing list
xorg@lists.freedesktop.org
http://lists.freedesktop.org/mailman/listinfo/xorg

--000e0cd32f16dde9450480297728
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>We cannot help with fglrx. Also please don&#39;t post walls of text.</p>
<p>Posting from a mobile, pardon my terseness. ~ C.</p>
<p><blockquote type=3D"cite">On Feb 21, 2010 8:47 PM, &quot;Geraldo Netto&q=
uot; &lt;<a href=3D"mailto:geraldonetto@gmail.com">geraldonetto@gmail.com</=
a>&gt; wrote:<br><br>Hi All,<br>
<br>
first, sorry for crossposting, but once i didn&#39;t know how to<br>
proceed, i&#39;m crossposting <a href=3D"mailto:xorg-driver-ati@lists.x.org=
">xorg-driver-ati@lists.x.org</a>,<br>
<a href=3D"mailto:xorg@lists.freedesktop.org">xorg@lists.freedesktop.org</a=
>, <a href=3D"mailto:linux-x11@vger.kernel.org">linux-x11@vger.kernel.org</=
a><br>
also, please, cc me once i&#39;m not subscribed in any of those mailing lis=
ts....<br>
<br>
well, while i still can play games like assaultcube, fglrx prints such<br>
a warning...<br>
I thought posting may somehow help to figure out what is happening<br>
possibly someone from ati once its the proprietary driver can help...<br>
ah, apparently openbox performs better than kwin too when running kde<br>
<br>
logs(lots of them):<br>
<br>
dmesg<br>
[ =A0 17.493684] ------------[ cut here ]------------<br>
[ =A0 17.493695] WARNING: at<br>
/build/buildd/linux-2.6.31/mm/page_alloc.c:1751<br>
__alloc_pages_slowpath+0x459/0x480()<br>
[ =A0 17.493698] Hardware name: System Product Name<br>
[ =A0 17.493700] Modules linked in: snd_hda_codec_atihdmi<br>
snd_hda_codec_realtek pl2303 snd_seq_dummy snd_seq_oss snd_seq_midi<br>
snd_rawmidi snd_seq_midi_event snd_seq snd_hda_intel snd_hda_codec<br>
snd_hwdep usbserial snd_pcm_oss asix snd_mixer_oss usbnet snd_pcm<br>
ppdev iptable_filter ip_tables snd_seq_device joydev x_tables usblp<br>
psmouse fglrx(P) serio_raw agpgart snd_timer shpchp parport_pc snd<br>
asus_atk0110 soundcore snd_page_alloc i2c_piix4 lp parport usbhid<br>
8139too 8139cp r8169 mii<br>
[ =A0 17.493737] Pid: 1243, comm: Xorg Tainted: P<br>
2.6.31-19-generic-pae #56-Ubuntu<br>
[ =A0 17.493739] Call Trace:<br>
[ =A0 17.493745] =A0[&lt;c01468ad&gt;] warn_slowpath_common+0x6d/0xa0<br>
[ =A0 17.493749] =A0[&lt;c01ba309&gt;] ? __alloc_pages_slowpath+0x459/0x480=
<br>
[ =A0 17.493752] =A0[&lt;c01ba309&gt;] ? __alloc_pages_slowpath+0x459/0x480=
<br>
[ =A0 17.493756] =A0[&lt;c01468f5&gt;] warn_slowpath_null+0x15/0x20<br>
[ =A0 17.493759] =A0[&lt;c01ba309&gt;] __alloc_pages_slowpath+0x459/0x480<b=
r>
[ =A0 17.493762] =A0[&lt;c01b9d28&gt;] ? get_page_from_freelist+0x1e8/0x370=
<br>
[ =A0 17.493828] =A0[&lt;f87b3e88&gt;] ? IsCrossFireCapable+0x18/0x30 [fglr=
x]<br>
[ =A0 17.493877] =A0[&lt;f87b23d4&gt;] ?<br>
AdjustRequestedMcAddressRangeInfo+0xa4/0xb0 [fglrx]<br>
[ =A0 17.493881] =A0[&lt;c01ba43f&gt;] __alloc_pages_nodemask+0x10f/0x120<b=
r>
[ =A0 17.493884] =A0[&lt;c01ba497&gt;] __get_free_pages+0x17/0x30<br>
[ =A0 17.493920] =A0[&lt;f8751420&gt;]<br>
KCL_MEM_AllocContiguousPageFrames+0x10/0x20 [fglrx]<br>
[ =A0 17.493959] =A0[&lt;f8757f0d&gt;] drm_alloc_pages+0xdd/0x290 [fglrx]<b=
r>
[ =A0 17.494001] =A0[&lt;f876f3e7&gt;] ?<br>
MCIL_AllocateContiguousMemory+0x47/0x100 [fglrx]<br>
[ =A0 17.494041] =A0[&lt;f876fa28&gt;] ? MCIL_ZeroMemory+0x58/0x60 [fglrx]<=
br>
[ =A0 17.494096] =A0[&lt;f88026ce&gt;] ?<br>
_ZN7GpsBase28GPS_AllocateContiguousMemoryEPvyjP15_ULARGE_INTEGERyyy+0xee/0x=
150<br>
[fglrx]<br>
[ =A0 17.494149] =A0[&lt;f880438f&gt;] ?<br>
_ZN10GPSContext22assessInitialResourcesEv+0xcf/0x240 [fglrx]<br>
[ =A0 17.494202] =A0[&lt;f881575a&gt;] ?<br>
_ZN23PageTableGartVmptSysMem4InitEv+0x9a/0x200 [fglrx]<br>
[ =A0 17.494256] =A0[&lt;f8802d15&gt;] ? _ZN10GPSContextC1EP9_GPS_INIT+0x1d=
5/0x270 [fglrx]<br>
[ =A0 17.494308] =A0[&lt;f88132c6&gt;] ?<br>
_ZN13GartVmptRS78015CreatePageTableEP9GpsConfig+0x46/0x210 [fglrx]<br>
[ =A0 17.494361] =A0[&lt;f88040fd&gt;] ?<br>
_ZN10GPSContext18InitializeAsicGartEv+0x3d/0xe0 [fglrx]<br>
[ =A0 17.494416] =A0[&lt;f87fe339&gt;] ? Gps_GartInitialization+0x29/0x40 [=
fglrx]<br>
[ =A0 17.494457] =A0[&lt;f8775a13&gt;] ? __gart_init+0x373/0x990 [fglrx]<br=
>
[ =A0 17.494504] =A0[&lt;f883a8e5&gt;] ? amdPcsEngine_Command+0x145/0x600 [=
fglrx]<br>
[ =A0 17.494549] =A0[&lt;f87973e8&gt;] ? CAIL_BridgeASPMWorkaround+0x28/0x1=
d0 [fglrx]<br>
[ =A0 17.494590] =A0[&lt;f8755a0e&gt;] ? KCL_lock_init+0x1e/0x80 [fglrx]<br=
>
[ =A0 17.494631] =A0[&lt;f8772e54&gt;] ? gal_init+0xd4/0x190 [fglrx]<br>
[ =A0 17.494672] =A0[&lt;f877a22e&gt;] ? mc_heap_init+0x12e/0x280 [fglrx]<b=
r>
[ =A0 17.494715] =A0[&lt;f8782823&gt;] ? hal_get_num_hzmem_pipes+0x23/0xa0 =
[fglrx]<br>
[ =A0 17.494755] =A0[&lt;f8765345&gt;] ? firegl_init_pcie+0x1b5/0x4f0 [fglr=
x]<br>
[ =A0 17.494795] =A0[&lt;f876a98b&gt;] ? firegl_cail_query_mc_range+0x7b/0x=
d0 [fglrx]<br>
[ =A0 17.494801] =A0[&lt;c02cb7c5&gt;] ? security_capable+0x25/0x30<br>
[ =A0 17.494840] =A0[&lt;f8765190&gt;] ? firegl_init_pcie+0x0/0x4f0 [fglrx]=
<br>
[ =A0 17.494844] =A0[&lt;c0150890&gt;] ? capable+0x10/0x40<br>
[ =A0 17.494882] =A0[&lt;f8765190&gt;] ? firegl_init_pcie+0x0/0x4f0 [fglrx]=
<br>
[ =A0 17.494886] =A0[&lt;c0246466&gt;] ? ext3_iget+0xa6/0x390<br>
[ =A0 17.494924] =A0[&lt;f87603bd&gt;] ? firegl_ioctl+0x22d/0x2b0 [fglrx]<b=
r>
[ =A0 17.494928] =A0[&lt;c0246466&gt;] ? ext3_iget+0xa6/0x390<br>
[ =A0 17.494933] =A0[&lt;c0246466&gt;] ? ext3_iget+0xa6/0x390<br>
[ =A0 17.494967] =A0[&lt;f87559b9&gt;] ? ip_firegl_ioctl+0x19/0x20 [fglrx]<=
br>
[ =A0 17.494970] =A0[&lt;c0246466&gt;] ? ext3_iget+0xa6/0x390<br>
[ =A0 17.494974] =A0[&lt;c01f8bc3&gt;] ? vfs_ioctl+0x73/0x90<br>
[ =A0 17.494977] =A0[&lt;c0246466&gt;] ? ext3_iget+0xa6/0x390<br>
[ =A0 17.494980] =A0[&lt;c01f8e91&gt;] ? do_vfs_ioctl+0x71/0x310<br>
[ =A0 17.494985] =A0[&lt;c057929b&gt;] ? do_page_fault+0x19b/0x380<br>
[ =A0 17.494988] =A0[&lt;c01f918f&gt;] ? sys_ioctl+0x5f/0x80<br>
[ =A0 17.494991] =A0[&lt;c0103283&gt;] ? sysenter_do_call+0x12/0x28<br>
[ =A0 17.494994] =A0[&lt;c0246466&gt;] ? ext3_iget+0xa6/0x390<br>
[ =A0 17.494996] ---[ end trace 9a5763d4d0ccf5e0 ]---<br>
[ =A0 17.554451] =A0 alloc irq_desc for 27 on node -1<br>
[ =A0 17.554455] =A0 alloc kstat_irqs on node -1<br>
[ =A0 17.554467] fglrx_pci 0000:01:05.0: irq 27 for MSI/MSI-X<br>
[ =A0 17.557296] [fglrx] Firegl kernel thread PID: 1313<br>
[ =A0 18.400152] [fglrx] Gart USWC size:1279 M.<br>
[ =A0 18.400156] [fglrx] Gart cacheable size:508 M.<br>
[ =A0 18.400162] [fglrx] Reserved FB block: Shared offset:0, size:1000000<b=
r>
[ =A0 18.400165] [fglrx] Reserved FB block: Unshared offset:fbfa000, size:4=
01000<br>
[ =A0 18.400168] [fglrx] Reserved FB block: Unshared offset:fffb000, size:5=
000<br>
<br>
netto@black-dev:~$ uname -a<br>
Linux black-dev 2.6.31-19-generic-pae #56-Ubuntu SMP Thu Jan 28<br>
02:29:51 UTC 2010 i686 GNU/Linux<br>
netto@black-dev:~$ free -m<br>
=A0 =A0 =A0 =A0 =A0 =A0 total =A0 =A0 =A0 used =A0 =A0 =A0 free =A0 =A0 sha=
red =A0 =A0buffers =A0 =A0 cached<br>
Mem: =A0 =A0 =A0 =A0 =A07813 =A0 =A0 =A0 =A0618 =A0 =A0 =A0 7194 =A0 =A0 =
=A0 =A0 =A00 =A0 =A0 =A0 =A0 66 =A0 =A0 =A0 =A0285<br>
-/+ buffers/cache: =A0 =A0 =A0 =A0267 =A0 =A0 =A0 7545<br>
Swap: =A0 =A0 =A0 =A0 2000 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 2000<br>
netto@black-dev:~$ lsmod<br>
Module =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Size =A0Used by<br>
nls_iso8859_1 =A0 =A0 =A0 =A0 =A0 3740 =A01<br>
nls_cp437 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5372 =A01<br>
vfat =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 10716 =A01<br>
fat =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A051452 =A01 vfat<br>
snd_hda_codec_atihdmi =A0 =A0 3356 =A01<br>
snd_hda_codec_realtek =A0 203328 =A01<br>
pl2303 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 17792 =A00<br>
snd_seq_dummy =A0 =A0 =A0 =A0 =A0 2656 =A00<br>
snd_seq_oss =A0 =A0 =A0 =A0 =A0 =A028576 =A00<br>
snd_seq_midi =A0 =A0 =A0 =A0 =A0 =A06432 =A00<br>
snd_rawmidi =A0 =A0 =A0 =A0 =A0 =A022208 =A01 snd_seq_midi<br>
snd_seq_midi_event =A0 =A0 =A06940 =A02 snd_seq_oss,snd_seq_midi<br>
snd_seq =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A050224 =A06<br>
snd_seq_dummy,snd_seq_oss,snd_seq_midi,snd_seq_midi_event<br>
snd_hda_intel =A0 =A0 =A0 =A0 =A026984 =A01<br>
snd_hda_codec =A0 =A0 =A0 =A0 =A075708 =A03<br>
snd_hda_codec_atihdmi,snd_hda_codec_realtek,snd_hda_intel<br>
snd_hwdep =A0 =A0 =A0 =A0 =A0 =A0 =A0 7200 =A01 snd_hda_codec<br>
usbserial =A0 =A0 =A0 =A0 =A0 =A0 =A036264 =A01 pl2303<br>
snd_pcm_oss =A0 =A0 =A0 =A0 =A0 =A037920 =A00<br>
asix =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 14716 =A00<br>
snd_mixer_oss =A0 =A0 =A0 =A0 =A016028 =A01 snd_pcm_oss<br>
usbnet =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 17188 =A01 asix<br>
snd_pcm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A075520 =A03 snd_hda_intel,snd_hda_cod=
ec,snd_pcm_oss<br>
ppdev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 6688 =A00<br>
iptable_filter =A0 =A0 =A0 =A0 =A03100 =A00<br>
ip_tables =A0 =A0 =A0 =A0 =A0 =A0 =A011692 =A01 iptable_filter<br>
snd_seq_device =A0 =A0 =A0 =A0 =A06920 =A05<br>
snd_seq_dummy,snd_seq_oss,snd_seq_midi,snd_rawmidi,snd_seq<br>
joydev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 10240 =A00<br>
x_tables =A0 =A0 =A0 =A0 =A0 =A0 =A0 16544 =A01 ip_tables<br>
usblp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A012636 =A00<br>
psmouse =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A056500 =A00<br>
fglrx =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A01989980 =A028<br>
serio_raw =A0 =A0 =A0 =A0 =A0 =A0 =A0 5280 =A00<br>
agpgart =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A035020 =A01 fglrx<br>
snd_timer =A0 =A0 =A0 =A0 =A0 =A0 =A022276 =A02 snd_seq,snd_pcm<br>
shpchp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 32336 =A00<br>
parport_pc =A0 =A0 =A0 =A0 =A0 =A0 32228 =A01<br>
snd =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A059204 =A014<br>
snd_hda_codec_realtek,snd_seq_oss,snd_rawmidi,snd_seq,snd_hda_intel,snd_hda=
_codec,snd_hwdep,snd_pcm_oss,snd_mixer_oss,snd_pcm,snd_seq_device,snd_timer=
<br>
asus_atk0110 =A0 =A0 =A0 =A0 =A0 =A08252 =A00<br>
soundcore =A0 =A0 =A0 =A0 =A0 =A0 =A0 7264 =A01 snd<br>
snd_page_alloc =A0 =A0 =A0 =A0 =A09252 =A02 snd_hda_intel,snd_pcm<br>
i2c_piix4 =A0 =A0 =A0 =A0 =A0 =A0 =A010124 =A00<br>
lp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08964 =A00<br>
parport =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A035340 =A03 ppdev,parport_pc,lp<br>
usbhid =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 38304 =A00<br>
8139too =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A022716 =A00<br>
8139cp =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 19612 =A00<br>
r8169 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A032384 =A00<br>
mii =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5212 =A05 asix,usbnet,8139too,8=
139cp,r8169<br>
netto@black-dev:/proc/ati$ cat debug<br>
DebugTraceMask=3D0x0, 0x0. DebugLevelMask=3D0x0.<br>
echo DebugTraceMask[0/1]=3D0xXX &gt; /proc/dri/debug =A0-- Enable trace<br>
functions with specified with bitmask.<br>
Bit mask define for EnableTrace0:(bit0-bit31)<br>
FN_FIREGL_OPEN_RELEASE=3D0,FN_FIREGL_IOCTL, FN_FIREGL_MMAP, FN_FIREGL_READ_=
WRITE<br>
FN_FIREGL_FASYNC=3D4,FN_FIREGL_POLL, FN_FIREGL_LSEEK, FN_FIREGL_COMPAT_IOCT=
L<br>
FN_DRM_VM_OPEN_CLOSE=3D8, FN_DRM_NOPAGE, FN_FIREGL_ACPI, FN_FIREGL_IRQ<br>
FN_FIREGL_PROC=3D12, FN_FIREGL_KAS, FN_FIREGL_KCL, FN_FIREGL_INIT<br>
FN_GENERIC1=3D16, FN_GENERIC2, ... FN_GENERIC31<br>
Bit mask for EnableTrace1 are reserved for developer.<br>
echo DebugLevelMask=3D0xXX &gt; /proc/dri/debug =A0-- Enable debug message<=
br>
output with different level.<br>
FN_DEBUG_TRACE=3D0, FN_DEBUG_LEVEL1, ... FN_DEBUG_LEVEL7<br>
n/a<br>
netto@black-dev:/proc/ati/0$ cat biosversion<br>
<br>
BIOS_CREATION_DATE=3D&quot;05/15/08,06:10:42&quot;<br>
BIOS_MSG=3D&quot;B27722 RS780 DDR2 200e/500m<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
BIOS_KIT_VERSION=3D&quot;BK-ATI VER010.092.000.001.000000&quot;<br>
BIOS_PN=3D&quot;&lt;NOT FOUND&gt;&quot;<br>
netto@black-dev:/proc/ati/0$ cat clients<br>
a dev =A0 pid =A0 uid =A0 =A0 =A0magic =A0 =A0 ioctls =A0 =A0context<br>
<br>
y =A0 0 =A01243 =A0 =A0 0 =A0 =A0 =A0 =A0 =A01 =A0 =A0 =A017460 0x00000001<=
br>
netto@black-dev:/proc/ati/0$ cat interrupt_info<br>
Device: PCI:1:5:0<br>
Kernel: 0<br>
AsyncIO: 0<br>
netto@black-dev:/proc/ati/0$ cat lock<br>
lock ([0xf830f000]=3D00000001)<br>
netto@black-dev:/proc/ati/0$ cat mem<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0total counts =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0out=
standing<br>
type =A0 =A0 =A0 =A0 =A0 alloc =A0fail =A0 =A0 =A0bytes | allocs =A0 =A0 =
=A0bytes<br>
system =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 3897610240 | =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00<br>
locked =A0 =A0 =A0 =A0 =A08748 =A0 =A0 0 =A0 39590312 | =A0 8748 =A0 395903=
12<br>
sareas =A0 =A0 =A0 =A0 =A0 =A0 2 =A0 =A0 0 =A0 =A0 =A040960 | =A0 =A0 =A02 =
=A0 =A0 =A040960<br>
driver =A0 =A0 =A0 =A0 33009 =A0 =A0 1 =A0 =A07395226 | =A0 =A0114 =A0 =A04=
106134<br>
magic =A0 =A0 =A0 =A0 =A0 =A0 =A01 =A0 =A0 0 =A0 =A0 =A0 =A0 12 | =A0 =A0 =
=A00 =A0 =A0 =A0 =A0 =A00<br>
maplist =A0 =A0 =A0 =A0 =A0 27 =A0 =A0 0 =A0 =A0 =A0 1620 | =A0 =A0 15 =A0 =
=A0 =A0 =A0900<br>
vmalist =A0 =A0 =A0 =A0 =A0109 =A0 =A0 0 =A0 =A0 =A0 1308 | =A0 =A0 16 =A0 =
=A0 =A0 =A0192<br>
buflist =A0 =A0 =A0 =A0 =A0 15 =A0 =A0 0 =A0 =A0 139108 | =A0 =A0 15 =A0 =
=A0 139108<br>
files =A0 =A0 =A0 =A0 =A0 =A0 =A03 =A0 =A0 0 =A0 =A0 =A0 1536 | =A0 =A0 =A0=
3 =A0 =A0 =A0 1536<br>
contexts =A0 =A0 =A0 =A0 =A0 2 =A0 =A0 0 =A0 =A0 =A0 =A0 24 | =A0 =A0 =A01 =
=A0 =A0 =A0 =A0 16<br>
hwcontext =A0 =A0 =A0 =A0 =A03 =A0 =A0 0 =A0 =A0 =A024576 | =A0 =A0 =A03 =
=A0 =A0 =A024576<br>
netto@black-dev:/proc/ati/0$ cat mem1<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0total counts =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0out=
standing<br>
type =A0 =A0 =A0 =A0 =A0 alloc =A0fail =A0 =A0 =A0bytes | allocs =A0 =A0 =
=A0bytes<br>
mappings =A0 =A0 =A0 =A0 =A0 5 =A0 =A0 0 =A0 =A05382144 | =A0 =A0 =A05 =A0 =
=A05382144<br>
textures =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =A0=
0 =A0 =A0 =A0 =A0 =A00<br>
agplist =A0 =A0 =A0 =A0 =A0 =A00 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =
=A00 =A0 =A0 =A0 =A0 =A00<br>
agpmem =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =
=A00 =A0 =A0 =A0 =A0 =A00<br>
boundagp =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =A0=
0 =A0 =A0 =A0 =A0 =A00<br>
aperture =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =A0=
0 =A0 =A0 =A0 =A0 =A00<br>
dmabufs =A0 =A0 =A0 =A0 =A0 =A00 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =
=A00 =A0 =A0 =A0 =A0 =A00<br>
memlocks =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =A0=
0 =A0 =A0 =A0 =A0 =A00<br>
mutex =A0 =A0 =A0 =A0 =A0 =A0 =A04 =A0 =A0 0 =A0 =A0 =A0 =A0 64 | =A0 =A0 =
=A04 =A0 =A0 =A0 =A0 64<br>
drawables =A0 =A0 =A0 =A0 =A00 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0 =A0=
0 =A0 =A0 =A0 =A0 =A00<br>
mempages =A0 =A0 =A0 =A08721 =A0 =A0 0 =A0 35721216 | =A0 8721 =A0 35721216=
<br>
pcielist =A0 =A0 =A0 =A0 =A010 =A0 =A0 0 =A0 =A0 102572 | =A0 =A0 =A09 =A0 =
=A0 =A069804<br>
pcie =A0 =A0 =A0 =A0 =A0 =A0 =A0 0 =A0 =A0 0 =A0 =A0 =A0 =A0 =A00 | =A0 =A0=
 =A00 =A0 =A0 =A0 =A0 =A00<br>
netto@black-dev:/proc/ati/0$ cat name<br>
fglrx 0xfb00000 PCI:1:5:0<br>
netto@black-dev:/proc/ati/0$ cat vm<br>
offset =A0 =A0 size =A0 =A0 =A0 type flag handle =A0 =A0 mtrr map_count<br>
<br>
0xf830f000 0x2000 =A0SHM 0x20 0xf830f000 none 2<br>
0xd0000000 0x10000000 =A0 FB 0x00 0x00000000 none 0<br>
0xfbdf0000 0x10000 =A0REG 0x00 0xf8720000 none 2<br>
0x1ff000 0x1000 =A0 ?? 0x00 0x00000000 none 1<br>
0x100000 0x700000 =A0 ?? 0x00 0x00000000 none 1<br>
0xc0000000 0x101d000 =A0 ?? 0x00 0x00000000 none 1<br>
0xf897d000 0x8000 =A0SHM 0x40 0xf897d000 none 1<br>
0xc101d000 0x200000 =A0 ?? 0x00 0x00000000 none 1<br>
0x2eb26000 0x1000 =A0CTX 0x01 0xeeb26000 none 0<br>
0xc121d000 0x4000 =A0 ?? 0x00 0x00000000 none 1<br>
0xc1221000 0x4000 =A0 ?? 0x00 0x00000000 none 1<br>
0xc1225000 0x1000 =A0 ?? 0x00 0x00000000 none 1<br>
0xc1226000 0x1000 =A0 ?? 0x00 0x00000000 none 1<br>
0x850000 0x11000 =A0 ?? 0x00 0x00000000 none 1<br>
0x860000 0x401000 =A0 ?? 0x00 0x00000000 none 1<br>
0xc60000 0x401000 =A0 ?? 0x00 0x00000000 none 1<br>
0x32946000 0x1000 =A0CTX 0x01 0xf2946000 none 0<br>
netto@black-dev:/proc$ cat mtrr<br>
reg00: base=3D0x000000000 ( =A0 =A00MB), size=3D 2048MB, count=3D1: write-b=
ack<br>
reg01: base=3D0x080000000 ( 2048MB), size=3D 1024MB, count=3D1: write-back<=
br>
netto@black-dev:/proc$ cat /etc/X11/xorg.conf<br>
Section &quot;ServerLayout&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0 =A0 &quot;Layout[all]&quot;<br>
=A0 =A0 =A0 =A0Screen =A0 =A0 =A00 =A0&quot;aticonfig-Screen[0]-0&quot; 0 0=
<br>
=A0 =A0 =A0 =A0InputDevice =A0 =A0&quot;Keyboard[0]&quot; &quot;CoreKeyboar=
d&quot;<br>
=A0 =A0 =A0 =A0InputDevice =A0 =A0&quot;Mouse[1]&quot; &quot;CorePointer&qu=
ot;<br>
EndSection<br>
<br>
Section &quot;Files&quot;<br>
=A0 =A0 =A0 =A0InputDevices =A0 &quot;/dev/gpmdata&quot;<br>
=A0 =A0 =A0 =A0InputDevices =A0 &quot;/dev/input/mice&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/misc:unscaled&quot;<=
br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/local&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/75dpi:unscaled&quot;=
<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/100dpi:unscaled&quot=
;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/Type1&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/URW&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/Speedo&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/PEX&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/cyrillic&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/latin2/misc:unscaled=
&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/latin2/75dpi:unscale=
d&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/latin2/100dpi:unscal=
ed&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/latin2/Type1&quot;<b=
r>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/latin7/75dpi:unscale=
d&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/baekmuk:unscaled&quo=
t;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/japanese:unscaled&qu=
ot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/kwintv&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/truetype&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/uni:unscaled&quot;<b=
r>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/CID&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/ucs/misc:unscaled&qu=
ot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/ucs/75dpi:unscaled&q=
uot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/ucs/100dpi:unscaled&=
quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/hellas/misc:unscaled=
&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/hellas/75dpi:unscale=
d&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/hellas/100dpi:unscal=
ed&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/hellas/Type1&quot;<b=
r>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/misc/sgi:unscaled&qu=
ot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/usr/share/fonts/xtest&quot;<br>
=A0 =A0 =A0 =A0FontPath =A0 =A0 &quot;/opt/kde3/share/fonts&quot;<br>
EndSection<br>
<br>
Section &quot;Module&quot;<br>
=A0 =A0 =A0 =A0Load =A0&quot;GLcore&quot;<br>
=A0 =A0 =A0 =A0Load =A0&quot;glx&quot;<br>
=A0 =A0 =A0 =A0Load =A0&quot;dri&quot;<br>
EndSection<br>
<br>
Section &quot;ServerFlags&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;AllowMouseOpenFail&quot; &quot;on&qu=
ot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;ZapWarning&quot; &quot;on&quot;<br>
EndSection<br>
<br>
Section &quot;InputDevice&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0&quot;Keyboard[0]&quot;<br>
=A0 =A0 =A0 =A0Driver =A0 =A0 =A0&quot;kbd&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;Protocol&quot; &quot;Standard&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;XkbLayout&quot; &quot;br&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;XkbModel&quot; &quot;pc105&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;XkbRules&quot; &quot;xorg&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;XkbVariant&quot; &quot;abtn2&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;XkbOptions&quot; &quot;lv3:lwin_switch&=
quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;XkbOptions&quot; &quot;terminate:ctrl_a=
lt_bksp&quot;<br>
EndSection<br>
<br>
Section &quot;InputDevice&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0&quot;Mouse[1]&quot;<br>
=A0 =A0 =A0 =A0Driver =A0 =A0 =A0&quot;mouse&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;Buttons&quot; &quot;5&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;Device&quot; &quot;/dev/input/mice&quot=
;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;Name&quot; &quot;ImPS/2 Generic Wheel M=
ouse&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;Protocol&quot; &quot;explorerps/2&quot;=
<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;Vendor&quot; &quot;Sysp&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 &quot;ZAxisMapping&quot; &quot;4 5&quot;<br>
EndSection<br>
<br>
Section &quot;Modes&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0 =A0 &quot;Modes[0]&quot;<br>
EndSection<br>
<br>
Section &quot;Monitor&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0 &quot;Monitor[0]&quot;<br>
=A0 =A0 =A0 =A0VendorName =A0 &quot;LG&quot;<br>
=A0 =A0 =A0 =A0ModelName =A0 =A0&quot;LG&quot;<br>
=A0 =A0 =A0 =A0UseModes =A0 =A0 &quot;Modes[0]&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0 &quot;PreferredMode&quot; &quot;1920x1080=
&quot;<br>
EndSection<br>
<br>
Section &quot;Monitor&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0 &quot;aticonfig-Monitor[0]-0&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;VendorName&quot; &quot;ATI Proprieta=
ry Driver&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;ModelName&quot; &quot;Generic Autode=
tecting Monitor&quot;<br>
EndSection<br>
<br>
Section &quot;Device&quot;<br>
=A0 =A0 =A0 =A0Identifier =A0&quot;aticonfig-Device[0]-0&quot;<br>
=A0 =A0 =A0 =A0Driver =A0 =A0 =A0&quot;fglrx&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;XAANoOffscreenPixmaps&quot; &quot;tr=
ue&quot;<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0 &quot;AGPFastWrite&quot; &quot;true&quot;=
<br>
=A0 =A0 =A0 =A0#Option =A0 =A0 =A0&quot;DynamicClocks&quot; =A0 =A0&quot;tr=
ue&quot;<br>
=A0 =A0 =A0 =A0#Option =A0 =A0 =A0&quot;VideoOverlay&quot; &quot;off&quot;<=
br>
=A0 =A0 =A0 =A0#Option =A0 =A0 =A0&quot;OpenGLOverlay&quot; &quot;off&quot;=
<br>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;TexturedVideo&quot; &quot;on&quot;<b=
r>
=A0 =A0 =A0 =A0Option =A0 =A0 =A0&quot;UseFastTLS&quot; &quot;1&quot;<br>
=A0 =A0 =A0 =A0BusID =A0 =A0 =A0 &quot;PCI:1:5:0&quot;<br>
EndSection<br>
<br>
Section &quot;Screen&quot;<br>
=A0 =A0 =A0 =A0Identifier &quot;Screen[0]&quot;<br>
=A0 =A0 =A0 =A0Device =A0 =A0 &quot;aticonfig-Device[0]-0&quot;<br>
=A0 =A0 =A0 =A0Monitor =A0 =A0&quot;Monitor[0]&quot;<br>
=A0 =A0 =A0 =A0DefaultDepth =A0 =A0 24<br>
=A0 =A0 =A0 =A0SubSection &quot;Display&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depth =A0 =A0 24<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Modes =A0 =A0&quot;1920x1080&quot;<br>
=A0 =A0 =A0 =A0EndSubSection<br>
EndSection<br>
<br>
Section &quot;Screen&quot;<br>
=A0 =A0 =A0 =A0Identifier &quot;aticonfig-Screen[0]-0&quot;<br>
=A0 =A0 =A0 =A0Device =A0 =A0 &quot;aticonfig-Device[0]-0&quot;<br>
=A0 =A0 =A0 =A0Monitor =A0 =A0&quot;aticonfig-Monitor[0]-0&quot;<br>
=A0 =A0 =A0 =A0DefaultDepth =A0 =A0 24<br>
=A0 =A0 =A0 =A0SubSection &quot;Display&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Viewport =A0 0 0<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depth =A0 =A0 24<br>
=A0 =A0 =A0 =A0EndSubSection<br>
EndSection<br>
<br>
Section &quot;DRI&quot;<br>
=A0 =A0 =A0 =A0Group =A0 =A0 =A0 =A0&quot;video&quot;<br>
=A0 =A0 =A0 =A0Mode =A0 =A0 =A0 =A0 0666<br>
EndSection<br>
<br>
Section &quot;Extensions&quot;<br>
=A0 =A0 =A0 =A0Option &quot;XVideo&quot; &quot;Enable&quot;<br>
=A0 =A0 =A0 =A0Option &quot;Composite&quot; &quot;Disable&quot;<br>
EndSection<br>
netto@black-dev:/proc$ cat vmstat<br>
nr_free_pages 1840450<br>
nr_inactive_anon 0<br>
nr_active_anon 49571<br>
nr_inactive_file 74447<br>
nr_active_file 15176<br>
nr_unevictable 0<br>
nr_mlock 0<br>
nr_anon_pages 48610<br>
nr_mapped 21972<br>
nr_file_pages 90584<br>
nr_dirty 13<br>
nr_writeback 0<br>
nr_slab_reclaimable 3692<br>
nr_slab_unreclaimable 2436<br>
nr_page_table_pages 869<br>
nr_unstable 0<br>
nr_bounce 0<br>
nr_vmscan_write 0<br>
nr_writeback_temp 0<br>
pgpgin 427936<br>
pgpgout 11808<br>
pswpin 0<br>
pswpout 0<br>
pgalloc_dma 2<br>
pgalloc_normal 182259<br>
pgalloc_high 579867<br>
pgalloc_movable 0<br>
pgfree 2603452<br>
pgactivate 17904<br>
pgdeactivate 0<br>
pgfault 880572<br>
pgmajfault 1192<br>
pgrefill_dma 0<br>
pgrefill_normal 0<br>
pgrefill_high 0<br>
pgrefill_movable 0<br>
pgsteal_dma 0<br>
pgsteal_normal 0<br>
pgsteal_high 0<br>
pgsteal_movable 0<br>
pgscan_kswapd_dma 0<br>
pgscan_kswapd_normal 0<br>
pgscan_kswapd_high 0<br>
pgscan_kswapd_movable 0<br>
pgscan_direct_dma 0<br>
pgscan_direct_normal 0<br>
pgscan_direct_high 0<br>
pgscan_direct_movable 0<br>
pginodesteal 0<br>
slabs_scanned 0<br>
kswapd_steal 0<br>
kswapd_inodesteal 0<br>
pageoutrun 0<br>
allocstall 0<br>
pgrotated 0<br>
htlb_buddy_alloc_success 0<br>
htlb_buddy_alloc_fail 0<br>
unevictable_pgs_culled 0<br>
unevictable_pgs_scanned 0<br>
unevictable_pgs_rescued 0<br>
unevictable_pgs_mlocked 0<br>
unevictable_pgs_munlocked 0<br>
unevictable_pgs_cleared 0<br>
unevictable_pgs_stranded 0<br>
unevictable_pgs_mlockfreed 0<br>
netto@black-dev:/proc$ cat buddyinfo<br>
Node 0, zone =A0 =A0 =A0DMA =A0 =A0 =A04 =A0 =A0 =A06 =A0 =A0 =A04 =A0 =A0 =
=A05 =A0 =A0 =A03 =A0 =A0 =A03 =A0 =A0 =A04<br>
=A0 =A0 1 =A0 =A0 =A02 =A0 =A0 =A02 =A0 =A0 =A00<br>
Node 0, zone =A0 Normal =A0 =A0 =A03 =A0 =A0 =A02 =A0 =A0 12 =A0 =A0 =A07 =
=A0 =A0 25 =A0 =A0 28 =A0 =A0 20<br>
=A0 =A014 =A0 =A0 =A09 =A0 =A0 =A07 =A0 =A0154<br>
Node 0, zone =A0HighMem =A0 =A0 91 =A0 =A0 76 =A0 =A0 16 =A0 =A0 =A07 =A0 =
=A0 =A04 =A0 =A0 =A04 =A0 =A0 =A06<br>
=A0 =A0 3 =A0 =A0 =A01 =A0 =A0 =A01 =A0 1629<br>
netto@black-dev:/proc$ cat cpuinfo<br>
processor =A0 =A0 =A0 : 0<br>
vendor_id =A0 =A0 =A0 : AuthenticAMD<br>
cpu family =A0 =A0 =A0: 16<br>
model =A0 =A0 =A0 =A0 =A0 : 2<br>
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor<br>
stepping =A0 =A0 =A0 =A0: 2<br>
cpu MHz =A0 =A0 =A0 =A0 : 2200.000<br>
cache size =A0 =A0 =A0: 512 KB<br>
physical id =A0 =A0 : 0<br>
siblings =A0 =A0 =A0 =A0: 4<br>
core id =A0 =A0 =A0 =A0 : 0<br>
cpu cores =A0 =A0 =A0 : 4<br>
apicid =A0 =A0 =A0 =A0 =A0: 0<br>
initial apicid =A0: 0<br>
fdiv_bug =A0 =A0 =A0 =A0: no<br>
hlt_bug =A0 =A0 =A0 =A0 : no<br>
f00f_bug =A0 =A0 =A0 =A0: no<br>
coma_bug =A0 =A0 =A0 =A0: no<br>
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes<br>
fpu_exception =A0 : yes<br>
cpuid level =A0 =A0 : 5<br>
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes<br>
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep mtr=
r pge<br>
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext<br>
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc<br>
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic<br>
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs<br>
bogomips =A0 =A0 =A0 =A0: 4413.24<br>
clflush size =A0 =A0: 64<br>
power management: ts ttp tm stc 100mhzsteps hwpstate<br>
<br>
processor =A0 =A0 =A0 : 1<br>
vendor_id =A0 =A0 =A0 : AuthenticAMD<br>
cpu family =A0 =A0 =A0: 16<br>
model =A0 =A0 =A0 =A0 =A0 : 2<br>
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor<br>
stepping =A0 =A0 =A0 =A0: 2<br>
cpu MHz =A0 =A0 =A0 =A0 : 2200.000<br>
cache size =A0 =A0 =A0: 512 KB<br>
physical id =A0 =A0 : 0<br>
siblings =A0 =A0 =A0 =A0: 4<br>
core id =A0 =A0 =A0 =A0 : 1<br>
cpu cores =A0 =A0 =A0 : 4<br>
apicid =A0 =A0 =A0 =A0 =A0: 1<br>
initial apicid =A0: 1<br>
fdiv_bug =A0 =A0 =A0 =A0: no<br>
hlt_bug =A0 =A0 =A0 =A0 : no<br>
f00f_bug =A0 =A0 =A0 =A0: no<br>
coma_bug =A0 =A0 =A0 =A0: no<br>
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes<br>
fpu_exception =A0 : yes<br>
cpuid level =A0 =A0 : 5<br>
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes<br>
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep mtr=
r pge<br>
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext<br>
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc<br>
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic<br>
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs<br>
bogomips =A0 =A0 =A0 =A0: 4412.96<br>
clflush size =A0 =A0: 64<br>
power management: ts ttp tm stc 100mhzsteps hwpstate<br>
<br>
processor =A0 =A0 =A0 : 2<br>
vendor_id =A0 =A0 =A0 : AuthenticAMD<br>
cpu family =A0 =A0 =A0: 16<br>
model =A0 =A0 =A0 =A0 =A0 : 2<br>
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor<br>
stepping =A0 =A0 =A0 =A0: 2<br>
cpu MHz =A0 =A0 =A0 =A0 : 2200.000<br>
cache size =A0 =A0 =A0: 512 KB<br>
physical id =A0 =A0 : 0<br>
siblings =A0 =A0 =A0 =A0: 4<br>
core id =A0 =A0 =A0 =A0 : 2<br>
cpu cores =A0 =A0 =A0 : 4<br>
apicid =A0 =A0 =A0 =A0 =A0: 2<br>
initial apicid =A0: 2<br>
fdiv_bug =A0 =A0 =A0 =A0: no<br>
hlt_bug =A0 =A0 =A0 =A0 : no<br>
f00f_bug =A0 =A0 =A0 =A0: no<br>
coma_bug =A0 =A0 =A0 =A0: no<br>
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes<br>
fpu_exception =A0 : yes<br>
cpuid level =A0 =A0 : 5<br>
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes<br>
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep mtr=
r pge<br>
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext<br>
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc<br>
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic<br>
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs<br>
bogomips =A0 =A0 =A0 =A0: 4412.62<br>
clflush size =A0 =A0: 64<br>
power management: ts ttp tm stc 100mhzsteps hwpstate<br>
<br>
processor =A0 =A0 =A0 : 3<br>
vendor_id =A0 =A0 =A0 : AuthenticAMD<br>
cpu family =A0 =A0 =A0: 16<br>
model =A0 =A0 =A0 =A0 =A0 : 2<br>
model name =A0 =A0 =A0: AMD Phenom(tm) 9500 Quad-Core Processor<br>
stepping =A0 =A0 =A0 =A0: 2<br>
cpu MHz =A0 =A0 =A0 =A0 : 2200.000<br>
cache size =A0 =A0 =A0: 512 KB<br>
physical id =A0 =A0 : 0<br>
siblings =A0 =A0 =A0 =A0: 4<br>
core id =A0 =A0 =A0 =A0 : 3<br>
cpu cores =A0 =A0 =A0 : 4<br>
apicid =A0 =A0 =A0 =A0 =A0: 3<br>
initial apicid =A0: 3<br>
fdiv_bug =A0 =A0 =A0 =A0: no<br>
hlt_bug =A0 =A0 =A0 =A0 : no<br>
f00f_bug =A0 =A0 =A0 =A0: no<br>
coma_bug =A0 =A0 =A0 =A0: no<br>
fpu =A0 =A0 =A0 =A0 =A0 =A0 : yes<br>
fpu_exception =A0 : yes<br>
cpuid level =A0 =A0 : 5<br>
wp =A0 =A0 =A0 =A0 =A0 =A0 =A0: yes<br>
flags =A0 =A0 =A0 =A0 =A0 : fpu vme de pse tsc msr pae mce cx8 apic sep mtr=
r pge<br>
mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext<br>
fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc<br>
extd_apicid pni monitor cx16 popcnt lahf_lm cmp_legacy svm extapic<br>
cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs<br>
bogomips =A0 =A0 =A0 =A0: 4412.62<br>
clflush size =A0 =A0: 64<br>
power management: ts ttp tm stc 100mhzsteps hwpstate<br>
netto@black-dev:/proc$ cat interrupts<br>
=A0 =A0 =A0 =A0 =A0 CPU0 =A0 =A0 =A0 CPU1 =A0 =A0 =A0 CPU2 =A0 =A0 =A0 CPU3=
<br>
=A00: =A0 =A0 =A0 =A0 46 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =
=A0 =A0 =A02 =A0 IO-APIC-edge =A0 =A0 =A0timer<br>
=A01: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A02 =A0 IO-APIC-edge =A0 =A0 =A0i8042<br>
=A04: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A02 =A0 IO-APIC-edge<br>
=A07: =A0 =A0 =A0 =A0 =A01 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00 =A0 IO-APIC-edge =A0 =A0 =A0parport0<br>
=A08: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A01 =A0 IO-APIC-edge =A0 =A0 =A0rtc0<br>
=A09: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00 =A0 IO-APIC-fasteoi =A0 acpi<br>
=A012: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A04 =A0 IO-APIC-edge =A0 =A0 =A0i8042<br>
=A014: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A04 =A0 =
=A0 =A0 1807 =A0 IO-APIC-edge =A0 =A0 =A0pata_atiixp<br>
=A015: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00 =A0 IO-APIC-edge =A0 =A0 =A0pata_atiixp<br>
=A016: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0696 =A0 IO-APIC-fasteoi<br>
ohci_hcd:usb3, ohci_hcd:usb4, HDA Intel<br>
=A017: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00 =A0 IO-APIC-fasteoi<br>
ehci_hcd:usb1<br>
=A018: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A01 =A0 =
=A0 =A0 =A0 33 =A0 IO-APIC-fasteoi<br>
ohci_hcd:usb5, ohci_hcd:usb6, ohci_hcd:usb7<br>
=A019: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A01 =A0 =
=A0 =A020852 =A0 IO-APIC-fasteoi<br>
ehci_hcd:usb2, HDA Intel<br>
=A021: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00 =A0 IO-APIC-fasteoi =A0 eth1<br>
=A022: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 12 =A0 =A0=
 =A014242 =A0 IO-APIC-fasteoi =A0 ahci<br>
=A024: =A0 =A0 =A043478 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =
=A0 =A0 =A00 =A0HPET_MSI-edge =A0 =A0 =A0hpet2<br>
=A026: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A02 =A0 =
=A0 =A0 3275 =A0 PCI-MSI-edge =A0 =A0 =A0eth0<br>
=A027: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =
=A0 =A0 =A0 =A00 =A0 PCI-MSI-edge<br>
fglrx[0]@PCI:1:5:0<br>
NMI: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Non-maskable interrupts<br>
LOC: =A0 =A0 =A0 =A0 90 =A0 =A0 =A045493 =A0 =A0 =A026180 =A0 =A0 =A023050 =
=A0 Local timer interrupts<br>
SPU: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Spurious interrupts<br>
CNT: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Performance counter<br>
interrupts<br>
PND: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Performance pending work<br>
RES: =A0 =A0 =A011614 =A0 =A0 =A0 7453 =A0 =A0 =A0 8060 =A0 =A0 =A0 7662 =
=A0 Rescheduling interrupts<br>
CAL: =A0 =A0 =A0 =A0 86 =A0 =A0 =A0 =A0 96 =A0 =A0 =A0 =A0 83 =A0 =A0 =A0 =
=A0 52 =A0 Function call interrupts<br>
TLB: =A0 =A0 =A0 =A0685 =A0 =A0 =A0 =A0414 =A0 =A0 =A0 =A0779 =A0 =A0 =A0 =
=A0513 =A0 TLB shootdowns<br>
TRM: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Thermal event interrupts<br>
THR: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Threshold APIC interrupts<br>
MCE: =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0 =A0 =A0 =A00 =A0 =A0=
 =A0 =A0 =A00 =A0 Machine check exceptions<br>
MCP: =A0 =A0 =A0 =A0 =A02 =A0 =A0 =A0 =A0 =A02 =A0 =A0 =A0 =A0 =A02 =A0 =A0=
 =A0 =A0 =A02 =A0 Machine check polls<br>
ERR: =A0 =A0 =A0 =A0 =A05<br>
MIS: =A0 =A0 =A0 =A0 =A00<br>
netto@black-dev:/proc$ cat iomem<br>
00000000-0000ffff : reserved<br>
00010000-0009ebff : System RAM<br>
0009ec00-0009ffff : reserved<br>
000a0000-000bffff : Video RAM area<br>
000c0000-000ce9ff : Video ROM<br>
000e4000-000fffff : reserved<br>
=A0000f0000-000fffff : System ROM<br>
00100000-bff7ffff : System RAM<br>
=A000100000-0057ba97 : Kernel code<br>
=A00057ba98-007947e7 : Kernel data<br>
=A000822000-008ad99f : Kernel bss<br>
bff80000-bff97fff : ACPI Tables<br>
bff98000-bffcffff : ACPI Non-volatile Storage<br>
bffd0000-bfffffff : reserved<br>
c0000000-cfffffff : pnp 00:01<br>
d0000000-dfffffff : PCI Bus 0000:01<br>
=A0d0000000-dfffffff : 0000:01:05.0<br>
e0000000-efffffff : PCI MMCONFIG 0 [00-ff]<br>
=A0e0000000-efffffff : pnp 00:0c<br>
fbbf4000-fbbf7fff : 0000:00:14.2<br>
=A0fbbf4000-fbbf7fff : ICH HD audio<br>
fbbfa000-fbbfafff : 0000:00:14.5<br>
=A0fbbfa000-fbbfafff : ohci_hcd<br>
fbbfb000-fbbfbfff : 0000:00:13.1<br>
=A0fbbfb000-fbbfbfff : ohci_hcd<br>
fbbfc000-fbbfcfff : 0000:00:13.0<br>
=A0fbbfc000-fbbfcfff : ohci_hcd<br>
fbbfd000-fbbfdfff : 0000:00:12.1<br>
=A0fbbfd000-fbbfdfff : ohci_hcd<br>
fbbfe000-fbbfefff : 0000:00:12.0<br>
=A0fbbfe000-fbbfefff : ohci_hcd<br>
fbbff400-fbbff4ff : 0000:00:13.2<br>
=A0fbbff400-fbbff4ff : ehci_hcd<br>
fbbff800-fbbff8ff : 0000:00:12.2<br>
=A0fbbff800-fbbff8ff : ehci_hcd<br>
fbbffc00-fbbfffff : 0000:00:11.0<br>
=A0fbbffc00-fbbfffff : ahci<br>
fbc00000-fbdfffff : PCI Bus 0000:01<br>
=A0fbc00000-fbcfffff : 0000:01:05.0<br>
=A0fbde8000-fbdebfff : 0000:01:05.1<br>
=A0 =A0fbde8000-fbdebfff : ICH HD audio<br>
=A0fbdf0000-fbdfffff : 0000:01:05.0<br>
fbe00000-fbefffff : PCI Bus 0000:02<br>
=A0fbec0000-fbedffff : 0000:02:00.0<br>
=A0fbeff000-fbefffff : 0000:02:00.0<br>
=A0 =A0fbeff000-fbefffff : r8169<br>
fbf00000-fbffffff : PCI Bus 0000:03<br>
=A0fbfffc00-fbfffcff : 0000:03:07.0<br>
=A0 =A0fbfffc00-fbfffcff : 8139too<br>
fec00000-fec00fff : IOAPIC 0<br>
fec10000-fec1001f : pnp 00:0a<br>
fed00000-fed003ff : HPET 2<br>
fed40000-fed44fff : pnp 00:0a<br>
fee00000-fee00fff : Local APIC<br>
=A0fee00000-fee00fff : pnp 00:09<br>
ff700000-ffffffff : reserved<br>
=A0ffb80000-ffbfffff : pnp 00:0a<br>
100000000-22fffffff : System RAM<br>
netto@black-dev:/proc$ cat ioports<br>
0000-001f : dma1<br>
0020-0021 : pic1<br>
0040-0043 : timer0<br>
0050-0053 : timer1<br>
0060-0060 : keyboard<br>
0064-0064 : keyboard<br>
0070-0071 : rtc0<br>
0080-008f : dma page reg<br>
00a0-00a1 : pic2<br>
00c0-00df : dma2<br>
00f0-00ff : fpu<br>
0170-0177 : 0000:00:14.1<br>
=A00170-0177 : pata_atiixp<br>
01f0-01f7 : 0000:00:14.1<br>
=A001f0-01f7 : pata_atiixp<br>
0230-023f : pnp 00:0b<br>
0290-029f : pnp 00:0b<br>
0300-030f : pnp 00:0b<br>
0376-0376 : 0000:00:14.1<br>
=A00376-0376 : pata_atiixp<br>
0378-037a : parport0<br>
03c0-03df : vga+<br>
03f6-03f6 : 0000:00:14.1<br>
=A003f6-03f6 : pata_atiixp<br>
03f8-03ff : serial<br>
040b-040b : pnp 00:0a<br>
04d0-04d1 : pnp 00:0a<br>
04d6-04d6 : pnp 00:0a<br>
0800-089f : pnp 00:0a<br>
=A00800-0803 : ACPI PM1a_EVT_BLK<br>
=A00804-0805 : ACPI PM1a_CNT_BLK<br>
=A00808-080b : ACPI PM_TMR<br>
=A00810-0815 : ACPI CPU throttle<br>
=A00820-0827 : ACPI GPE0_BLK<br>
08ff-08ff : ACPI PM2_CNT_BLK<br>
0900-090f : pnp 00:0a<br>
0910-091f : pnp 00:0a<br>
0a30-0a3f : pnp 00:0b<br>
0b00-0b3f : pnp 00:0a<br>
=A00b20-0b3f : pnp 00:0a<br>
0c00-0c01 : pnp 00:0a<br>
0c14-0c14 : pnp 00:0a<br>
0c50-0c51 : pnp 00:0a<br>
0c52-0c52 : pnp 00:0a<br>
0c6c-0c6c : pnp 00:0a<br>
0c6f-0c6f : pnp 00:0a<br>
0cd0-0cd1 : pnp 00:0a<br>
0cd2-0cd3 : pnp 00:0a<br>
0cd4-0cd5 : pnp 00:0a<br>
0cd6-0cd7 : pnp 00:0a<br>
0cd8-0cdf : pnp 00:0a<br>
0cf8-0cff : PCI conf1<br>
7000-700f : 0000:00:11.0<br>
=A07000-700f : ahci<br>
8000-8003 : 0000:00:11.0<br>
=A08000-8003 : ahci<br>
9000-9007 : 0000:00:11.0<br>
=A09000-9007 : ahci<br>
a000-a003 : 0000:00:11.0<br>
=A0a000-a003 : ahci<br>
b000-b007 : 0000:00:11.0<br>
=A0b000-b007 : ahci<br>
c000-cfff : PCI Bus 0000:01<br>
=A0c000-c0ff : 0000:01:05.0<br>
d000-dfff : PCI Bus 0000:02<br>
=A0d800-d8ff : 0000:02:00.0<br>
=A0 =A0d800-d8ff : r8169<br>
e000-efff : PCI Bus 0000:03<br>
=A0e800-e8ff : 0000:03:07.0<br>
=A0 =A0e800-e8ff : 8139too<br>
fe00-fefe : pnp 00:0a<br>
ff00-ff0f : 0000:00:14.1<br>
=A0ff00-ff0f : pata_atiixp<br>
netto@black-dev:/proc$ cat pagetypeinfo<br>
Page block order: 9<br>
Pages per block: =A0512<br>
<br>
Free pages count per migrate type at order =A0 =A0 =A0 0 =A0 =A0 =A01 =A0 =
=A0 =A02<br>
3 =A0 =A0 =A04 =A0 =A0 =A05 =A0 =A0 =A06 =A0 =A0 =A07 =A0 =A0 =A08 =A0 =A0 =
=A09 =A0 =A0 10<br>
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0Unmovable =A0 =A0 =A00 =A0 =
=A0 =A01 =A0 =A0 =A01<br>
1 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =
=A01 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0Reclaimable =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0 =A0Movable =A0 =A0 =A04 =
=A0 =A0 =A05 =A0 =A0 =A03<br>
4 =A0 =A0 =A02 =A0 =A0 =A02 =A0 =A0 =A03 =A0 =A0 =A00 =A0 =A0 =A01 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0 =A0Reserve =A0 =A0 =A00 =
=A0 =A0 =A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A01 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 =A0 =A0DMA, type =A0 =A0 =A0Isolate =A0 =A0 =A00 =
=A0 =A0 =A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 Normal, type =A0 =A0Unmovable =A0 =A0 =A01 =A0 =A0 =
=A02 =A0 =A0 11<br>
6 =A0 =A0 =A03 =A0 =A0 =A05 =A0 =A0 10 =A0 =A0 =A07 =A0 =A0 =A03 =A0 =A0 =
=A02 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 Normal, type =A0Reclaimable =A0 =A0 =A01 =A0 =A0 =
=A01 =A0 =A0 =A01<br>
0 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A00 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =
=A01 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0 Normal, type =A0 =A0 =A0Movable =A0 =A0 =A01 =A0 =
=A0 =A00 =A0 =A0 =A01<br>
1 =A0 =A0 21 =A0 =A0 22 =A0 =A0 10 =A0 =A0 =A06 =A0 =A0 =A05 =A0 =A0 =A04 =
=A0 =A0153<br>
Node =A0 =A00, zone =A0 Normal, type =A0 =A0 =A0Reserve =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A01<br>
Node =A0 =A00, zone =A0 Normal, type =A0 =A0 =A0Isolate =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0HighMem, type =A0 =A0Unmovable =A0 =A0 27 =A0 =A0 =
=A02 =A0 =A0 =A04<br>
3 =A0 =A0 =A00 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A01 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0HighMem, type =A0Reclaimable =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0HighMem, type =A0 =A0 =A0Movable =A0 =A0121 =A0 =A0 =
96 =A0 =A0 29<br>
14 =A0 =A0 10 =A0 =A0 =A05 =A0 =A0 =A04 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 1629<br>
Node =A0 =A00, zone =A0HighMem, type =A0 =A0 =A0Reserve =A0 =A0 =A00 =A0 =
=A0 =A02 =A0 =A0 =A01<br>
1 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =A01 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
Node =A0 =A00, zone =A0HighMem, type =A0 =A0 =A0Isolate =A0 =A0 =A00 =A0 =
=A0 =A00 =A0 =A0 =A00<br>
0 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =A00 =A0 =A0 =
=A00 =A0 =A0 =A00<br>
<br>
Number of blocks type =A0 =A0 Unmovable =A0Reclaimable =A0 =A0 =A0Movable<b=
r>
Reserve =A0 =A0 =A0Isolate<br>
Node 0, zone =A0 =A0 =A0DMA =A0 =A0 =A0 =A0 =A0 =A01 =A0 =A0 =A0 =A0 =A0 =
=A00 =A0 =A0 =A0 =A0 =A0 =A06<br>
=A01 =A0 =A0 =A0 =A0 =A0 =A00<br>
Node 0, zone =A0 Normal =A0 =A0 =A0 =A0 =A0 31 =A0 =A0 =A0 =A0 =A0 =A06 =A0=
 =A0 =A0 =A0 =A0398<br>
=A02 =A0 =A0 =A0 =A0 =A0 =A00<br>
Node 0, zone =A0HighMem =A0 =A0 =A0 =A0 =A0 16 =A0 =A0 =A0 =A0 =A0 =A00 =A0=
 =A0 =A0 =A0 4019<br>
=A01 =A0 =A0 =A0 =A0 =A0 =A00<br>
netto@black-dev:/proc$ cat /etc/sysctl.conf<br>
#<br>
# /etc/sysctl.conf - Configuration file for setting system variables<br>
# See /etc/sysctl.d/ for additional system variables.<br>
# See sysctl.conf (5) for information.<br>
#<br>
<br>
#kernel.domainname =3D <a href=3D"http://example.com" target=3D"_blank">exa=
mple.com</a><br>
<br>
# Uncomment the following to stop low-level messages on console<br>
#kernel.printk =3D 4 4 1 7<br>
<br>
##############################################################3<br>
# Functions previously found in netbase<br>
#<br>
<br>
# Uncomment the next two lines to enable Spoof protection (reverse-path fil=
ter)<br>
# Turn on Source Address Verification in all interfaces to<br>
# prevent some spoofing attacks<br>
#net.ipv4.conf.default.rp_filter=3D1<br>
#net.ipv4.conf.all.rp_filter=3D1<br>
<br>
# Uncomment the next line to enable TCP/IP SYN cookies<br>
# This disables TCP Window Scaling (<a href=3D"http://lkml.org/lkml/2008/2/=
5/167" target=3D"_blank">http://lkml.org/lkml/2008/2/5/167</a>),<br>
# and is not recommended.<br>
#net.ipv4.tcp_syncookies=3D1<br>
<br>
# Uncomment the next line to enable packet forwarding for IPv4<br>
net.ipv4.ip_forward=3D1<br>
<br>
# Uncomment the next line to enable packet forwarding for IPv6<br>
#net.ipv6.conf.all.forwarding=3D1<br>
<br>
<br>
###################################################################<br>
# Additional settings - these settings can improve the network<br>
# security of the host and prevent against some network attacks<br>
# including spoofing attacks and man in the middle attacks through<br>
# redirection. Some network environments, however, require that these<br>
# settings are disabled so review and enable them as needed.<br>
#<br>
# Ignore ICMP broadcasts<br>
net.ipv4.icmp_echo_ignore_broadcasts =3D 0<br>
#<br>
# Ignore bogus ICMP errors<br>
#net.ipv4.icmp_ignore_bogus_error_responses =3D 0<br>
#<br>
# Do not accept ICMP redirects (prevent MITM attacks)<br>
#net.ipv4.conf.all.accept_redirects =3D 0<br>
#net.ipv6.conf.all.accept_redirects =3D 0<br>
# _or_<br>
# Accept ICMP redirects only for gateways listed in our default<br>
# gateway list (enabled by default)<br>
# net.ipv4.conf.all.secure_redirects =3D 1<br>
#<br>
# Do not send ICMP redirects (we are not a router)<br>
net.ipv4.conf.all.send_redirects =3D 1<br>
#<br>
# Do not accept IP source route packets (we are not a router)<br>
net.ipv4.conf.all.accept_source_route =3D 1<br>
#net.ipv6.conf.all.accept_source_route =3D 0<br>
#<br>
# Log Martian Packets<br>
#net.ipv4.conf.all.log_martians =3D 1<br>
#<br>
# The contents of /proc/&lt;pid&gt;/maps and smaps files are only visible t=
o<br>
# readers that are allowed to ptrace() the process<br>
# kernel.maps_protect =3D 1<br>
<br>
# If active, enables the magic-sysrq key (alt+sysRq)<br>
kernel.sysrq =3D 1<br>
<br>
# If you are feeling daring, you can also use these settings below,<br>
otherwise just remove them. (Should increase performance)<br>
net.core.netdev_max_backlog =3D 2500<br>
net.ipv4.tcp_tw_recycle =3D 1<br>
net.ipv4.tcp_tw_reuse =3D 1<br>
<br>
# Improve file system performance<br>
vm.bdflush =3D 100 1200 128 512 15 5000 500 1884 2<br>
# This will increase the amount of memory available for socket<br>
input/output queues<br>
net.ipv4.tcp_rmem =3D 4096 25165824 25165824<br>
net.core.rmem_max =3D 25165824<br>
net.core.rmem_default =3D 25165824<br>
net.ipv4.tcp_wmem =3D 4096 65536 25165824<br>
net.core.wmem_max =3D 25165824<br>
net.core.wmem_default =3D 65536<br>
net.core.optmem_max =3D 25165824<br>
netto@black-dev:/proc/bus$ sudo dmidecode<br>
[sudo] password for netto:<br>
# dmidecode 2.9<br>
SMBIOS 2.5 present.<br>
70 structures occupying 2407 bytes.<br>
Table at 0x0009F000.<br>
<br>
Handle 0x0000, DMI type 0, 24 bytes<br>
BIOS Information<br>
=A0 =A0 =A0 =A0Vendor: American Megatrends Inc.<br>
=A0 =A0 =A0 =A0Version: 0701<br>
=A0 =A0 =A0 =A0Release Date: 04/09/2009<br>
=A0 =A0 =A0 =A0Address: 0xF0000<br>
=A0 =A0 =A0 =A0Runtime Size: 64 kB<br>
=A0 =A0 =A0 =A0ROM Size: 1024 kB<br>
=A0 =A0 =A0 =A0Characteristics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ISA is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PCI is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PNP is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0APM is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS is upgradeable<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS shadowing is allowed<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ESCD support is available<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Boot from CD is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Selectable boot is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS ROM is socketed<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0EDD is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A05.25&quot;/1.2 MB floppy services are suppor=
ted (int 13h)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.5&quot;/720 KB floppy services are support=
ed (int 13h)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.5&quot;/2.88 MB floppy services are suppor=
ted (int 13h)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Print screen service is supported (int 5h)<b=
r>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08042 keyboard services are supported (int 9h=
)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Serial services are supported (int 14h)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Printer services are supported (int 17h)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0CGA/mono video services are supported (int 1=
0h)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ACPI is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0USB legacy is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0LS-120 boot is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ATAPI Zip drive boot is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BIOS boot specification is supported<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Targeted content distribution is supported<b=
r>
=A0 =A0 =A0 =A0BIOS Revision: 8.15<br>
<br>
Handle 0x0001, DMI type 1, 27 bytes<br>
System Information<br>
=A0 =A0 =A0 =A0Manufacturer: System manufacturer<br>
=A0 =A0 =A0 =A0Product Name: System Product Name<br>
=A0 =A0 =A0 =A0Version: System Version<br>
=A0 =A0 =A0 =A0Serial Number: System Serial Number<br>
=A0 =A0 =A0 =A0UUID: 00F4F00C-AF3D-DE11-96F3-002618055F09<br>
=A0 =A0 =A0 =A0Wake-up Type: Power Switch<br>
=A0 =A0 =A0 =A0SKU Number: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0Family: To Be Filled By O.E.M.<br>
<br>
Handle 0x0002, DMI type 2, 15 bytes<br>
Base Board Information<br>
=A0 =A0 =A0 =A0Manufacturer: ASUSTeK Computer INC.<br>
=A0 =A0 =A0 =A0Product Name: M4A78-EM<br>
=A0 =A0 =A0 =A0Version: Rev X.0x<br>
=A0 =A0 =A0 =A0Serial Number: MS1C96B05901908<br>
=A0 =A0 =A0 =A0Asset Tag: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0Features:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Board is a hosting board<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Board is replaceable<br>
=A0 =A0 =A0 =A0Location In Chassis: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0Chassis Handle: 0x0003<br>
=A0 =A0 =A0 =A0Type: Motherboard<br>
=A0 =A0 =A0 =A0Contained Object Handles: 0<br>
<br>
Handle 0x0003, DMI type 3, 21 bytes<br>
Chassis Information<br>
=A0 =A0 =A0 =A0Manufacturer: Chassis Manufacture<br>
=A0 =A0 =A0 =A0Type: Desktop<br>
=A0 =A0 =A0 =A0Lock: Not Present<br>
=A0 =A0 =A0 =A0Version: Chassis Version<br>
=A0 =A0 =A0 =A0Serial Number: Chassis Serial Number<br>
=A0 =A0 =A0 =A0Asset Tag: Asset-1234567890<br>
=A0 =A0 =A0 =A0Boot-up State: Safe<br>
=A0 =A0 =A0 =A0Power Supply State: Safe<br>
=A0 =A0 =A0 =A0Thermal State: Safe<br>
=A0 =A0 =A0 =A0Security Status: None<br>
=A0 =A0 =A0 =A0OEM Information: 0x00000001<br>
=A0 =A0 =A0 =A0Height: Unspecified<br>
=A0 =A0 =A0 =A0Number Of Power Cords: 1<br>
=A0 =A0 =A0 =A0Contained Elements: 0<br>
<br>
Handle 0x0004, DMI type 4, 40 bytes<br>
Processor Information<br>
=A0 =A0 =A0 =A0Socket Designation: AM2<br>
=A0 =A0 =A0 =A0Type: Central Processor<br>
=A0 =A0 =A0 =A0Family: &lt;OUT OF SPEC&gt;<br>
=A0 =A0 =A0 =A0Manufacturer: AMD<br>
=A0 =A0 =A0 =A0ID: 22 0F 10 00 FF FB 8B 17<br>
=A0 =A0 =A0 =A0Version: AMD Phenom(tm) 9500 Quad-Core Processor<br>
=A0 =A0 =A0 =A0Voltage: 1.5 V<br>
=A0 =A0 =A0 =A0External Clock: 200 MHz<br>
=A0 =A0 =A0 =A0Max Speed: 3200 MHz<br>
=A0 =A0 =A0 =A0Current Speed: 2200 MHz<br>
=A0 =A0 =A0 =A0Status: Populated, Enabled<br>
=A0 =A0 =A0 =A0Upgrade: Other<br>
=A0 =A0 =A0 =A0L1 Cache Handle: 0x0005<br>
=A0 =A0 =A0 =A0L2 Cache Handle: 0x0006<br>
=A0 =A0 =A0 =A0L3 Cache Handle: 0x0007<br>
=A0 =A0 =A0 =A0Serial Number: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0Asset Tag: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0Part Number: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0Core Count: 4<br>
=A0 =A0 =A0 =A0Core Enabled: 4<br>
=A0 =A0 =A0 =A0Characteristics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A064-bit capable<br>
<br>
Handle 0x0005, DMI type 7, 19 bytes<br>
Cache Information<br>
=A0 =A0 =A0 =A0Socket Designation: L1-Cache<br>
=A0 =A0 =A0 =A0Configuration: Enabled, Not Socketed, Level 1<br>
=A0 =A0 =A0 =A0Operational Mode: Varies With Memory Address<br>
=A0 =A0 =A0 =A0Location: Internal<br>
=A0 =A0 =A0 =A0Installed Size: 512 KB<br>
=A0 =A0 =A0 =A0Maximum Size: 512 KB<br>
=A0 =A0 =A0 =A0Supported SRAM Types:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pipeline Burst<br>
=A0 =A0 =A0 =A0Installed SRAM Type: Pipeline Burst<br>
=A0 =A0 =A0 =A0Speed: Unknown<br>
=A0 =A0 =A0 =A0Error Correction Type: Single-bit ECC<br>
=A0 =A0 =A0 =A0System Type: Data<br>
=A0 =A0 =A0 =A0Associativity: 4-way Set-associative<br>
<br>
Handle 0x0006, DMI type 7, 19 bytes<br>
Cache Information<br>
=A0 =A0 =A0 =A0Socket Designation: L2-Cache<br>
=A0 =A0 =A0 =A0Configuration: Enabled, Not Socketed, Level 2<br>
=A0 =A0 =A0 =A0Operational Mode: Varies With Memory Address<br>
=A0 =A0 =A0 =A0Location: Internal<br>
=A0 =A0 =A0 =A0Installed Size: 2048 KB<br>
=A0 =A0 =A0 =A0Maximum Size: 2048 KB<br>
=A0 =A0 =A0 =A0Supported SRAM Types:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pipeline Burst<br>
=A0 =A0 =A0 =A0Installed SRAM Type: Pipeline Burst<br>
=A0 =A0 =A0 =A0Speed: Unknown<br>
=A0 =A0 =A0 =A0Error Correction Type: Single-bit ECC<br>
=A0 =A0 =A0 =A0System Type: Unified<br>
=A0 =A0 =A0 =A0Associativity: 4-way Set-associative<br>
<br>
Handle 0x0007, DMI type 7, 19 bytes<br>
Cache Information<br>
=A0 =A0 =A0 =A0Socket Designation: L3-Cache<br>
=A0 =A0 =A0 =A0Configuration: Enabled, Not Socketed, Level 3<br>
=A0 =A0 =A0 =A0Operational Mode: Varies With Memory Address<br>
=A0 =A0 =A0 =A0Location: Internal<br>
=A0 =A0 =A0 =A0Installed Size: 2048 KB<br>
=A0 =A0 =A0 =A0Maximum Size: 2048 KB<br>
=A0 =A0 =A0 =A0Supported SRAM Types:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pipeline Burst<br>
=A0 =A0 =A0 =A0Installed SRAM Type: Pipeline Burst<br>
=A0 =A0 =A0 =A0Speed: Unknown<br>
=A0 =A0 =A0 =A0Error Correction Type: Single-bit ECC<br>
=A0 =A0 =A0 =A0System Type: Unified<br>
=A0 =A0 =A0 =A0Associativity: 4-way Set-associative<br>
<br>
Handle 0x0008, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: PS/2 KeyBoard<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Keyboard<br>
=A0 =A0 =A0 =A0External Connector Type: PS/2<br>
=A0 =A0 =A0 =A0Port Type: Keyboard Port<br>
<br>
Handle 0x0009, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB1<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: USB1<br>
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x000A, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB2<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: USB2<br>
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x000B, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB3<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: USB3<br>
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x000C, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB4<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: USB4<br>
=A0 =A0 =A0 =A0External Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x000D, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: LPT 1<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: LPT 1<br>
=A0 =A0 =A0 =A0External Connector Type: DB-25 male<br>
=A0 =A0 =A0 =A0Port Type: Parallel Port ECP/EPP<br>
<br>
Handle 0x000E, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: COM 1<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: COM 1<br>
=A0 =A0 =A0 =A0External Connector Type: DB-9 male<br>
=A0 =A0 =A0 =A0Port Type: Serial Port 16550A Compatible<br>
<br>
Handle 0x000F, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: LAN<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: LAN<br>
=A0 =A0 =A0 =A0External Connector Type: RJ-45<br>
=A0 =A0 =A0 =A0Port Type: Network Port<br>
<br>
Handle 0x0010, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Line_In<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Audio_Line_In<br>
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x0011, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Line_Out<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Audio_Line_Out<br>
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x0012, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Mic_In<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Audio_Mic_In<br>
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x0013, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Center/Sub<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Audio_Center/Sub<br>
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x0014, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Rear<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Audio_Rear<br>
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x0015, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: Audio_Side<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: Audio_Side<br>
=A0 =A0 =A0 =A0External Connector Type: Mini Jack (headphones)<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x0016, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: HDMI<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: HDMI port<br>
=A0 =A0 =A0 =A0External Connector Type: Other<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0017, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: DVI<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: DVI port<br>
=A0 =A0 =A0 =A0External Connector Type: Other<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0018, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SPDIFO<br>
=A0 =A0 =A0 =A0Internal Connector Type: None<br>
=A0 =A0 =A0 =A0External Reference Designator: SPDIFO<br>
=A0 =A0 =A0 =A0External Connector Type: Other<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0019, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: PRI IDE<br>
=A0 =A0 =A0 =A0Internal Connector Type: On Board IDE<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x001A, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA1<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x001B, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA2<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x001C, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA3<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x001D, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA4<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x001E, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA5<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x001F, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SB_SATA6<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0020, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: CPU FAN<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0021, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: CHA FAN<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0022, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: PWR FAN<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x0023, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB5<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x0024, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB6<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x0025, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB7<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x0026, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB8<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x0027, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB9<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x0028, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB10<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x0029, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB11<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x002A, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: USB12<br>
=A0 =A0 =A0 =A0Internal Connector Type: Access Bus (USB)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: USB<br>
<br>
Handle 0x002B, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: PANEL<br>
=A0 =A0 =A0 =A0Internal Connector Type: 9 Pin Dual Inline (pin 10 cut)<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x002C, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: SPDIF OUT<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x002D, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: AAFP<br>
=A0 =A0 =A0 =A0Internal Connector Type: Other<br>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Other<br>
<br>
Handle 0x002E, DMI type 8, 9 bytes<br>
Port Connector Information<br>
=A0 =A0 =A0 =A0Internal Reference Designator: CD<br>
=A0 =A0 =A0 =A0Internal Connector Type: On Board Sound Input From CD-ROM<br=
>
=A0 =A0 =A0 =A0External Reference Designator: Not Specified<br>
=A0 =A0 =A0 =A0External Connector Type: None<br>
=A0 =A0 =A0 =A0Port Type: Audio Port<br>
<br>
Handle 0x002F, DMI type 9, 13 bytes<br>
System Slot Information<br>
=A0 =A0 =A0 =A0Designation: PCIE1X<br>
=A0 =A0 =A0 =A0Type: 32-bit PCI Express<br>
=A0 =A0 =A0 =A0Current Usage: Available<br>
=A0 =A0 =A0 =A0Length: Short<br>
=A0 =A0 =A0 =A0ID: 4<br>
=A0 =A0 =A0 =A0Characteristics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported<br>
<br>
Handle 0x0030, DMI type 9, 13 bytes<br>
System Slot Information<br>
=A0 =A0 =A0 =A0Designation: PCIE16X<br>
=A0 =A0 =A0 =A0Type: 32-bit PCI Express<br>
=A0 =A0 =A0 =A0Current Usage: Available<br>
=A0 =A0 =A0 =A0Length: Short<br>
=A0 =A0 =A0 =A0ID: 2<br>
=A0 =A0 =A0 =A0Characteristics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported<br>
<br>
Handle 0x0031, DMI type 9, 13 bytes<br>
System Slot Information<br>
=A0 =A0 =A0 =A0Designation: PCI1<br>
=A0 =A0 =A0 =A0Type: 32-bit PCI<br>
=A0 =A0 =A0 =A0Current Usage: Available<br>
=A0 =A0 =A0 =A0Length: Short<br>
=A0 =A0 =A0 =A0ID: 13<br>
=A0 =A0 =A0 =A0Characteristics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported<br>
<br>
Handle 0x0032, DMI type 9, 13 bytes<br>
System Slot Information<br>
=A0 =A0 =A0 =A0Designation: PCI2<br>
=A0 =A0 =A0 =A0Type: 32-bit PCI<br>
=A0 =A0 =A0 =A0Current Usage: In Use<br>
=A0 =A0 =A0 =A0Length: Short<br>
=A0 =A0 =A0 =A0ID: 14<br>
=A0 =A0 =A0 =A0Characteristics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A03.3 V is provided<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Opening is shared<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PME signal is supported<br>
<br>
Handle 0x0033, DMI type 10, 6 bytes<br>
On Board Device Information<br>
=A0 =A0 =A0 =A0Type: Other<br>
=A0 =A0 =A0 =A0Status: Enabled<br>
=A0 =A0 =A0 =A0Description: =A0 To Be Filled By O.E.M.<br>
<br>
Handle 0x0034, DMI type 10, 6 bytes<br>
On Board Device Information<br>
=A0 =A0 =A0 =A0Type: Ethernet<br>
=A0 =A0 =A0 =A0Status: Enabled<br>
=A0 =A0 =A0 =A0Description: To Be Filled By O.E.M.<br>
<br>
Handle 0x0035, DMI type 10, 6 bytes<br>
On Board Device Information<br>
=A0 =A0 =A0 =A0Type: Sound<br>
=A0 =A0 =A0 =A0Status: Enabled<br>
=A0 =A0 =A0 =A0Description: To Be Filled By O.E.M.<br>
<br>
Handle 0x0036, DMI type 10, 6 bytes<br>
On Board Device Information<br>
=A0 =A0 =A0 =A0Type: Other<br>
=A0 =A0 =A0 =A0Status: Enabled<br>
=A0 =A0 =A0 =A0Description: To Be Filled By O.E.M.<br>
<br>
Handle 0x0037, DMI type 11, 5 bytes<br>
OEM Strings<br>
=A0 =A0 =A0 =A0String 1: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0String 2: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0String 3: To Be Filled By O.E.M.<br>
=A0 =A0 =A0 =A0String 4: To Be Filled By O.E.M.<br>
<br>
Handle 0x0038, DMI type 13, 22 bytes<br>
BIOS Language Information<br>
=A0 =A0 =A0 =A0Installable Languages: 1<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0en|US|iso8859-1<br>
=A0 =A0 =A0 =A0Currently Installed Language: en|US|iso8859-1<br>
<br>
Handle 0x0039, DMI type 15, 35 bytes<br>
System Event Log<br>
=A0 =A0 =A0 =A0Area Length: 4 bytes<br>
=A0 =A0 =A0 =A0Header Start Offset: 0x0000<br>
=A0 =A0 =A0 =A0Header Length: 2 bytes<br>
=A0 =A0 =A0 =A0Data Start Offset: 0x0002<br>
=A0 =A0 =A0 =A0Access Method: Indexed I/O, one 16-bit index port, one 8-bit=
 data port<br>
=A0 =A0 =A0 =A0Access Address: Index 0x046A, Data 0x046C<br>
=A0 =A0 =A0 =A0Status: Invalid, Not Full<br>
=A0 =A0 =A0 =A0Change Token: 0x00000000<br>
=A0 =A0 =A0 =A0Header Format: No Header<br>
=A0 =A0 =A0 =A0Supported Log Type Descriptors: 6<br>
=A0 =A0 =A0 =A0Descriptor 1: End of log<br>
=A0 =A0 =A0 =A0Data Format 1: OEM-specific<br>
=A0 =A0 =A0 =A0Descriptor 2: End of log<br>
=A0 =A0 =A0 =A0Data Format 2: OEM-specific<br>
=A0 =A0 =A0 =A0Descriptor 3: End of log<br>
=A0 =A0 =A0 =A0Data Format 3: OEM-specific<br>
=A0 =A0 =A0 =A0Descriptor 4: End of log<br>
=A0 =A0 =A0 =A0Data Format 4: OEM-specific<br>
=A0 =A0 =A0 =A0Descriptor 5: End of log<br>
=A0 =A0 =A0 =A0Data Format 5: OEM-specific<br>
=A0 =A0 =A0 =A0Descriptor 6: End of log<br>
=A0 =A0 =A0 =A0Data Format 6: OEM-specific<br>
<br>
Handle 0x003A, DMI type 16, 15 bytes<br>
Physical Memory Array<br>
=A0 =A0 =A0 =A0Location: System Board Or Motherboard<br>
=A0 =A0 =A0 =A0Use: System Memory<br>
=A0 =A0 =A0 =A0Error Correction Type: None<br>
=A0 =A0 =A0 =A0Maximum Capacity: 8 GB<br>
=A0 =A0 =A0 =A0Error Information Handle: Not Provided<br>
=A0 =A0 =A0 =A0Number Of Devices: 4<br>
<br>
Handle 0x003B, DMI type 19, 15 bytes<br>
Memory Array Mapped Address<br>
=A0 =A0 =A0 =A0Starting Address: 0x00000000000<br>
=A0 =A0 =A0 =A0Ending Address: 0x0022FFFFFFF<br>
=A0 =A0 =A0 =A0Range Size: 8960 MB<br>
=A0 =A0 =A0 =A0Physical Array Handle: 0x003A<br>
=A0 =A0 =A0 =A0Partition Width: 0<br>
<br>
Handle 0x003C, DMI type 17, 27 bytes<br>
Memory Device<br>
=A0 =A0 =A0 =A0Array Handle: 0x003A<br>
=A0 =A0 =A0 =A0Error Information Handle: Not Provided<br>
=A0 =A0 =A0 =A0Total Width: 64 bits<br>
=A0 =A0 =A0 =A0Data Width: 64 bits<br>
=A0 =A0 =A0 =A0Size: 2048 MB<br>
=A0 =A0 =A0 =A0Form Factor: DIMM<br>
=A0 =A0 =A0 =A0Set: None<br>
=A0 =A0 =A0 =A0Locator: DIMM0<br>
=A0 =A0 =A0 =A0Bank Locator: BANK0<br>
=A0 =A0 =A0 =A0Type: DDR2<br>
=A0 =A0 =A0 =A0Type Detail: Synchronous<br>
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)<br>
=A0 =A0 =A0 =A0Manufacturer: Manufacturer0<br>
=A0 =A0 =A0 =A0Serial Number: SerNum0<br>
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum0<br>
=A0 =A0 =A0 =A0Part Number: PartNum0<br>
<br>
Handle 0x003D, DMI type 20, 19 bytes<br>
Memory Device Mapped Address<br>
=A0 =A0 =A0 =A0Starting Address: 0x00000000000<br>
=A0 =A0 =A0 =A0Ending Address: 0x0007FFFFFFF<br>
=A0 =A0 =A0 =A0Range Size: 2 GB<br>
=A0 =A0 =A0 =A0Physical Device Handle: 0x003C<br>
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B<br>
=A0 =A0 =A0 =A0Partition Row Position: 1<br>
<br>
Handle 0x003E, DMI type 17, 27 bytes<br>
Memory Device<br>
=A0 =A0 =A0 =A0Array Handle: 0x003A<br>
=A0 =A0 =A0 =A0Error Information Handle: Not Provided<br>
=A0 =A0 =A0 =A0Total Width: 64 bits<br>
=A0 =A0 =A0 =A0Data Width: 64 bits<br>
=A0 =A0 =A0 =A0Size: 2048 MB<br>
=A0 =A0 =A0 =A0Form Factor: DIMM<br>
=A0 =A0 =A0 =A0Set: None<br>
=A0 =A0 =A0 =A0Locator: DIMM1<br>
=A0 =A0 =A0 =A0Bank Locator: BANK1<br>
=A0 =A0 =A0 =A0Type: DDR2<br>
=A0 =A0 =A0 =A0Type Detail: Synchronous<br>
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)<br>
=A0 =A0 =A0 =A0Manufacturer: Manufacturer1<br>
=A0 =A0 =A0 =A0Serial Number: SerNum1<br>
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum1<br>
=A0 =A0 =A0 =A0Part Number: PartNum1<br>
<br>
Handle 0x003F, DMI type 20, 19 bytes<br>
Memory Device Mapped Address<br>
=A0 =A0 =A0 =A0Starting Address: 0x00080000000<br>
=A0 =A0 =A0 =A0Ending Address: 0x000FFFFFFFF<br>
=A0 =A0 =A0 =A0Range Size: 2 GB<br>
=A0 =A0 =A0 =A0Physical Device Handle: 0x003E<br>
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B<br>
=A0 =A0 =A0 =A0Partition Row Position: 1<br>
<br>
Handle 0x0040, DMI type 17, 27 bytes<br>
Memory Device<br>
=A0 =A0 =A0 =A0Array Handle: 0x003A<br>
=A0 =A0 =A0 =A0Error Information Handle: Not Provided<br>
=A0 =A0 =A0 =A0Total Width: 64 bits<br>
=A0 =A0 =A0 =A0Data Width: 64 bits<br>
=A0 =A0 =A0 =A0Size: 2048 MB<br>
=A0 =A0 =A0 =A0Form Factor: DIMM<br>
=A0 =A0 =A0 =A0Set: None<br>
=A0 =A0 =A0 =A0Locator: DIMM2<br>
=A0 =A0 =A0 =A0Bank Locator: BANK2<br>
=A0 =A0 =A0 =A0Type: DDR2<br>
=A0 =A0 =A0 =A0Type Detail: Synchronous<br>
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)<br>
=A0 =A0 =A0 =A0Manufacturer: Manufacturer2<br>
=A0 =A0 =A0 =A0Serial Number: SerNum2<br>
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum2<br>
=A0 =A0 =A0 =A0Part Number: PartNum2<br>
<br>
Handle 0x0041, DMI type 20, 19 bytes<br>
Memory Device Mapped Address<br>
=A0 =A0 =A0 =A0Starting Address: 0x00100000000<br>
=A0 =A0 =A0 =A0Ending Address: 0x0017FFFFFFF<br>
=A0 =A0 =A0 =A0Range Size: 2 GB<br>
=A0 =A0 =A0 =A0Physical Device Handle: 0x0040<br>
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B<br>
=A0 =A0 =A0 =A0Partition Row Position: 1<br>
<br>
Handle 0x0042, DMI type 17, 27 bytes<br>
Memory Device<br>
=A0 =A0 =A0 =A0Array Handle: 0x003A<br>
=A0 =A0 =A0 =A0Error Information Handle: Not Provided<br>
=A0 =A0 =A0 =A0Total Width: 64 bits<br>
=A0 =A0 =A0 =A0Data Width: 64 bits<br>
=A0 =A0 =A0 =A0Size: 2048 MB<br>
=A0 =A0 =A0 =A0Form Factor: DIMM<br>
=A0 =A0 =A0 =A0Set: None<br>
=A0 =A0 =A0 =A0Locator: DIMM3<br>
=A0 =A0 =A0 =A0Bank Locator: BANK3<br>
=A0 =A0 =A0 =A0Type: DDR2<br>
=A0 =A0 =A0 =A0Type Detail: Synchronous<br>
=A0 =A0 =A0 =A0Speed: 667 MHz (1.5 ns)<br>
=A0 =A0 =A0 =A0Manufacturer: Manufacturer3<br>
=A0 =A0 =A0 =A0Serial Number: SerNum3<br>
=A0 =A0 =A0 =A0Asset Tag: AssetTagNum3<br>
=A0 =A0 =A0 =A0Part Number: PartNum3<br>
<br>
Handle 0x0043, DMI type 20, 19 bytes<br>
Memory Device Mapped Address<br>
=A0 =A0 =A0 =A0Starting Address: 0x00180000000<br>
=A0 =A0 =A0 =A0Ending Address: 0x001FFFFFFFF<br>
=A0 =A0 =A0 =A0Range Size: 2 GB<br>
=A0 =A0 =A0 =A0Physical Device Handle: 0x0042<br>
=A0 =A0 =A0 =A0Memory Array Mapped Address Handle: 0x003B<br>
=A0 =A0 =A0 =A0Partition Row Position: 1<br>
<br>
Handle 0x0044, DMI type 32, 20 bytes<br>
System Boot Information<br>
=A0 =A0 =A0 =A0Status: No errors detected<br>
<br>
Handle 0x0045, DMI type 127, 4 bytes<br>
End Of Table<br>
<br>
netto@black-dev:~$ cat /var/log/Xorg.0.log<br>
<br>
X.Org X Server 1.6.4<br>
Release Date: 2009-9-27<br>
X Protocol Version 11, Revision 0<br>
Build Operating System: Linux 2.6.24-23-server i686 Ubuntu<br>
Current Operating System: Linux black-dev 2.6.31-19-generic-pae<br>
#56-Ubuntu SMP Thu Jan 28 02:29:51 UTC 2010 i686<br>
Kernel command line: BOOT_IMAGE=3D/boot/vmlinuz-2.6.31-19-generic-pae<br>
root=3DUUID=3Df446fc23-1950-4f4b-baf8-eec2012a1bc9 ro quiet splash<br>
Build Date: 14 November 2009 =A005:48:26PM<br>
xorg-server 2:1.6.4-2ubuntu4.1 (buildd@)<br>
=A0 =A0 =A0 =A0Before reporting problems, check <a href=3D"http://wiki.x.or=
g" target=3D"_blank">http://wiki.x.org</a><br>
=A0 =A0 =A0 =A0to make sure that you have the latest version.<br>
Markers: (--) probed, (**) from config file, (=3D=3D) default setting,<br>
=A0 =A0 =A0 =A0(++) from command line, (!!) notice, (II) informational,<br>
=A0 =A0 =A0 =A0(WW) warning, (EE) error, (NI) not implemented, (??) unknown=
.<br>
(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Sun Feb 21 23:55:=
50 2010<br>
(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>
(=3D=3D) ServerLayout &quot;Layout[all]&quot;<br>
(**) |--&gt;Screen &quot;aticonfig-Screen[0]-0&quot; (0)<br>
(**) | =A0 |--&gt;Monitor &quot;aticonfig-Monitor[0]-0&quot;<br>
(**) | =A0 |--&gt;Device &quot;aticonfig-Device[0]-0&quot;<br>
(**) |--&gt;Input Device &quot;Keyboard[0]&quot;<br>
(**) |--&gt;Input Device &quot;Mouse[1]&quot;<br>
(**) Option &quot;AllowMouseOpenFail&quot; &quot;on&quot;<br>
(=3D=3D) Automatically adding devices<br>
(=3D=3D) Automatically enabling devices<br>
(WW) The directory &quot;/usr/share/fonts/misc&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/local&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/75dpi&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/100dpi&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/Type1&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/URW&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/Speedo&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/PEX&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/cyrillic&quot; does not exist.<br=
>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/latin2/misc&quot; does not exist.=
<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/latin2/75dpi&quot; does not exist=
.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/latin2/100dpi&quot; does not exis=
t.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/latin2/Type1&quot; does not exist=
.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/latin7/75dpi&quot; does not exist=
.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/baekmuk&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/japanese&quot; does not exist.<br=
>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/kwintv&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) `fonts.dir&#39; not found (or not valid) in<br>
&quot;/usr/share/fonts/truetype&quot;.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
=A0 =A0 =A0 =A0(Run &#39;mkfontdir&#39; on &quot;/usr/share/fonts/truetype&=
quot;).<br>
(WW) The directory &quot;/usr/share/fonts/uni&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/CID&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/ucs/misc&quot; does not exist.<br=
>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/ucs/75dpi&quot; does not exist.<b=
r>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/ucs/100dpi&quot; does not exist.<=
br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/hellas/misc&quot; does not exist.=
<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/hellas/75dpi&quot; does not exist=
.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/hellas/100dpi&quot; does not exis=
t.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/hellas/Type1&quot; does not exist=
.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/misc/sgi&quot; does not exist.<br=
>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/xtest&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/opt/kde3/share/fonts&quot; does not exist.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(WW) The directory &quot;/usr/share/fonts/X11/cyrillic&quot; does not exist=
.<br>
=A0 =A0 =A0 =A0Entry deleted from font path.<br>
(**) FontPath set to:<br>
=A0 =A0 =A0 =A0/usr/share/fonts/X11/misc,<br>
=A0 =A0 =A0 =A0/usr/share/fonts/X11/100dpi/:unscaled,<br>
=A0 =A0 =A0 =A0/usr/share/fonts/X11/75dpi/:unscaled,<br>
=A0 =A0 =A0 =A0/usr/share/fonts/X11/Type1,<br>
=A0 =A0 =A0 =A0/usr/share/fonts/X11/100dpi,<br>
=A0 =A0 =A0 =A0/usr/share/fonts/X11/75dpi,<br>
=A0 =A0 =A0 =A0/var/lib/defoma/x-ttcidfont-conf.d/dirs/TrueType,<br>
=A0 =A0 =A0 =A0built-ins<br>
(**) Input device list set to &quot;/dev/gpmdata,/dev/input/mice&quot;<br>
(=3D=3D) ModulePath set to &quot;/usr/lib/xorg/modules&quot;<br>
(**) Extension &quot;XVideo&quot; is enabled<br>
(**) Extension &quot;Composite&quot; is disabled<br>
(WW) AllowEmptyInput is on, devices using drivers &#39;kbd&#39;, &#39;mouse=
&#39; or<br>
&#39;vmmouse&#39; will be disabled.<br>
(WW) Disabling Keyboard[0]<br>
(WW) Disabling Mouse[1]<br>
(II) Loader magic: 0x3bc0<br>
(II) Module ABI versions:<br>
=A0 =A0 =A0 =A0X.Org ANSI C Emulation: 0.4<br>
=A0 =A0 =A0 =A0X.Org Video Driver: 5.0<br>
=A0 =A0 =A0 =A0X.Org XInput driver : 4.0<br>
=A0 =A0 =A0 =A0X.Org Server Extension : 2.0<br>
(II) Loader running on linux<br>
(++) using VT number 7<br>
<br>
(--) PCI:*(0:1:5:0) 1002:9610:1043:82f1 ATI Technologies Inc Radeon HD<br>
3200 Graphics rev 0, Mem @ 0xd0000000/268435456, 0xfbdf0000/65536,<br>
0xfbc00000/1048576, I/O @ 0x0000c000/256<br>
(II) Open ACPI successful (/var/run/acpid.socket)<br>
(II) System resource ranges:<br>
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[24] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[25] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[26] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
(II) &quot;extmod&quot; will be loaded by default.<br>
(II) &quot;dbe&quot; will be loaded by default.<br>
(II) &quot;glx&quot; will be loaded. This was enabled by default and also<b=
r>
specified in the config file.<br>
(II) &quot;record&quot; will be loaded by default.<br>
(II) &quot;dri&quot; will be loaded. This was enabled by default and also<b=
r>
specified in the config file.<br>
(II) &quot;dri2&quot; will be loaded by default.<br>
(II) LoadModule: &quot;glx&quot;<br>
(II) Loading /usr/lib/xorg/modules/extensions//libglx.so<br>
(II) Module glx: vendor=3D&quot;FireGL - ATI Technologies Inc.&quot;<br>
=A0 =A0 =A0 =A0compiled for 7.4.0, module version =3D 1.0.0<br>
(II) Loading extension GLX<br>
(II) LoadModule: &quot;dri&quot;<br>
(II) Loading /usr/lib/xorg/modules/extensions//libdri.so<br>
(II) Module dri: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 7.4.0, module version =3D 1.0.0<br>
(II) Loading sub module &quot;fglrxdrm&quot;<br>
(II) LoadModule: &quot;fglrxdrm&quot;<br>
(II) Loading /usr/lib/xorg/modules/linux//libfglrxdrm.so<br>
(II) Module fglrxdrm: vendor=3D&quot;FireGL - ATI Technologies Inc.&quot;<b=
r>
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 8.66.10<br>
(II) Loading extension XFree86-DRI<br>
(II) LoadModule: &quot;extmod&quot;<br>
(II) Loading /usr/lib/xorg/modules/extensions//libextmod.so<br>
(II) Module extmod: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.0.0<br>
=A0 =A0 =A0 =A0Module class: X.Org Server Extension<br>
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0<br>
(II) Loading extension MIT-SCREEN-SAVER<br>
(II) Loading extension XFree86-VidModeExtension<br>
(II) Loading extension XFree86-DGA<br>
(II) Loading extension DPMS<br>
(II) Loading extension XVideo<br>
(II) Loading extension XVideo-MotionCompensation<br>
(II) Loading extension X-Resource<br>
(II) LoadModule: &quot;dbe&quot;<br>
(II) Loading /usr/lib/xorg/modules/extensions//libdbe.so<br>
(II) Module dbe: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.0.0<br>
=A0 =A0 =A0 =A0Module class: X.Org Server Extension<br>
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0<br>
(II) Loading extension DOUBLE-BUFFER<br>
(II) LoadModule: &quot;record&quot;<br>
(II) Loading /usr/lib/xorg/modules/extensions//librecord.so<br>
(II) Module record: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.13.0<br>
=A0 =A0 =A0 =A0Module class: X.Org Server Extension<br>
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0<br>
(II) Loading extension RECORD<br>
(II) LoadModule: &quot;dri2&quot;<br>
(II) Loading /usr/lib/xorg/modules/extensions//libdri2.so<br>
(II) Module dri2: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.1.0<br>
=A0 =A0 =A0 =A0ABI class: X.Org Server Extension, version 2.0<br>
(II) Loading extension DRI2<br>
(II) LoadModule: &quot;fglrx&quot;<br>
(II) Loading /usr/lib/xorg/modules/drivers//fglrx_drv.so<br>
(II) Module fglrx: vendor=3D&quot;FireGL - ATI Technologies Inc.&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 8.66.10<br>
=A0 =A0 =A0 =A0Module class: X.Org Video Driver<br>
(II) Primary Device is: PCI 01@00:05:0<br>
(WW) Falling back to old probe method for fglrx<br>
(II) ATI Proprietary Linux Driver Version Identifier:8.66.10<br>
(II) ATI Proprietary Linux Driver Release Identifier: 8.66.1<br>
(II) ATI Proprietary Linux Driver Build Date: Sep =A03 2009 21:35:19<br>
(II) Loading PCS database from /etc/ati/amdpcsdb<br>
(--) Chipset Supported AMD Graphics Processor (0x9610) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:17:0) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:18:0) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:18:1) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:18:2) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:19:0) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:19:1) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:19:2) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:20:0) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:20:1) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:20:2) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:20:3) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:20:4) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@0:20:5) found<br>
(WW) fglrx: No matching Device section for instance (BusID<br>
PCI:0@1:5:1) found<br>
(II) AMD Video driver is running on a device belonging to a group<br>
targeted for this release<br>
(II) AMD Video driver is signed<br>
(II) resource ranges after xf86ClaimFixedResources() call:<br>
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[24] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[25] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[26] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
(II) fglrx(0): pEnt-&gt;device-&gt;identifier=3D0x8da5dd0<br>
(II) resource ranges after probing:<br>
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[24] 0 =A00 =A0 =A0 =A0 0x000a0000 - 0x000affff (0x10000) MS=
[B]<br>
=A0 =A0 =A0 =A0[25] 0 =A00 =A0 =A0 =A0 0x000b0000 - 0x000b7fff (0x8000) MS[=
B]<br>
=A0 =A0 =A0 =A0[26] 0 =A00 =A0 =A0 =A0 0x000b8000 - 0x000bffff (0x8000) MS[=
B]<br>
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[36] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[37] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[38] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[39] 0 =A00 =A0 =A0 =A0 0x000003b0 - 0x000003bb (0xc) IS[B]<=
br>
=A0 =A0 =A0 =A0[40] 0 =A00 =A0 =A0 =A0 0x000003c0 - 0x000003df (0x20) IS[B]=
<br>
(II) Setting vga for screen 0.<br>
(II) fglrx(0): =3D=3D=3D [atiddxPreInit] =3D=3D=3D begin<br>
(II) Loading sub module &quot;vgahw&quot;<br>
(II) LoadModule: &quot;vgahw&quot;<br>
(II) Loading /usr/lib/xorg/modules//libvgahw.so<br>
(II) Module vgahw: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 0.1.0<br>
=A0 =A0 =A0 =A0ABI class: X.Org Video Driver, version 5.0<br>
(II) fglrx(0): PCI bus 1 card 5 func 0<br>
(**) fglrx(0): Depth 24, (--) framebuffer bpp 32<br>
(II) fglrx(0): Pixel depth =3D 24 bits stored in 4 bytes (32 bpp<br>
pixmaps)<br>
(=3D=3D) fglrx(0): Default visual is TrueColor<br>
(**) fglrx(0): Option &quot;UseFastTLS&quot; &quot;1&quot;<br>
(**) fglrx(0): Option &quot;TexturedVideo&quot; &quot;on&quot;<br>
(=3D=3D) fglrx(0): RGB weight 888<br>
(II) fglrx(0): Using 8 bits per RGB (8 bit DAC)<br>
(**) fglrx(0): Gamma Correction for I is 0x06419064<br>
(=3D=3D) fglrx(0): Gamma Correction for II is 0x06419064<br>
(=3D=3D) fglrx(0): Buffer Tiling is ON<br>
(II) Loading sub module &quot;fglrxdrm&quot;<br>
(II) LoadModule: &quot;fglrxdrm&quot;<br>
(II) Reloading /usr/lib/xorg/modules/linux//libfglrxdrm.so<br>
(II) Loading sub module &quot;dri&quot;<br>
(II) LoadModule: &quot;dri&quot;<br>
(II) Reloading /usr/lib/xorg/modules/extensions//libdri.so<br>
(II) Loading sub module &quot;fglrxdrm&quot;<br>
(II) LoadModule: &quot;fglrxdrm&quot;<br>
(II) Reloading /usr/lib/xorg/modules/linux//libfglrxdrm.so<br>
(II) Loading extension XFree86-DRI<br>
drmDynamicMajor: found major device number 251<br>
drmDynamicMajor: found major device number 251<br>
drmOpenByBusid: Searching for BusID PCI:1:5:0<br>
drmOpenDevice: node name is /dev/ati/card0<br>
drmOpenDevice: open result is 9, (OK)<br>
drmOpenByBusid: drmOpenMinor returns 9<br>
drmOpenByBusid: drmGetBusid reports PCI:1:5:0<br>
(--) fglrx(0): Chipset: &quot;ATI Radeon HD 3200 Graphics&quot; (Chipset =
=3D<br>
0x9610)<br>
(--) fglrx(0): (PciSubVendor =3D 0x1043, PciSubDevice =3D 0x82f1)<br>
(--) fglrx(0): board vendor info: third party graphics adapter - NOT<br>
original ATI<br>
(--) fglrx(0): Linear framebuffer (phys) at 0xd0000000<br>
(--) fglrx(0): MMIO registers at 0xfbdf0000<br>
(--) fglrx(0): I/O port at 0x0000c000<br>
(=3D=3D) fglrx(0): ROM-BIOS at 0x000c0000<br>
(II) fglrx(0): AC Adapter is used<br>
(II) fglrx(0): Primary V_BIOS segment is: 0xc000<br>
(II) Loading sub module &quot;vbe&quot;<br>
(II) LoadModule: &quot;vbe&quot;<br>
(II) Loading /usr/lib/xorg/modules//libvbe.so<br>
(II) Module vbe: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.1.0<br>
=A0 =A0 =A0 =A0ABI class: X.Org Video Driver, version 5.0<br>
(II) fglrx(0): VESA BIOS detected<br>
(II) fglrx(0): VESA VBE Version 3.0<br>
(II) fglrx(0): VESA VBE Total Mem: 16384 kB<br>
(II) fglrx(0): VESA VBE OEM: ATI ATOMBIOS<br>
(II) fglrx(0): VESA VBE OEM Software Rev: 10.92<br>
(II) fglrx(0): VESA VBE OEM Vendor: (C) 1988-2005, ATI Technologies<br>
Inc.<br>
(II) fglrx(0): VESA VBE OEM Product: RS780<br>
(II) fglrx(0): VESA VBE OEM Product Rev: 01.00<br>
(II) fglrx(0): ATI Video BIOS revision 9 or later detected<br>
(--) fglrx(0): Video RAM: 262144 kByte, Type: DDR2<br>
(II) fglrx(0): PCIE card detected<br>
(--) fglrx(0): Using per-process page tables (PPPT) as GART.<br>
(WW) fglrx(0): board is an unknown third party board, chipset is<br>
supported<br>
(II) fglrx(0): Using adapter: 1:5.0.<br>
(II) fglrx(0): [FB] MC range(MCFBBase =3D 0xc0000000, MCFBSize =3D<br>
0x10000000)<br>
(II) fglrx(0): Interrupt handler installed at IRQ 27.<br>
(II) fglrx(0): IRQ 27 Enabled.<br>
(II) fglrx(0): RandR 1.2 support is enabled!<br>
(II) fglrx(0): RandR 1.2 rotation support is enabled!<br>
(=3D=3D) fglrx(0): Center Mode is disabled<br>
(II) Loading sub module &quot;fb&quot;<br>
(II) LoadModule: &quot;fb&quot;<br>
(II) Loading /usr/lib/xorg/modules//libfb.so<br>
(II) Module fb: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.0.0<br>
=A0 =A0 =A0 =A0ABI class: X.Org ANSI C Emulation, version 0.4<br>
(II) Loading sub module &quot;ddc&quot;<br>
(II) LoadModule: &quot;ddc&quot;<br>
(II) Module &quot;ddc&quot; already built-in<br>
(II) fglrx(0): Finished Initialize PPLIB!<br>
(II) Loading sub module &quot;ddc&quot;<br>
(II) LoadModule: &quot;ddc&quot;<br>
(II) Module &quot;ddc&quot; already built-in<br>
(II) fglrx(0): ***Display: ConnectedDisplayTypes=3D0x00000001,<br>
disabled=3D0x00000000<br>
(II) fglrx(0): Connected Display1: CRT on primary DAC [crt1]<br>
(II) fglrx(0): Display1 EDID data ---------------------------<br>
(II) fglrx(0): Manufacturer: GSM =A0Model: 56ee =A0Serial#: 16843009<br>
(II) fglrx(0): Year: 2009 =A0Week: 6<br>
(II) fglrx(0): EDID Version: 1.3<br>
(II) fglrx(0): Analog Display Input, =A0Input Voltage Level: 0.700/0.700<br=
>
V<br>
(II) fglrx(0): Sync: =A0Separate =A0SyncOnGreen<br>
(II) fglrx(0): Max Image Size [cm]: horiz.: 51 =A0vert.: 29<br>
(II) fglrx(0): Gamma: 2.20<br>
(II) fglrx(0): DPMS capabilities: StandBy Suspend Off; RGB/Color<br>
Display<br>
(II) fglrx(0): First detailed timing is preferred mode<br>
(II) fglrx(0): redX: 0.635 redY: 0.342 =A0 greenX: 0.292 greenY: 0.611<br>
(II) fglrx(0): blueX: 0.147 blueY: 0.070 =A0 whiteX: 0.313 whiteY: 0.329<br=
>
(II) fglrx(0): Supported established timings:<br>
(II) fglrx(0): 720x400@70Hz<br>
(II) fglrx(0): 640x480@60Hz<br>
(II) fglrx(0): 640x480@75Hz<br>
(II) fglrx(0): 800x600@56Hz<br>
(II) fglrx(0): 800x600@60Hz<br>
(II) fglrx(0): 800x600@75Hz<br>
(II) fglrx(0): 832x624@75Hz<br>
(II) fglrx(0): 1024x768@60Hz<br>
(II) fglrx(0): 1024x768@75Hz<br>
(II) fglrx(0): 1280x1024@75Hz<br>
(II) fglrx(0): 1152x870@75Hz<br>
(II) fglrx(0): Manufacturer&#39;s mask: 0<br>
(II) fglrx(0): Supported standard timings:<br>
(II) fglrx(0): #0: hsize: 1680 =A0vsize 1050 =A0refresh: 60 =A0vid: 179<br>
(II) fglrx(0): #1: hsize: 1280 =A0vsize 1024 =A0refresh: 75 =A0vid: 36737<b=
r>
(II) fglrx(0): #2: hsize: 1280 =A0vsize 1024 =A0refresh: 60 =A0vid: 32897<b=
r>
(II) fglrx(0): #3: hsize: 1152 =A0vsize 864 =A0refresh: 75 =A0vid: 20337<br=
>
(II) fglrx(0): Supported detailed timing:<br>
(II) fglrx(0): clock: 148.5 MHz =A0 Image Size: =A0510 x 290 mm<br>
(II) fglrx(0): h_active: 1920 =A0h_sync: 2008 =A0h_sync_end 2052<br>
h_blank_end 2200 h_border: 0<br>
(II) fglrx(0): v_active: 1080 =A0v_sync: 1084 =A0v_sync_end 1089<br>
v_blanking: 1125 v_border: 0<br>
(II) fglrx(0): Supported detailed timing:<br>
(II) fglrx(0): clock: 146.2 MHz =A0 Image Size: =A0474 x 296 mm<br>
(II) fglrx(0): h_active: 1680 =A0h_sync: 1784 =A0h_sync_end 1960<br>
h_blank_end 2240 h_border: 0<br>
(II) fglrx(0): v_active: 1050 =A0v_sync: 1053 =A0v_sync_end 1059<br>
v_blanking: 1089 v_border: 0<br>
(II) fglrx(0): Ranges: V min: 56 V max: 75 Hz, H min: 30 H max: 83<br>
kHz, PixClock max 150 MHz<br>
(II) fglrx(0): Monitor name: W2353<br>
(II) fglrx(0): EDID (in hex):<br>
(II) fglrx(0): =A000ffffffffffff001e6dee5601010101<br>
(II) fglrx(0): =A0061301036a331d78eaaec5a2574a9c25<br>
(II) fglrx(0): =A0125054a76b80b300818f8180714f0101<br>
(II) fglrx(0): =A0010101010101023a801871382d40582c<br>
(II) fglrx(0): =A04500fe221100001e21399030621a2740<br>
(II) fglrx(0): =A068b03600da281100001c000000fd0038<br>
(II) fglrx(0): =A04b1e530f000a202020202020000000fc<br>
(II) fglrx(0): =A00057323335330a20202020202020005f<br>
(II) fglrx(0): End of Display1 EDID data --------------------<br>
(II) fglrx(0): Output DFP2 using monitor section<br>
aticonfig-Monitor[0]-0<br>
(II) fglrx(0): Output CRT1 has no monitor section<br>
(II) fglrx(0): Output DFP2 disconnected<br>
(II) fglrx(0): Output CRT1 connected<br>
(II) fglrx(0): Using exact sizes for initial modes<br>
(II) fglrx(0): Output CRT1 using initial mode 1920x1080<br>
(II) fglrx(0): DPI set to (96, 96)<br>
(=3D=3D) fglrx(0): Using gamma correction (1.0, 1.0, 1.0)<br>
(=3D=3D) fglrx(0): QBS disabled<br>
(=3D=3D) fglrx(0): =A0PseudoColor visuals disabled<br>
(II) Loading sub module &quot;ramdac&quot;<br>
(II) LoadModule: &quot;ramdac&quot;<br>
(II) Module &quot;ramdac&quot; already built-in<br>
(=3D=3D) fglrx(0): NoAccel =3D NO<br>
(II) Loading sub module &quot;xaa&quot;<br>
(II) LoadModule: &quot;xaa&quot;<br>
(II) Loading /usr/lib/xorg/modules//libxaa.so<br>
(II) Module xaa: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 1.2.1<br>
=A0 =A0 =A0 =A0ABI class: X.Org Video Driver, version 5.0<br>
(=3D=3D) fglrx(0): NoDRI =3D NO<br>
(=3D=3D) fglrx(0): Capabilities: 0x00000000<br>
(=3D=3D) fglrx(0): CapabilitiesEx: 0x00000000<br>
(=3D=3D) fglrx(0): OpenGL ClientDriverName: &quot;fglrx_dri.so&quot;<br>
(**) fglrx(0): UseFastTLS=3D1<br>
(=3D=3D) fglrx(0): BlockSignalsOnLock=3D1<br>
(--) Depth 24 pixmap format is 32 bpp<br>
(II) do I need RAC? =A0No, I don&#39;t.<br>
(II) resource ranges after preInit:<br>
=A0 =A0 =A0 =A0[0] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[1] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[2] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[3] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[4] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[5] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[6] -1 =A00 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX=
[B]<br>
=A0 =A0 =A0 =A0[7] -1 =A00 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX=
[B]<br>
=A0 =A0 =A0 =A0[8] -1 =A00 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<=
br>
=A0 =A0 =A0 =A0[9] -1 =A00 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX=
[B]<br>
=A0 =A0 =A0 =A0[10] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[11] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[12] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[13] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[14] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[15] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[16] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[17] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[18] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[19] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[20] -1 0 =A0 =A0 =A0 0xffffffff - 0xffffffff (0x1) MX[B]<br=
>
=A0 =A0 =A0 =A0[21] -1 0 =A0 =A0 =A0 0x000f0000 - 0x000fffff (0x10000) MX[B=
]<br>
=A0 =A0 =A0 =A0[22] -1 0 =A0 =A0 =A0 0x000c0000 - 0x000effff (0x30000) MX[B=
]<br>
=A0 =A0 =A0 =A0[23] -1 0 =A0 =A0 =A0 0x00000000 - 0x0009ffff (0xa0000) MX[B=
]<br>
=A0 =A0 =A0 =A0[24] 0 =A00 =A0 =A0 =A0 0x000a0000 - 0x000affff (0x10000) MS=
[B](OprU)<br>
=A0 =A0 =A0 =A0[25] 0 =A00 =A0 =A0 =A0 0x000b0000 - 0x000b7fff (0x8000) MS[=
B](OprU)<br>
=A0 =A0 =A0 =A0[26] 0 =A00 =A0 =A0 =A0 0x000b8000 - 0x000bffff (0x8000) MS[=
B](OprU)<br>
=A0 =A0 =A0 =A0[27] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[28] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[29] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[30] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[31] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[32] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[33] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[34] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[35] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[36] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[37] -1 0 =A0 =A0 =A0 0x0000ffff - 0x0000ffff (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[38] -1 0 =A0 =A0 =A0 0x00000000 - 0x00000000 (0x1) IX[B]<br=
>
=A0 =A0 =A0 =A0[39] 0 =A00 =A0 =A0 =A0 0x000003b0 - 0x000003bb (0xc) IS[B](=
OprU)<br>
=A0 =A0 =A0 =A0[40] 0 =A00 =A0 =A0 =A0 0x000003c0 - 0x000003df (0x20) IS[B]=
(OprU)<br>
(II) fglrx(0): driver needs X.org 1.4.x.y with x.y &gt;=3D 99.906<br>
(WW) fglrx(0): could not detect X server version (query_status=3D-1)<br>
(II) Loading extension ATIFGLRXDRI<br>
(II) fglrx(0): doing DRIScreenInit<br>
(II) fglrx(0): DRIScreenInit for fglrx driver<br>
drmDynamicMajor: found major device number 251<br>
drmDynamicMajor: found major device number 251<br>
drmDynamicMajor: found major device number 251<br>
drmOpenByBusid: Searching for BusID PCI:1:5:0<br>
drmOpenDevice: node name is /dev/ati/card0<br>
drmOpenDevice: open result is 13, (OK)<br>
drmOpenByBusid: drmOpenMinor returns 13<br>
drmOpenByBusid: drmGetBusid reports PCI:1:5:0<br>
(II) fglrx(0): [drm] DRM interface version 1.0<br>
(II) fglrx(0): [drm] created &quot;fglrx&quot; driver at busid &quot;PCI:1:=
5:0&quot;<br>
(II) fglrx(0): [drm] added 8192 byte SAREA at 0x2000<br>
(II) fglrx(0): [drm] mapped SAREA 0x2000 to 0xb68b1000<br>
(II) fglrx(0): [drm] framebuffer handle =3D 0x3000<br>
(II) fglrx(0): [drm] added 1 reserved context for kernel<br>
(II) fglrx(0): DRIScreenInit done<br>
(II) fglrx(0): Kernel Module Version Information:<br>
(II) fglrx(0): =A0 =A0 Name: fglrx<br>
(II) fglrx(0): =A0 =A0 Version: 8.66.10<br>
(II) fglrx(0): =A0 =A0 Date: Sep =A03 2009<br>
(II) fglrx(0): =A0 =A0 Desc: ATI FireGL DRM kernel module<br>
(II) fglrx(0): Kernel Module version matches driver.<br>
(II) fglrx(0): Kernel Module Build Time Information:<br>
(II) fglrx(0): =A0 =A0 Build-Kernel UTS_RELEASE:<br>
2.6.31-19-generic-pae<br>
(II) fglrx(0): =A0 =A0 Build-Kernel MODVERSIONS: =A0 =A0 =A0 =A0yes<br>
(II) fglrx(0): =A0 =A0 Build-Kernel __SMP__: =A0 =A0 =A0 =A0 =A0 =A0yes<br>
(II) fglrx(0): =A0 =A0 Build-Kernel PAGE_SIZE: =A0 =A0 =A0 =A0 =A00x1000<br=
>
(II) fglrx(0): [drm] register handle =3D 0x00004000<br>
(II) fglrx(0): DRI initialization successfull!<br>
(II) fglrx(0): FBADPhys: 0xc0000000 FBMappedSize: 0x0101d000<br>
(II) fglrx(0): FBMM initialized for area (0,0)-(1920,2200)<br>
(II) fglrx(0): FBMM auto alloc for area (0,0)-(1920,1920) (front color<br>
buffer - assumption)<br>
(II) fglrx(0): Largest offscreen area available: 1920 x 280<br>
(=3D=3D) fglrx(0): Backing store disabled<br>
(II) Loading extension FGLRXEXTENSION<br>
(II) Loading extension ATITVOUT<br>
(II) fglrx(0): DPMS enabled<br>
(**) fglrx(0): Textured Video is enabled.<br>
(II) LoadModule: &quot;glesx&quot;<br>
(II) Loading /usr/lib/xorg/modules//glesx.so<br>
(II) Module glesx: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 1.0.0<br>
(II) Loading extension GLESX<br>
(II) fglrx(0): GLESX enableFlags =3D 94<br>
(**) fglrx(0): Option &quot;XaaNoOffscreenPixmaps&quot; &quot;true&quot;<br=
>
(II) fglrx(0): Using XFree86 Acceleration Architecture (XAA)<br>
=A0 =A0 =A0 =A0Screen to screen bit blits<br>
=A0 =A0 =A0 =A0Solid filled rectangles<br>
=A0 =A0 =A0 =A0Solid Horizontal and Vertical Lines<br>
=A0 =A0 =A0 =A0Driver provided ScreenToScreenBitBlt replacement<br>
=A0 =A0 =A0 =A0Driver provided FillSolidRects replacement<br>
(II) fglrx(0): GLESX is enabled<br>
(II) LoadModule: &quot;amdxmm&quot;<br>
(II) Loading /usr/lib/xorg/modules//amdxmm.so<br>
(II) Module amdxmm: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.4.99.906, module version =3D 1.0.0<br>
(II) Loading extension AMDXVOPL<br>
(II) fglrx(0): UVD2 feature is available<br>
(II) fglrx(0): Composite extension is not loaded<br>
(WW) fglrx(0): Option &quot;AGPFastWrite&quot; is not used<br>
(WW) fglrx(0): Option &quot;VendorName&quot; is not used<br>
(WW) fglrx(0): Option &quot;ModelName&quot; is not used<br>
(II) fglrx(0): X context handle =3D 0x1<br>
(II) fglrx(0): [DRI] installation complete<br>
(=3D=3D) fglrx(0): Silken mouse enabled<br>
(=3D=3D) fglrx(0): Using HW cursor of display infrastructure!<br>
(=3D=3D) fglrx(0): Using software cursor<br>
(II) fglrx(0): Disabling in-server RandR and enabling in-driver RandR<br>
1.2.<br>
(--) RandR disabled<br>
(II) Initializing built-in extension Generic Event Extension<br>
(II) Initializing built-in extension SHAPE<br>
(II) Initializing built-in extension MIT-SHM<br>
(II) Initializing built-in extension XInputExtension<br>
(II) Initializing built-in extension XTEST<br>
(II) Initializing built-in extension BIG-REQUESTS<br>
(II) Initializing built-in extension SYNC<br>
(II) Initializing built-in extension XKEYBOARD<br>
(II) Initializing built-in extension XC-MISC<br>
(II) Initializing built-in extension SECURITY<br>
(II) Initializing built-in extension XINERAMA<br>
(II) Initializing built-in extension XFIXES<br>
(II) Initializing built-in extension RENDER<br>
(II) Initializing built-in extension RANDR<br>
(II) Initializing built-in extension COMPOSITE<br>
(II) Initializing built-in extension DAMAGE<br>
drmDynamicMajor: found major device number 251<br>
drmDynamicMajor: found major device number 251<br>
drmOpenByBusid: Searching for BusID PCI:1:5:0<br>
drmOpenDevice: node name is /dev/ati/card0<br>
drmOpenDevice: open result is 14, (OK)<br>
drmOpenByBusid: drmOpenMinor returns 14<br>
drmOpenByBusid: drmGetBusid reports PCI:1:5:0<br>
(WW) AIGLX: 3D driver claims to not support visual 0x3f<br>
(WW) AIGLX: 3D driver claims to not support visual 0x40<br>
(WW) AIGLX: 3D driver claims to not support visual 0x41<br>
(WW) AIGLX: 3D driver claims to not support visual 0x42<br>
(WW) AIGLX: 3D driver claims to not support visual 0x47<br>
(WW) AIGLX: 3D driver claims to not support visual 0x48<br>
(WW) AIGLX: 3D driver claims to not support visual 0x49<br>
(WW) AIGLX: 3D driver claims to not support visual 0x4a<br>
(WW) AIGLX: 3D driver claims to not support visual 0x67<br>
(WW) AIGLX: 3D driver claims to not support visual 0x68<br>
(WW) AIGLX: 3D driver claims to not support visual 0x69<br>
(WW) AIGLX: 3D driver claims to not support visual 0x6a<br>
(WW) AIGLX: 3D driver claims to not support visual 0x6f<br>
(WW) AIGLX: 3D driver claims to not support visual 0x70<br>
(WW) AIGLX: 3D driver claims to not support visual 0x71<br>
(WW) AIGLX: 3D driver claims to not support visual 0x72<br>
(II) AIGLX: Loaded and initialized /usr/lib/dri/fglrx_dri.so<br>
(II) GLX: Initialized DRI GL provider for screen 0<br>
(II) fglrx(0): Enable the clock gating!<br>
(II) fglrx(0): Setting screen physical size to 510 x 290<br>
(II) fglrx(0): Restoring Recent Mode via PCS is not supported in RANDR<br>
1.2 capable environments<br>
(II) config/hal: Adding input device Composite USB PS2 Converter USB<br>
to PS2 Adaptor =A0v1.12<br>
(II) LoadModule: &quot;evdev&quot;<br>
(II) Loading /usr/lib/xorg/modules/input//evdev_drv.so<br>
(II) Module evdev: vendor=3D&quot;X.Org Foundation&quot;<br>
=A0 =A0 =A0 =A0compiled for 1.6.4, module version =3D 2.2.5<br>
=A0 =A0 =A0 =A0Module class: X.Org XInput Driver<br>
=A0 =A0 =A0 =A0ABI class: X.Org XInput driver, version 4.0<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: always<br>
reports core events<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Device:<br>
&quot;/dev/input/event4&quot;<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found 10<br>
mouse buttons<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found x<br>
and y relative axes<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found<br>
scroll wheel(s)<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found keys<br=
>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:<br>
Configuring as mouse<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:<br>
Configuring as keyboard<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:<br>
YAxisMapping: buttons 4 and 5<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:<br>
EmulateWheelButton: 4, EmulateWheelInertia: 10, EmulateWheelTimeout:<br>
200<br>
(II) XINPUT: Adding extended input device &quot;Composite USB PS2 Converter=
<br>
USB to PS2 Adaptor =A0v1.12&quot; (type: KEYBOARD)<br>
(**) Option &quot;xkb_rules&quot; &quot;evdev&quot;<br>
(**) Option &quot;xkb_model&quot; &quot;pc105&quot;<br>
(**) Option &quot;xkb_layout&quot; &quot;br&quot;<br>
(**) Option &quot;xkb_variant&quot; &quot;abnt2&quot;<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)<br>
keeping acceleration scheme 1<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)<br>
filter chain progression: 2.00<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)<br>
filter stage 0: 20.00 ms<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: (accel)<br>
set acceleration profile 0<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:<br>
initialized for relative axes.<br>
(II) config/hal: Adding input device Composite USB PS2 Converter USB<br>
to PS2 Adaptor =A0v1.12<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: always<br>
reports core events<br>
(**) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Device:<br>
&quot;/dev/input/event3&quot;<br>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12: Found keys<br=
>
(II) Composite USB PS2 Converter USB to PS2 Adaptor =A0v1.12:<br>
Configuring as keyboard<br>
(II) XINPUT: Adding extended input device &quot;Composite USB PS2 Converter=
<br>
USB to PS2 Adaptor =A0v1.12&quot; (type: KEYBOARD)<br>
(**) Option &quot;xkb_rules&quot; &quot;evdev&quot;<br>
(**) Option &quot;xkb_model&quot; &quot;pc105&quot;<br>
(**) Option &quot;xkb_layout&quot; &quot;br&quot;<br>
(**) Option &quot;xkb_variant&quot; &quot;abnt2&quot;<br>
(II) config/hal: Adding input device Power Button<br>
(**) Power Button: always reports core events<br>
(**) Power Button: Device: &quot;/dev/input/event1&quot;<br>
(II) Power Button: Found keys<br>
(II) Power Button: Configuring as keyboard<br>
(II) XINPUT: Adding extended input device &quot;Power Button&quot; (type:<b=
r>
KEYBOARD)<br>
(**) Option &quot;xkb_rules&quot; &quot;evdev&quot;<br>
(**) Option &quot;xkb_model&quot; &quot;pc105&quot;<br>
(**) Option &quot;xkb_layout&quot; &quot;br&quot;<br>
(**) Option &quot;xkb_variant&quot; &quot;abnt2&quot;<br>
(II) config/hal: Adding input device Power Button<br>
(**) Power Button: always reports core events<br>
(**) Power Button: Device: &quot;/dev/input/event0&quot;<br>
(II) Power Button: Found keys<br>
(II) Power Button: Configuring as keyboard<br>
(II) XINPUT: Adding extended input device &quot;Power Button&quot; (type:<b=
r>
KEYBOARD)<br>
(**) Option &quot;xkb_rules&quot; &quot;evdev&quot;<br>
(**) Option &quot;xkb_model&quot; &quot;pc105&quot;<br>
(**) Option &quot;xkb_layout&quot; &quot;br&quot;<br>
(**) Option &quot;xkb_variant&quot; &quot;abnt2&quot;<br>
(II) config/hal: Adding input device Macintosh mouse button emulation<br>
(**) Macintosh mouse button emulation: always reports core events<br>
(**) Macintosh mouse button emulation: Device: &quot;/dev/input/event2&quot=
;<br>
(II) Macintosh mouse button emulation: Found 3 mouse buttons<br>
(II) Macintosh mouse button emulation: Found x and y relative axes<br>
(II) Macintosh mouse button emulation: Configuring as mouse<br>
(**) Macintosh mouse button emulation: YAxisMapping: buttons 4 and 5<br>
(**) Macintosh mouse button emulation: EmulateWheelButton: 4,<br>
EmulateWheelInertia: 10, EmulateWheelTimeout: 200<br>
(II) XINPUT: Adding extended input device &quot;Macintosh mouse button<br>
emulation&quot; (type: MOUSE)<br>
(**) Macintosh mouse button emulation: (accel) keeping acceleration scheme =
1<br>
(**) Macintosh mouse button emulation: (accel) filter chain progression: 2.=
00<br>
(**) Macintosh mouse button emulation: (accel) filter stage 0: 20.00 ms<br>
(**) Macintosh mouse button emulation: (accel) set acceleration profile 0<b=
r>
(II) Macintosh mouse button emulation: initialized for relative axes.<br>
(II) config/hal: Adding input device Logitech USB Optical Mouse<br>
(**) Logitech USB Optical Mouse: always reports core events<br>
(**) Logitech USB Optical Mouse: Device: &quot;/dev/input/event5&quot;<br>
(II) Logitech USB Optical Mouse: Found 3 mouse buttons<br>
(II) Logitech USB Optical Mouse: Found x and y relative axes<br>
(II) Logitech USB Optical Mouse: Found scroll wheel(s)<br>
(II) Logitech USB Optical Mouse: Configuring as mouse<br>
(**) Logitech USB Optical Mouse: YAxisMapping: buttons 4 and 5<br>
(**) Logitech USB Optical Mouse: EmulateWheelButton: 4,<br>
EmulateWheelInertia: 10, EmulateWheelTimeout: 200<br>
(II) XINPUT: Adding extended input device &quot;Logitech USB Optical Mouse&=
quot;<br>
(type: MOUSE)<br>
(**) Logitech USB Optical Mouse: (accel) keeping acceleration scheme 1<br>
(**) Logitech USB Optical Mouse: (accel) filter chain progression: 2.00<br>
(**) Logitech USB Optical Mouse: (accel) filter stage 0: 20.00 ms<br>
(**) Logitech USB Optical Mouse: (accel) set acceleration profile 0<br>
(II) Logitech USB Optical Mouse: initialized for relative axes.<br>
(II) fglrx(0): EDID vendor &quot;GSM&quot;, prod id 22254<br>
(II) fglrx(0): Using EDID range info for horizontal sync<br>
(II) fglrx(0): Using EDID range info for vertical refresh<br>
(II) fglrx(0): Printing DDC gathered Modelines:<br>
(II) fglrx(0): Modeline &quot;1920x1080&quot;x0.0 =A0148.50 =A01920 2008 20=
52 2200<br>
1080 1084 1089 1125 +hsync +vsync (67.5 kHz)<br>
(II) fglrx(0): Modeline &quot;1680x1050&quot;x0.0 =A0146.25 =A01680 1784 19=
60 2240<br>
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)<br>
(II) fglrx(0): Modeline &quot;800x600&quot;x0.0 =A0 40.00 =A0800 840 968 10=
56 =A0600<br>
601 605 628 +hsync +vsync (37.9 kHz)<br>
(II) fglrx(0): Modeline &quot;800x600&quot;x0.0 =A0 36.00 =A0800 824 896 10=
24 =A0600<br>
601 603 625 +hsync +vsync (35.2 kHz)<br>
(II) fglrx(0): Modeline &quot;640x480&quot;x0.0 =A0 31.50 =A0640 656 720 84=
0 =A0480<br>
481 484 500 -hsync -vsync (37.5 kHz)<br>
(II) fglrx(0): Modeline &quot;640x480&quot;x0.0 =A0 25.18 =A0640 656 752 80=
0 =A0480<br>
490 492 525 -hsync -vsync (31.5 kHz)<br>
(II) fglrx(0): Modeline &quot;720x400&quot;x0.0 =A0 28.32 =A0720 738 846 90=
0 =A0400<br>
412 414 449 -hsync +vsync (31.5 kHz)<br>
(II) fglrx(0): Modeline &quot;1280x1024&quot;x0.0 =A0135.00 =A01280 1296 14=
40 1688<br>
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1024x768&quot;x0.0 =A0 78.75 =A01024 1040 113=
6 1312<br>
768 769 772 800 +hsync +vsync (60.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1024x768&quot;x0.0 =A0 65.00 =A01024 1048 118=
4 1344<br>
768 771 777 806 -hsync -vsync (48.4 kHz)<br>
(II) fglrx(0): Modeline &quot;832x624&quot;x0.0 =A0 57.28 =A0832 864 928 11=
52 =A0624<br>
625 628 667 -hsync -vsync (49.7 kHz)<br>
(II) fglrx(0): Modeline &quot;800x600&quot;x0.0 =A0 49.50 =A0800 816 896 10=
56 =A0600<br>
601 604 625 +hsync +vsync (46.9 kHz)<br>
(II) fglrx(0): Modeline &quot;1152x864&quot;x0.0 =A0108.00 =A01152 1216 134=
4 1600<br>
864 865 868 900 +hsync +vsync (67.5 kHz)<br>
(II) fglrx(0): Modeline &quot;1680x1050&quot;x0.0 =A0146.25 =A01680 1784 19=
60 2240<br>
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)<br>
(II) fglrx(0): Modeline &quot;1280x1024&quot;x0.0 =A0135.00 =A01280 1296 14=
40 1688<br>
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1280x1024&quot;x0.0 =A0108.00 =A01280 1328 14=
40 1688<br>
1024 1025 1028 1066 +hsync +vsync (64.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1152x864&quot;x0.0 =A0108.00 =A01152 1216 134=
4 1600<br>
864 865 868 900 +hsync +vsync (67.5 kHz)<br>
(II) fglrx(0): EDID vendor &quot;GSM&quot;, prod id 22254<br>
(II) fglrx(0): Using hsync ranges from config file<br>
(II) fglrx(0): Using vrefresh ranges from config file<br>
(II) fglrx(0): Printing DDC gathered Modelines:<br>
(II) fglrx(0): Modeline &quot;1920x1080&quot;x0.0 =A0148.50 =A01920 2008 20=
52 2200<br>
1080 1084 1089 1125 +hsync +vsync (67.5 kHz)<br>
(II) fglrx(0): Modeline &quot;1680x1050&quot;x0.0 =A0146.25 =A01680 1784 19=
60 2240<br>
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)<br>
(II) fglrx(0): Modeline &quot;800x600&quot;x0.0 =A0 40.00 =A0800 840 968 10=
56 =A0600<br>
601 605 628 +hsync +vsync (37.9 kHz)<br>
(II) fglrx(0): Modeline &quot;800x600&quot;x0.0 =A0 36.00 =A0800 824 896 10=
24 =A0600<br>
601 603 625 +hsync +vsync (35.2 kHz)<br>
(II) fglrx(0): Modeline &quot;640x480&quot;x0.0 =A0 31.50 =A0640 656 720 84=
0 =A0480<br>
481 484 500 -hsync -vsync (37.5 kHz)<br>
(II) fglrx(0): Modeline &quot;640x480&quot;x0.0 =A0 25.18 =A0640 656 752 80=
0 =A0480<br>
490 492 525 -hsync -vsync (31.5 kHz)<br>
(II) fglrx(0): Modeline &quot;720x400&quot;x0.0 =A0 28.32 =A0720 738 846 90=
0 =A0400<br>
412 414 449 -hsync +vsync (31.5 kHz)<br>
(II) fglrx(0): Modeline &quot;1280x1024&quot;x0.0 =A0135.00 =A01280 1296 14=
40 1688<br>
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1024x768&quot;x0.0 =A0 78.75 =A01024 1040 113=
6 1312<br>
768 769 772 800 +hsync +vsync (60.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1024x768&quot;x0.0 =A0 65.00 =A01024 1048 118=
4 1344<br>
768 771 777 806 -hsync -vsync (48.4 kHz)<br>
(II) fglrx(0): Modeline &quot;832x624&quot;x0.0 =A0 57.28 =A0832 864 928 11=
52 =A0624<br>
625 628 667 -hsync -vsync (49.7 kHz)<br>
(II) fglrx(0): Modeline &quot;800x600&quot;x0.0 =A0 49.50 =A0800 816 896 10=
56 =A0600<br>
601 604 625 +hsync +vsync (46.9 kHz)<br>
(II) fglrx(0): Modeline &quot;1152x864&quot;x0.0 =A0108.00 =A01152 1216 134=
4 1600<br>
864 865 868 900 +hsync +vsync (67.5 kHz)<br>
(II) fglrx(0): Modeline &quot;1680x1050&quot;x0.0 =A0146.25 =A01680 1784 19=
60 2240<br>
1050 1053 1059 1089 -hsync +vsync (65.3 kHz)<br>
(II) fglrx(0): Modeline &quot;1280x1024&quot;x0.0 =A0135.00 =A01280 1296 14=
40 1688<br>
1024 1025 1028 1066 +hsync +vsync (80.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1280x1024&quot;x0.0 =A0108.00 =A01280 1328 14=
40 1688<br>
1024 1025 1028 1066 +hsync +vsync (64.0 kHz)<br>
(II) fglrx(0): Modeline &quot;1152x864&quot;x0.0 =A0108.00 =A01152 1216 134=
4 1600<br>
864 865 868 900 +hsync +vsync (67.5 kHz)<br>
<br>
<br>
Geraldo<br>
Sapere Aude =3D&gt; Non dvcor, dvco<br>
S=E3o Paulo, Brasil, -3gmt<br>
O&lt; ascii ribbon campaign - <a href=3D"http://www.asciiribbon.org" target=
=3D"_blank">www.asciiribbon.org</a><br>
site: <a href=3D"http://exdev.sf.net/" target=3D"_blank">http://exdev.sf.ne=
t/</a><br>
github: <a href=3D"http://github.com/geraldonetto" target=3D"_blank">http:/=
/github.com/geraldonetto</a><br>
msn: <a href=3D"mailto:geraldo_boca@hotmail.com">geraldo_boca@hotmail.com</=
a><br>
skype: geraldo-netto<br>
icq: 145-061-456<br>
_______________________________________________<br>
xorg mailing list<br>
<a href=3D"mailto:xorg@lists.freedesktop.org">xorg@lists.freedesktop.org</a=
><br>
<a href=3D"http://lists.freedesktop.org/mailman/listinfo/xorg" target=3D"_b=
lank">http://lists.freedesktop.org/mailman/listinfo/xorg</a><br>
</blockquote></p>

--000e0cd32f16dde9450480297728--

--===============1762336906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
xorg mailing list
xorg@lists.freedesktop.org
http://lists.freedesktop.org/mailman/listinfo/xorg
--===============1762336906==--
