From: Guillaume <Kowaio@gmail.com>
Subject: Copy/paste images from/to clipboard Linux with x11
Date: Wed, 27 May 2009 09:51:59 +0000 (UTC)
Message-ID: <loom.20090527T093536-432@post.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-x11-owner@vger.kernel.org>
Sender: linux-x11-owner@vger.kernel.org
List-ID: <linux-x11.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-x11@vger.kernel.org

Hello everybody,

I'm a french student and I'm doing an internship in 
an image processing software company. I'm new at Linux and X11,
and I'm experiencing some problems about the copy/paste of images.

I already found a source code which explain how to get
text from the clipboard, but I have some problems with images.

Here's my code :

map<string, int> datatypes;
if( datatypes.empty() )
{
		datatypes["PIXMAP"] = 1;
}

Atom sel = XA_PRIMARY;
XA_TARGETS = XInternAtom( disp, "TARGETS", False );
XConvertSelection( disp, sel, XA_TARGETS, sel, w, CurrentTime );
XFlush(disp);

for( ; ; )
{
   XNextEvent( disp, &e );

   if( e.type == SelectionNotify )
   {
      Atom target = e.xselection.target;

      if( e.xselection.property != None )
      {
        Property prop = ReadProperty( disp, w, sel );

        //If we're being given a list of targets (possible conversions)
        if( target == XA_TARGETS && !sent )
        {
          sent = 1;
          request = PickTargetFromTargets( disp, prop, datatypes );
           if( request != None )
           {
            XConvertSelection( disp, sel, request, sel, w, CurrentTime );
           }
         }
         else
         if( target == request )
         {
           printf("data %d\n",prop.data);
   Pixmap pix = XCreateBitmapFromData( disp, w, (char*)prop.data, 236, 110 );

                    break;
          }

          XFree(prop.data);
       }
     }
   }



Explications :
I'm doing a loop to try and identify what's in 
the selection made by the user in an 
other window than the application.

At the beginning, target = XA_TARGETS, then 
ReadProperty returns in the struct property
the data and the atom type of the selection.
Then I try to request a Pixmap atom, in order 
to get the picture in the clipboard.

As soon as target = request = XA_PIXMAP, I create 
the Pixmap with the data get with ReadProperty.

ReadProperty is doing an XGetWindowPropety.

My problem is, the atom type returned by 
this XGetWindowProperty is an XA_ATOM.
So I don't get it, the image selected with CTRL+C
in firefox for instance isn't a XA_PIXMAP, 
it's an XA_ATOM ?

So my 2nd question is, does the data returned are 
the picture ? If yes, how to recreate the picture in order to
display it in my application, and if no, have you got some
examples on how to get and copy images from/to clipboard
because I'm losing my mind trying to find docs and explanations
about that.

Thank you very much for your help !

Guillaume.

