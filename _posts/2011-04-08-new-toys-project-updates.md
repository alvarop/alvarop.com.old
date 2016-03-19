---
layout: post
title: New Toys – Project Updates
categories:
- projects
tags: []
status: publish
type: post
comments: true
meta:
  blogger_blog: blog.alvarop.com
  blogger_author: ''
  blogger_permalink: /2011/04/new-toys-project-updates.html
  dsq_thread_id: '622585806'
---
I have been working on a few projects recently. Two of them involve having custom PCBs made. I'm currently waiting for them to arrive. In order to prototype and test the circuits, I had to order a bunch of parts, so I took advantage of the buying spree to get myself some better tools.

My favourite so far is my new Agilent U1251A Multimeter. After seeing the great review of the U1253A (which is just the OLED display version of this one, instead of LCD) on the <span id="goog_925977509"></span><a href="http://www.eevblog.com/2010/01/24/eevblog-56-agilent-u1253a-oled-multimeter-review-teardown/">EEVBlog<span id="goog_925977510"></span></a>, I found one for a decent price and decided to get it.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://www.flickr.com/photos/apg88/5601299913" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" src="http://farm6.static.flickr.com/5264/5601299913_c5d91751ae_z.jpg" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Agilent U1251A</td></tr></tbody></table>

Another purchase was a vaccum base vice that can hold small-ish circuit boards. Since I'm going to be doing some surface mount soldering for my intervalometer project, I wanted to make sure I had something better than my helping hands to hold the boards.
<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://www.flickr.com/photos/apg88/5601298735" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" src="http://farm6.static.flickr.com/5263/5601298735_96f2640466_z.jpg" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">New Vice</td></tr></tbody></table>

I plan on doing full write ups of both of these projects once I finish, but here are a few details.
The first one is an intervalometer for my Canon camera which will use an Attiny13 microcontroller and a small CR2032 battery. It will have a configurable time interval and is only 1x1 inches.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://www.flickr.com/photos/apg88/5601881714" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" src="http://farm6.static.flickr.com/5309/5601881714_a6f63e5285.jpg" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Intervalometer PCB</td></tr></tbody></table>

The second one is a simple breakout board for my MBED microcontroller. I plan on using a few of these to permanently attach sets of sensors and other peripherals, while still being able to swap the main MBED board around. It's not the most exiting PCB, but I'm trying out different services to see which one I like better. I ordered the intervalometer board through <a href="http://www.batchpcb.com/">BatchPCB</a> and the mbed one from <a href="http://pcb.laen.org/">DorkbotPDX</a>. I will also do a write-up about those when I get them.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://www.flickr.com/photos/apg88/5601881698" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" src="http://farm6.static.flickr.com/5306/5601881698_d55a6fafa4.jpg" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Mbed Breakout PCB</td></tr></tbody></table>

One of my projects requires multiple temperature sensors. I ordered a bunch and tested one earlier. I cut up some phone wires and connected it there so I could put it out the window without exposing the whole board. It seems to be within 1 degree of the actual temperature, which is more than enough for what I'll need.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://www.flickr.com/photos/apg88/5601297241" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" src="http://farm6.static.flickr.com/5221/5601297241_db793f4c02.jpg" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">MCP9701 Thermistor</td></tr></tbody></table>
