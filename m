From: Marshall Lake <mlake@melake.erols.com>
Subject: Re: XDM Suddenly Doesn't Start on Boot
Date: Tue, 17 Sep 2002 18:08:29 -0400 (EDT)
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0209171803410.3191-100000@melake.erols.com>
References: <15751.39658.789951.297701@cerise.nosuchdomain.co.uk>
Mime-Version: 1.0
Return-path: <linux-x11-owner@vger.kernel.org>
In-Reply-To: <15751.39658.789951.297701@cerise.nosuchdomain.co.uk>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Glynn Clements <glynn.clements@virgin.net>
Cc: linux-admin@vger.kernel.org, linux-x11@vger.kernel.org


> > I'm running 2.4.19 on an Intel box.  I haven't had to reboot for at
> > least a month but suddenly now when I do reboot XDM does not start and I
> > get the error message:
> > rshd: getpeername: Socket operation on non-socket

> What does rshd have to do with xdm?

I don't know.  The error message above is the only one that shows at boot,
and xdm seems to be the only thing that's not running properly, so I
figured that there might be a connection.

> For that matter, why are you running rshd at all?

I run rsync on my internal network for backup purposes and it seems to
need rshd to run.

> > I start XDM from the last line in /etc/inittab:
> > x:5:respawn:/etc/X11/prefdm -nodaemon

> By default, XDM logs any errors to /var/log/xdm-errors, although this
> can be changed via the xdm-config file (typically either
> /usr/lib/X11/xdm/xdm-config or /etc/X11/xdm/xdm-config).

Both /usr/lib/X11/xdm/xdm-config and /etc/X11/xdm/xdm-config contain a
line pointing to /var/log/xdm-error.log but that file is empty.

> Does /etc/sysconfig/desktop exist? What does it contain?

That file doesn't exist.

-- 
Marshall Lake -- mlake@melake.erols.com -- http://melake.erols.com

