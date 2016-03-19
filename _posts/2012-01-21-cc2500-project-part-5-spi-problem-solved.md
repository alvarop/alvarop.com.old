---
layout: post
title: CC2500 Project (Part 5) -- SPI Problem Solved!
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
  blogger_permalink: /2012/01/cc2500-project-part-5-spi-problem.html
  dsq_thread_id: '615577441'
---
So I wrote last week about getting UART working on the MSP430G2533 but having major problems with the SPI interface... I was so frustrated that I caved in and purchased a <a href="http://www.saleae.com/logic/" target="_blank">Salae Logic</a> analyzer. It finally arrived today, and I had a chance to test it.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7201.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="424" src="http://4.bp.blogspot.com/-NZ0l9GDPBrs/Txog2E48kQI/AAAAAAAABBI/39CLyleqaYk/s640/IMG_7201.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Salae Logic in action!</td></tr></tbody></table>

As soon as I opened the box, I connected it to sniff the SPI lines between my msp430 and cc2500 radio. It took me maybe 10-15 minutes to set up everything, including the Salae software to decode SPI on the fly. I ran my radio-setup code and observed the logic output. It seemed like something was happening, but it wasn't quite working.

<table cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/25331.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="363" src="http://4.bp.blogspot.com/-HFvxD6Nnm6U/Txohag3Lu6I/AAAAAAAABBQ/fNnRqRokshE/s640/25331.png" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">First capture with msp430g2533</td></tr></tbody></table>

To get a better idea as to what it should look like, I connected my msp430g2452, which had a working SPI link with the radio. The first thing I noticed was an error saying that the clock polarity was inverted. Aha! So the SPI clock on the 2533 was low when idle, while the specification says it's supposed to be high.So I went into the datasheet and figured out how to fix the clock problem.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/2452.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="364" src="http://3.bp.blogspot.com/-57Fo6dLUBzY/Txoj3iAAi9I/AAAAAAAABBY/Dk1gIG8hAnI/s640/2452.png" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">'Correct' capture with the msp430g2452</td></tr></tbody></table>

I tried it again and, not surprisingly, it failed. Looking more carefully at the MISO/MOSI lines, I realized that they were backwards! Turns out that the SPI IO pins do not match between the msp4302533 and the 2452. I swapped two wires and everything started working!

While I was really happy I fixed the problem, this means that my previously mentioned PCB will only work with one of the two devices. My plan is to use the more expensive 2533 as a PC-to-radio bridge, since it has both a hardware UART to talk to the pc and hardware SPI to talk to the radio. The cheaper 2452 only has one SPI to use the radio.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/IMG_7202.jpg" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="426" src="http://4.bp.blogspot.com/-XAAQ7gOz8A8/Txol3Ay7KrI/AAAAAAAABBg/GYd1Sm3QK1M/s640/IMG_7202.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Launchpad with cc2500 Radio and Salae logic</td></tr></tbody></table>

In the end, I'm still happy. The Salae logic was extremely helpful and easy to use. It took me less than an hour to solve a problem I hadn't figure out in two days! Now I will be able to focus much more time in coming up with good radio libraries, instead of debugging silly problems.

