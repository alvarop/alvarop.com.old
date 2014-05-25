---
layout: post-no-feature
title: CC2500 Project (Part 6) - Reorganizing
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
  blogger_permalink: /2012/01/cc2500-project-part-6-reorganizing.html
  dsq_thread_id: '614392320'
---
This post is mostly about software, so I'll keep it short.<br /><br />I re-arranged most of the code so it hopefully makes more sense. My goal is to make the main code hardware agnostic. That way if you want to use a different device, you just change which drivers you're using, but your main code stays the same. Eventually I'd like to be able to support multiple devices from multiple manufacturers.<br /><br />For a much better description, check out the page (and code) on github here:&nbsp;<a href="https://github.com/alvarop/msp430-cc2500" target="_blank">https://github.com/alvarop/msp430-cc2500</a><br />(The README file should have some&nbsp;information)<br /><br />To keep things interesting, here's a quick video on what I was able to do with the current setup. The RGB LED controller(msp430g2452 + cc2500) is wirelessly connected to the PC(msp430g2533 + cc2500 + usb-to-serial converter).<br /><div class="separator" style="clear: both; text-align: center;"><br /></div><div style="text-align: center;"><br /></div><div style="text-align: center;"><iframe allowfullscreen="" frameborder="0" height="360" src="http://www.youtube.com/embed/H0OEqm4yeYM" width="640"></iframe></div>