From: "Jiri Hladky" <hladky.jiri@seznam.cz>
Subject: Configuring mouse for XTerm
Date: Fri, 22 Nov 2002 12:43:53 -0000
Sender: linux-x11-owner@vger.kernel.org
Message-ID: <NJENKOEGKMPDEHAMPCBBAEOACAAA.hladky.jiri@seznam.cz>
Reply-To: <hladky.jiri@seznam.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
List-Id: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-x11@vger.kernel.org

Hello!

Perhaps can somebody help me with the following problem:

I would like to change the behaviour of third button mouse in the xterm. It
should execute My_shell_script and as the argument of this command the text
selected in xterm should be used. The idea is to select the
name_of_the_file, third button click, and the application, which can work
with file, will be started.

I think that the syntax should be like:
<Btn3Down> : string ("My_shell_script") insert-selection(PRIMARY,
CUT-BUFFER0)
string(0x0d) \n\\

However, I don't know where to add this definition. I have tried to edit the
files
/root/.Xdefaults
/usr/lib/X11/app_defaults/XTerm
/usr/lib/X11/app_defaults/XTerm-Color

No succes, the behaviour of the third mouse button didn't change. I'm also
not sure which string should precede <Btn3Down>...
Something like *VT100* or *VT102* or perhaps xterm_color*VT100.Translations?

I would appreciate any help. If you know how to define this behaviour for
KDE konsole, it would be even better than for xterm.

Many thanks!
Jiri



