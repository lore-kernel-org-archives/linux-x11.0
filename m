From: Glynn Clements <glynn.clements@virgin.net>
Subject: Re: XDM Suddenly Doesn't Start on Boot
Date: Tue, 17 Sep 2002 23:35:04 +0100
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <15751.44568.225724.78384@cerise.nosuchdomain.co.uk>
References: <15751.39658.789951.297701@cerise.nosuchdomain.co.uk>
	<Pine.LNX.4.21.0209171803410.3191-100000@melake.erols.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0209171803410.3191-100000@melake.erols.com>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Marshall Lake <mlake@melake.erols.com>
Cc: linux-admin@vger.kernel.org, linux-x11@vger.kernel.org


Marshall Lake wrote:

> > > I start XDM from the last line in /etc/inittab:
> > > x:5:respawn:/etc/X11/prefdm -nodaemon
> 
> > By default, XDM logs any errors to /var/log/xdm-errors, although this
> > can be changed via the xdm-config file (typically either
> > /usr/lib/X11/xdm/xdm-config or /etc/X11/xdm/xdm-config).
> 
> Both /usr/lib/X11/xdm/xdm-config and /etc/X11/xdm/xdm-config contain a
> line pointing to /var/log/xdm-error.log but that file is empty.

Is the date stamp recent? If not, that would suggest that xdm isn't
getting run.

> > Does /etc/sysconfig/desktop exist? What does it contain?
> 
> That file doesn't exist.

The contents of that file determine which display manager is used (at
least, that's the case for RedHat 6.2; examine the /etc/X11/prefdm
script to confirm which file is actually used).

If the file doesn't exist, or it doesn't contain the right data, the
prefdm script looks for gdm, kdm an xdm, in that order, and uses the
first one which it finds. IOW, xdm will only be used if neither gdm
nor kdm can be found. If xdm can't be found either, prefdm will exit
without starting any display manager (and without displaying any error
message of its own).

Personally, I changed inittab to start xdm directly:

	x:5:respawn:/usr/X11R6/bin/xdm -nodaemon

BTW, just to check the obvious, inittab is configured to start in
runlevel 5:

	id:5:initdefault:

right?

-- 
Glynn Clements <glynn.clements@virgin.net>
