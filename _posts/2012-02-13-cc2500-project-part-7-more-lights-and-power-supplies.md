---
layout: post
title: CC2500 Project (Part 7) - More Lights and Power Supplies!
categories:
- cc2500
- projects
tags: []
status: publish
type: post
comments: true
meta:
  blogger_blog: blog.alvarop.com
  blogger_author: ''
  blogger_permalink: /2012/02/cc2500-project-part-7-more-lights-and.html
  dsq_thread_id: '614650587'
---
Here's another quick update (with lots of pictures and a video!) I ordered another RGB LED strip from adafruit in order to test how my system works with multiple devices. I don't have my PCB's yet (I shipped them to NY by mistake...), so I had to build everything on breadboards.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7221.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="425" src="http://1.bp.blogspot.com/-YYxvFZsmdEk/TzhaOzMJkJI/AAAAAAAABQo/4HCRC96C4jY/s640/IMG_7221.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">My messy work space.</td></tr></tbody></table>

The main problem with my previous design is that it required two separate power supplies. The LED strip runs off 12v, while the microcontroller and radio run at 3.33v. I had a couple of MC34063A DC/DC converters laying around, so I figured I'd make a 12-3.3v converter. I also had an LD33V linear regulator, so I decided to try them both.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7225.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://4.bp.blogspot.com/--LIDNVpuyQQ/TzhaPUqoi2I/AAAAAAAABQw/ysiVtoVPd5I/s640/IMG_7225.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Device with linear regulator (left) and DC/DC switching regulator (right).</td></tr></tbody></table>

Unfortunately, I didn't have the exact parts required to make the switching regulator, so I had to use the closest available. This produced an extremely noisy (± 400mV) output, which resulted in a non-working microcontroller. I was able to temporarily solve the problem with some decoupling capacitors, but I still need to get the right parts to make it more stable. What happened was that the microcontroller would start and then just hang or reset at random. At first I thought it was a code issue, but then I looked at the power supply... I'm glad I bought an oscilloscope, otherwise this problem would have been pretty hard to solve.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7227.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://1.bp.blogspot.com/-lVpnZAH1sYw/TzhaPlPqVJI/AAAAAAAABQ4/ZfSM8kNabtw/s640/IMG_7227.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">That's a huge 0.33 Ohm resistor (It's all I had...)</td></tr></tbody></table>

Since the DC/DC converter was not behaving too well, I decided to use the linear regulator with the other circuit. Dropping 12v to 3.3v with a linear regulator produces a lot of heat. I had to get a heat sink, otherwise I would burn my hand if I touched it. It's a huge waste of power, but it works for now...

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7228.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://4.bp.blogspot.com/-Y6CCC4LLsTI/TzhaQEZhOmI/AAAAAAAABRA/L0DKsQSIoKE/s640/IMG_7228.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Dropping from 12v to 3.3v generates a LOT of heat. (Thankfully, I had a heat sink)</td></tr></tbody></table>

In order to drive the second LED strip, I had to put together another RGB LED driver board. It's just three MOSFETs, along with some resistors and BJT's to drive them. I connect the 12v power supply directly to these, and then connect it to the microcontroller board's power supply. The next thing to do will be to have them all on the same PCB...

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7231.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://1.bp.blogspot.com/-pCafsCpPH3U/TzhaQUrvIQI/AAAAAAAABRI/ihHf6i_s9to/s640/IMG_7231.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">RGB LED Driver (There are some surface mount resistors and transistors on the other side)</td></tr></tbody></table>

So what did I end up doing with these? Well, I put one on top of a shelf, and the second under... Ok, I don't know what it's called. It might be a kitchen counter-top, but I'm not sure. Here are some photos that will hopefully make more sense.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7236.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://1.bp.blogspot.com/-P8SL2K04x5U/TzhaQve_LxI/AAAAAAAABRQ/9WC9GHecuu8/s640/IMG_7236.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Shelf plus LED strip.</td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7240.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://2.bp.blogspot.com/-26Hp3GT4bV8/TzhaRBguaAI/AAAAAAAABRY/1D6_9vm9m14/s640/IMG_7240.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">I'm not sure what that is called(counter-top?), but that's where I hung the second strip.</td></tr></tbody></table>

I tried getting a video of the whole setup, but my camera doesn't seem to like low light situations. It looks much better in person!

<div style="text-align: center;"><iframe allowfullscreen="" frameborder="0" height="360" src="http://www.youtube.com/embed/aQ8kjicR9g8" width="640"></iframe></div>
