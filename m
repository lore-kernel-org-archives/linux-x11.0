From: Hex1a4 <hex1a4@gmail.com>
Subject: Re: X11 terminal
Date: Sun, 22 Jun 2008 04:45:20 +0000 (UTC)
Message-ID: <g3kld0$jsm$1@ger.gmane.org>
References: <1025950786.15272.15.camel@tuxedo.homelinux.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-x11-owner@vger.kernel.org>
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-x11@vger.kernel.org

In the time of Sat, 06 Jul 2002 06:19:35 -0400, thus spoke Shaun W.
Grogan:

> What I want to do is have a tail of my logs displayed on my desktop.  Is
> there a way to make a borderless terminal?  Or some other way to achieve
> this?  Basically I want the tail to look like it is part of the desktop.
> 
> Shaun W. Grogan
> 

Depends on the terminal you use.  Xfce Terminal for instance can be run 
with the --hide-borders option.  If your terminal doesn't have an option 
like this you can use devilspie(1).  Combine this with alltray(2) and 
you'll have a terminal on your desktop.  I use alltray to put Xfce 
Terminal on my Xfce desktop like so:

/usr/bin/alltray -x --sticky --geometry 500x955-0+90 --show --skip-
taskbar --no-alltray "xfce4-terminal --working-directory=$HOME --hide-
menubar --hide-borders --hide-toolbars"

(1)http://burtonini.com/blog/computers/devilspie
(2)http://alltray.sourceforge.net/

-- 
hex1a4.net

