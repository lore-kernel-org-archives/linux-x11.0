From: Davide Nitti <davidenitti@gmail.com>
Subject: Random X lockup
Date: Fri, 15 Jun 2007 01:02:05 +0200
Message-ID: <4671C8ED.9050703@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
Sender: linux-x11-owner@vger.kernel.org
List-Id: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-x11@vger.kernel.org

I have a problem with X, I have random lockup of X, when happen i can't 
use mouse or keyboard.
Using a SSH remote session I can see that X taking 99.9% cpu.
I have this problem with all version of kernel, linux distributions, 
xorg versions.
Reading some forum, I can conclude:

- The crash occurs on various hardware
-- CPU: P4 3Ghz, AMD Athlon Thunderbird 1400, AMD Athlon 900Mhz, Athlon 
XP 1500+, Pentium III 866MHz
-- GFX cards: Radeon 9200, Radeon 9700, NVidia GeForce2 GTS/Pro, GeForce 
Ultra 5700, Geforce FX 5200
-- M/B: Abit AT7 (VIA KT333), SiS P4S61, (TODO add more mobos)
-- Mem: various sizes

- It occurs on various w/ms like: kde, gnome, ion2, fluxbox

- It occurs on various kernel versions: 2.4.23-ck1 - 2.6.21

- It occurs on various X versions:
--XFree 4.3 - ??
--Xorg up to 7.2

-Reports in various distributions: debian, mandrake, fedora, gentoo, 
ubuntu, opensuse

Sympthoms:

- X CPU usage 100%
- Keyboard is not working
- Mouse is working but nothing is clickable (in some cases mouse is not 
working any more)
- Magic SysRq is possible
- SSHing in from remote server and killing X is possible.

I can't solve this problem since years :-(
please help me!
Thanks

Davide Nitti
