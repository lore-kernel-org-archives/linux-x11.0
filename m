From: "Didier Pauly" <didier.pauly@cgey.com>
Subject: Xfree86 allocation colormap error
Date: Mon, 20 Jan 2003 09:59:27 +0100
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <07f701c2c062$3d955500$97d1430a@sudouest.capgemini.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-x11@vger.kernel.org

I have an application running on a unix DEC Alpha platform.

This application don't support more than 8 planes depth.

I can launch this application from various Xservers like Sun, Exceed X
emulator, ...

But when i try to launch it from Redhat 7.3 (Xfree86 4.2), the application
don't run because colormap entry allocation fails.

I don't understand why. I had run dpyinfo utility to see differences between
Xfree86 and other used Xservers, but i have not found in the results heavy
differences.

Thanks for your responses.
Didier Pauly

================================================
Abstracts of xdpyinfo

Dec server xdpyinfo (the application server):
--------------------------------------------
version number:    11.0
vendor string:    DECWINDOWS Digital Equipment Corporation Digital UNIX V4.0
vendor release number:    1
maximum request size:  4194300 bytes
motion buffer size:  100
bitmap unit, bit order, padding:    32, LSBFirst, 32
image byte order:    LSBFirst
number of supported pixmap formats:    6
supported pixmap formats:
    depth 1, bits_per_pixel 1, scanline_pad 32
    depth 4, bits_per_pixel 8, scanline_pad 32
    depth 8, bits_per_pixel 8, scanline_pad 32
    depth 12, bits_per_pixel 32, scanline_pad 32
    depth 24, bits_per_pixel 32, scanline_pad 32
    depth 32, bits_per_pixel 32, scanline_pad 32
keycode range:    minimum 8, maximum 255
focus:  window 0x180002e, revert to None
number of extensions:    20
    Adobe-DPS-Extension
    BIG-REQUESTS
    DEC-XTRAP
    DOUBLE-BUFFER
    DPMS
    DPSExtension
    Keyboard-Management-Extension
    MIT-SCREEN-SAVER
    MIT-SHM
    MIT-SUNDRY-NONSTANDARD
    Multi-Buffering
    SHAPE
    SYNC
    Shared-Memory Transport
    XC-MISC
    XIE
    XInputExtension
    XKEYBOARD
    XTEST
    XVideo
default screen number:    0
number of screens:    1

screen #0:
  dimensions:    1280x1024 pixels (342x274 millimeters)
  resolution:    95x95 dots per inch
  depths (1):    8
  root window id:    0x2d
  depth of root window:    8 planes
  number of colormaps:    minimum 1, maximum 1
  default colormap:    0x21
  default number of colormap cells:    256
  preallocated pixels:    black 1, white 0
  options:    backing-store YES, save-unders YES
  largest cursor:    64x64
  current input event mask:    0x70003c
    ButtonPressMask          ButtonReleaseMask        EnterWindowMask
    LeaveWindowMask          SubstructureRedirectMask FocusChangeMask
    PropertyChangeMask
  number of visuals:    10
  default visual id:  0x22
  visual:
    visual id:    0x22
    class:    PseudoColor
    depth:    8 planes
    available colormap entries:    256
    red, green, blue masks:    0x0, 0x0, 0x0
    significant bits in color specification:    8 bits
  visual:
.....


Sun xdpyinfo (It works from this terminal):
-------------------------------------------
vendor string:    Sun Microsystems, Inc.
vendor release number:    3610
maximum request size:  262140 bytes
motion buffer size:  256
bitmap unit, bit order, padding:    32, MSBFirst, 32
image byte order:    MSBFirst
number of supported pixmap formats:    5
supported pixmap formats:
    depth 1, bits_per_pixel 1, scanline_pad 32
    depth 8, bits_per_pixel 8, scanline_pad 32
    depth 16, bits_per_pixel 16, scanline_pad 32
    depth 24, bits_per_pixel 32, scanline_pad 32
    depth 32, bits_per_pixel 32, scanline_pad 32
keycode range:    minimum 8, maximum 132
focus:  window 0x1c00009, revert to Parent
number of extensions:    27
    AccessX
    Adobe-DPS-Extension
    DOUBLE-BUFFER
    DPMS
    DPSExtension
    Extended-Visual-Information
    LBX
    MIT-SCREEN-SAVER
    MIT-SHM
    MIT-SUNDRY-NONSTANDARD
    Multi-Buffering
    RECORD
    SECURITY
    SHAPE
    SUN_ALLPLANES
    SUN_DGA
    SUN_OVL
    SUN_SME
    SYNC
    SolarisIA
    TOG-CUP
    XC-APPGROUP
    XC-MISC
    XIE
    XInputDeviceEvents
    XInputExtension
    XTEST
default screen number:    0
number of screens:    1

screen #0:
  dimensions:    1152x900 pixels (325x254 millimeters)
  resolution:    90x90 dots per inch
  depths (3):    1, 8, 24
  root window id:    0x29
  depth of root window:    8 planes
  number of colormaps:    minimum 1, maximum 1
  default colormap:    0x20
  default number of colormap cells:    256
  preallocated pixels:    black 0, white 1
  options:    backing-store YES, save-unders YES
  largest cursor:    unlimited
  current input event mask:    0x38003f
    KeyPressMask             KeyReleaseMask           ButtonPressMask
    ButtonReleaseMask        EnterWindowMask          LeaveWindowMask
    SubstructureNotifyMask   SubstructureRedirectMask FocusChangeMask
  number of visuals:    5
  default visual id:  0x22
  visual:
    visual id:    0x22
    class:    PseudoColor
    depth:    8 planes
    available colormap entries:    256
    red, green, blue masks:    0x0, 0x0, 0x0
    significant bits in color specification:    8 bits
  visual:
 .....



RedHat XFree86 xdpyinfo (It doesn't work from this terminal):
------------------------------------------------------------

version number:    11.0
vendor string:    The XFree86 Project, Inc
vendor release number:    40200000
XFree86 version: 4.2.0
maximum request size:  4194300 bytes
motion buffer size:  256
bitmap unit, bit order, padding:    32, LSBFirst, 32
image byte order:    LSBFirst
number of supported pixmap formats:    7
supported pixmap formats:
    depth 1, bits_per_pixel 1, scanline_pad 32
    depth 4, bits_per_pixel 8, scanline_pad 32
    depth 8, bits_per_pixel 8, scanline_pad 32
    depth 15, bits_per_pixel 16, scanline_pad 32
    depth 16, bits_per_pixel 16, scanline_pad 32
    depth 24, bits_per_pixel 32, scanline_pad 32
    depth 32, bits_per_pixel 32, scanline_pad 32
keycode range:    minimum 8, maximum 255
focus:  window 0x260000b, revert to PointerRoot
number of extensions:    27
    BIG-REQUESTS
    DOUBLE-BUFFER
    DPMS
    Extended-Visual-Information
    FontCache
    GLX
    LBX
    MIT-SCREEN-SAVER
    MIT-SHM
    MIT-SUNDRY-NONSTANDARD
    RECORD
    RENDER
    SECURITY
    SGI-GLX
    SHAPE
    SYNC
    TOG-CUP
    XC-APPGROUP
    XC-MISC
    XFree86-Bigfont
    XFree86-DGA
    XFree86-Misc
    XFree86-VidModeExtension
    XInputExtension
    XKEYBOARD
    XTEST
    XVideo
default screen number:    0
number of screens:    1

screen #0:
  dimensions:    1280x1024 pixels (401x302 millimeters)
  resolution:    81x86 dots per inch
  depths (7):    8, 1, 4, 15, 16, 24, 32
  root window id:    0x49
  depth of root window:    8 planes
  number of colormaps:    minimum 1, maximum 1
  default colormap:    0x20
  default number of colormap cells:    256
  preallocated pixels:    black 0, white 1
  options:    backing-store NO, save-unders NO
  largest cursor:    64x64
  current input event mask:    0xd84031
    KeyPressMask             EnterWindowMask          LeaveWindowMask
    KeymapStateMask          SubstructureNotifyMask
SubstructureRedirectMask
    PropertyChangeMask       ColormapChangeMask
  number of visuals:    8
  default visual id:  0x27
  visual:
    visual id:    0x27
    class:    PseudoColor
    depth:    8 planes
    available colormap entries:    256
    red, green, blue masks:    0x0, 0x0, 0x0
    significant bits in color specification:    8 bits
  visual:


