From: Keith Duthie <psycho@albatross.co.nz>
Subject: Re: Upgrading Kernel kills X ...
Date: Sun, 23 Nov 2003 19:21:22 +1300 (NZDT)
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0311231915270.7773@loki.albatross.co.nz>
References: <F8E34394F337C74EA249580DEE7C240C111C27@chicken.machinevisionproducts.com>
Mime-Version: 1.0
Return-path: <linux-x11-owner@vger.kernel.org>
In-Reply-To: <F8E34394F337C74EA249580DEE7C240C111C27@chicken.machinevisionproducts.com>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x11@vger.kernel.org

On Thu, 20 Nov 2003, Brian McGrew wrote:

> It's just that under RedHat 9.0, a non-RedHat kernel upgrade kills my
> Xserver.  When it tries to start X, I get a signal 11.  Also, if I connect
> to the machine from another host, set my display and try and run X with gdb
> attached, even though there is no debug compiled in, I can see that
> apperantly, X is dying in a function that looks like it's trying to probe
> the PCI bus.

Does this happen if you disable dri/glx in XF86Config?

Does this happen if you downgrade your build tools (binutils, gcc) to the
version in RedHat 7.3?
-- 
Just because it isn't nice doesn't make it any less a miracle.
     http://users.albatross.co.nz/~psycho/     O-   -><-
