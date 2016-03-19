---
layout: post
title: Wireless RGB LED Board (Part 1)
categories:
- cc2500
- projects
tags: []
status: publish
type: post
comments: true
meta:
  _edit_last: '1'
  blogger_blog: blog.alvarop.com
  blogger_author: ''
  blogger_permalink: /feeds/8603699540731213827/posts/default/6397405268358022958
  dsq_thread_id: '638292840'
---
I've been working on my wireless RGB LED boards for a while now. I finally made an all-in-one PCB that includes an msp430, a cc2500 radio module, 3 MOSFETs for driving the LED strips and a 3.3v linear regulator. I know it's not the most efficient setup, but right now I want to focus on software and need hardware that just works.

<a href="/images/wp/wirelessRGBv1Schem.png"><img class="size-large wp-image-176" title="Schematic" src="/images/wp/wirelessRGBv1Schem-640x399.png" alt="" width="640" height="399" /></a>

The design is really simple. 12V in are passed through directly to the RGB LED light strip. A 3.3v linear regulator(that gets a bit warm while wasting power) takes care of the msp430 and cc2500. There are two LED's for rx/tx notification (or anything else I might need). Since the MOSFETS can't be directly powered by the msp430 (they need to be at +12V to turn on), I added some transistors to drive them.

<a href="/images/wp/wirelessRGBv1PCB.png"><img class="size-large wp-image-177" title="PCB" src="/images/wp/wirelessRGBv1PCB-320x480.png" alt="" width="320" height="480" /></a>

Other than my human error (plugging in to the wrong place while trying to program), the board worked on the first try! I recorded several time-lapse videos of the build, but I haven't had time to edit them. I suspect they will be part of a longer, more detailed, post with better explanations, code samples, etc...

Since I've already posted many videos of LED strips lighting up with the music, I'll just leave you with a photo of the completed PCB.

<a href="/images/wp/IMG_5036.jpg"><img class="size-large wp-image-178" title="Completed Board" src="/images/wp/IMG_5036-640x426.jpg" alt="" width="640" height="426" /></a>
