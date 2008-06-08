From: "mohammed shareef" <mdshareef@gmail.com>
Subject: x11 fails with floating point exception
Date: Sun, 8 Jun 2008 15:33:59 +0530
Message-ID: <a1d91fa0806080303w470fe13eo59387e7d21d3fa2b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=va5EisDpGaYf5aOLoefDH0ZnuGLKFJWUBPYlurreOJ0=;
        b=wDLQV5bjlkERcwFqIFAXinJmvcDCNljOz4j/8TRBod0xR3H/q9kDY4FCiSfZL4gr75
         a1UYJ57TMxyyhlfKE5NAGNhjijOQkjyUKYIj2yzck++pK+Tj4HuZxCc4AXQ2LL4IEghQ
         lF9RtUzKFK59eSDQiup+50fiaJheSHMCwAiTc=
Content-Disposition: inline
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-x11@vger.kernel.org

Hi,

i am new to linux.

when i compile x-windows, the xlib--X11 fails with a floating point exception.

../src/util/makekeys < /usr/include/X11/keysymdef.h > ks_tables_h
/bin/sh: line 1: 12048 Floating point exception../src/util/makekeys <
/usr/include/X11/keysymdef.h > ks_tables_h
make[1]: *** [ks_tables.h] Error 136
make[1]: Leaving directory `/root/omap5912/xwin_snapshot/xlibs/X11/src'
make: *** [install-recursive] Error 1

could someone please tell me how to solve this

thank you,
Shareef
