From: Samuel Xu <samuel.xu.tech@gmail.com>
Subject: Question on libpixman's PIXMAN_FB_ACCESSORS
Date: Tue, 27 Jul 2010 08:59:51 +0800
Message-ID: <AANLkTi=yf-Rc6CZzxkCRzvcQD8cUnKWf8bTsCzamTFDJ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-x11-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type:content-transfer-encoding;
        bh=7C5RP0wV1BN7JnepGrD2o5IYjnWYEgNbBHOHH+u//5Y=;
        b=GGuPpMNrrsnz2NmT3gfaIDZlE/hQpbv+6etT4LQfGfbx1XUoSA/X2SGsf7XAOcIUji
         qtnx6vz3vfvvo8gTnajD3EveRwxWn2PlOMU1BvvS71yAqXUwg/0Bl9wSxoev6HWhvo6X
         HYaFrWJ30Y2uNwjO0Amqk1s4TrC690FIEa3i0=
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-x11@vger.kernel.org

I noticed the PIXMAN_FB_ACCESSORS might not be defined/enabled for
pixman lib in current build.
inside pixman-accessor.h
#ifdef PIXMAN_FB_ACCESSORS
=2E..
#else
=2E.
#endif

Could any kindly share viewpoint of PIXMAN_FB_ACCESSORS? E.g. Is it
obsolete or it only can be enabled for some platform with specific HW,
so some low-end platform can=92t turn it on?

Thanks!
