From: Glynn Clements <glynn.clements@virgin.net>
Subject: Re: XDM Suddenly Doesn't Start on Boot
Date: Tue, 17 Sep 2002 22:13:14 +0100
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <15751.39658.789951.297701@cerise.nosuchdomain.co.uk>
References: <Pine.LNX.4.21.0209171657220.2788-100000@melake.erols.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0209171657220.2788-100000@melake.erols.com>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Marshall Lake <mlake@melake.erols.com>
Cc: linux-admin@vger.kernel.org, linux-x11@vger.kernel.org


Marshall Lake wrote:

> I'm running 2.4.19 on an Intel box.  I haven't had to reboot for at
> least a month but suddenly now when I do reboot XDM does not start and I
> get the error message:
> rshd: getpeername: Socket operation on non-socket

What does rshd have to do with xdm? For that matter, why are you
running rshd at all?

> I start XDM from the last line in /etc/inittab:
> x:5:respawn:/etc/X11/prefdm -nodaemon
> 
> I've been running and rebooting this system (Mandrake) for over a year
> with no problems until now.
> 
> Everything else (including ftp, http, telnet) seems to be functioning
> fine.
> 
> Can someone clue me in to what might be going on and how I can correct the
> problem?  Thanks.

By default, XDM logs any errors to /var/log/xdm-errors, although this
can be changed via the xdm-config file (typically either
/usr/lib/X11/xdm/xdm-config or /etc/X11/xdm/xdm-config).

Does /etc/sysconfig/desktop exist? What does it contain?

-- 
Glynn Clements <glynn.clements@virgin.net>
