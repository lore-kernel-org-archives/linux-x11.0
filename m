From: Daniel Senderowicz <daniel@bicho.SynchroDS.COM>
Subject: mouse/pad problem in X
Date: Sat, 17 Aug 2002 09:18:35 -0700 (PDT)
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <200208171618.JAA27394@bicho.SynchroDS.COM>
Return-path: <linux-x11-owner@vger.kernel.org>
List-Id: <linux-x11.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: xwindow-l@OpenITx.com
Cc: daniel@bicho.SynchroDS.COM, linux-x11@vger.kernel.org

Hi,

I have a Dell laptop M50 on which I installed RH-7.3 linux. Everything
seems OK, however there are a couple of X applications (spice3 and
xgremlin) that are not properly working. The problem pertains to
the pad's buttons behaviour. In one of these programs I started
poking around (I'm not an X programmer) and noticed that when I
press one of the 2 buttons, instead of just getting the "type"
ButtonPress in the XEvent structure, I get first a LeaveNotify and
an EnterNotify, however the cursor doesn't show any jumping behaviour.
This does not happen when I simultaneously press the Ctrl key. Is
this something that someone observed before? Is there any configuration
procedure to modify this behaviour? Thanks in advance.

Dan
