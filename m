From: =?gb2312?Q?=22=C0=EE=D5=E6=C4=DC=22?= <lizhenneng@kylinos.com.cn>
Subject: Supporting ATI Radeon chipset RS780(RV710) video boards in
 framebuffer of linux kernel
Date: Thu, 17 Jan 2013 19:50:16 +0800
Message-ID: <0ea45077bcdbf075dc61cfe710339f1d.squirrel@mail.kylinos.com.cn>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-x11-owner@vger.kernel.org>
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-x11@vger.kernel.org

Kernel supports RV710 in drivers/gpu/drm/radeon(r600),but I want gpu
acceleration in framebuffer for RV710 to use in directfb, I try to migrate
code from drivers/gpu/drm/radeon to drivers/video/aty/ to support
directfb, but it's very difficulty, because I have not the datasheet for
RV710, I don't konw how to set registers to draw a line, or a rectangle,
if someone has the datasheet for rv710, please sent me, thanks very
much!!!


