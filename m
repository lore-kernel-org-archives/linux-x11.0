From: Marshall Lake <mlake@melake.erols.com>
Subject: Re: XDM Suddenly Doesn't Start on Boot
Date: Tue, 17 Sep 2002 19:05:50 -0400 (EDT)
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0209171900540.1900-100000@melake.erols.com>
References: <15751.44568.225724.78384@cerise.nosuchdomain.co.uk>
Mime-Version: 1.0
Return-path: <linux-x11-owner@vger.kernel.org>
In-Reply-To: <15751.44568.225724.78384@cerise.nosuchdomain.co.uk>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Glynn Clements <glynn.clements@virgin.net>
Cc: linux-admin@vger.kernel.org, linux-x11@vger.kernel.org


> > Both /usr/lib/X11/xdm/xdm-config and /etc/X11/xdm/xdm-config contain a
> > line pointing to /var/log/xdm-error.log but that file is empty.

> Is the date stamp recent? If not, that would suggest that xdm isn't
> getting run.

The date stamp is more than a year old ... probably from when I first
installed the system.

> BTW, just to check the obvious, inittab is configured to start in
> runlevel 5:
> 	id:5:initdefault:
> right?

Well, I'll be ... the run level was set at 3.  When I changed it to 5 xdm
runs at boot.  How in the world did it get set to 3?  I haven't messed
with that file in months (more than 6) and I've rebooted several times in
the past two to three months.  I must be losin' it.

Thanks for the help.

-- 
Marshall Lake -- mlake@melake.erols.com -- http://melake.erols.com

