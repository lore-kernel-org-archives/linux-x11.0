From: Marshall Lake <mlake@melake.erols.com>
Subject: XDM Suddenly Doesn't Start on Boot
Date: Tue, 17 Sep 2002 16:59:14 -0400 (EDT)
Sender: linux-admin-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0209171657220.2788-100000@melake.erols.com>
Mime-Version: 1.0
Return-path: <linux-admin-owner@vger.kernel.org>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-admin@vger.kernel.org, linux-x11@vger.kernel.org


I'm running 2.4.19 on an Intel box.  I haven't had to reboot for at
least a month but suddenly now when I do reboot XDM does not start and I
get the error message:
rshd: getpeername: Socket operation on non-socket

I start XDM from the last line in /etc/inittab:
x:5:respawn:/etc/X11/prefdm -nodaemon

I've been running and rebooting this system (Mandrake) for over a year
with no problems until now.

Everything else (including ftp, http, telnet) seems to be functioning
fine.

Can someone clue me in to what might be going on and how I can correct the
problem?  Thanks.

-- 
Marshall Lake -- mlake@melake.erols.com -- http://melake.erols.com

