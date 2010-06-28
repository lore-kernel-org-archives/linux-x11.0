From: mafeusek@gmail.com
Subject: screen rotation - some questions.
Date: Mon, 28 Jun 2010 22:12:56 +0200
Message-ID: <umt4oceuncfr.fsf@gmail.com>
Mime-Version: 1.0
Return-path: <linux-x11-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:to:subject:x-mailer
         :organization:from:date:message-id:user-agent:mime-version
         :content-type;
        bh=K+yyXUm1kO/FSblSR33gzLO1ZNvF9sQoQFlzBryYbwM=;
        b=RvLl33+c4kSCGsAF1PS+/ubKf5A86fiK59vWrEwsQfFQHD89fLyMqgZ5+K6/wr0yEg
         aMNPtOcGHYS5y0MvoB6+CEhvtXuqSp4MxCd7LDqC+kBI2ArPFsIWh113jyUH4HSxct56
         Z3oBMnsEe72fqHVO4KEVA2X4UG8YRHfwkcp7Q=
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x11@vger.kernel.org

Hallo Group Members

I try to rotate screen on my old PIII 1Ghz.

I have following built in graphics card:
$ lspci
...
00:02.0 VGA compatible controller: Intel Corporation 82815 Chipset
Graphics Controller (CGC) (rev 04)
...

Unfortunately nothing of following works:
$ xrandr -o right
X Error of failed request:  BadMatch (invalid parameter attributes)
  Major opcode of failed request:  150 (RANDR)
  Minor opcode of failed request:  2 (RRSetScreenConfig)
  Serial number of failed request:  14
  Current serial number in output stream:  14
$ xrandr -o left
X Error of failed request:  BadMatch (invalid parameter attributes)
  Major opcode of failed request:  150 (RANDR)
  Minor opcode of failed request:  2 (RRSetScreenConfig)
  Serial number of failed request:  14
  Current serial number in output stream:  14

/etc/X11/xorg.conf:
Section "Device"
...
	Option "RandRRotation" "True"
	Option "Rotate" "CW"
...

/var/log/Xorg.0.log:
...
(**) intel(0): DPMS enabled
(II) intel(0): [DRI] installation complete
(II) intel(0): Direct rendering enabled
(WW) intel(0): Option "RandRRotation" is not used
(WW) intel(0): Option "Rotate" is not used
(==) RandR enabled
...

$ uname -a
Linux myPC 2.6.32-22-generic #36-Ubuntu SMP Thu Jun 3 22:02:19 UTC 2010 i686 GNU/Linux


Did anyone manage to rotate screen on this hardware?

I also have a chance to get Radeon 9200 SE agp card. Does this one allow
for screen rotation?

best regards,
Pawel
