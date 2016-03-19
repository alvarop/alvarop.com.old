---
layout: post
title: Smart Meter Fun (Part 1)
categories:
- projects
tags: []
status: publish
type: post
comments: true
meta:
  blogger_blog: blog.alvarop.com
  blogger_author: ''
  blogger_permalink: /2012/02/smart-meter-fun-part-1.html
  dsq_thread_id: '615614700'
---
My current apartment has one of those 'smart' electric meters that can communicate with the power company directly over the power lines. A few months ago, I found out about a <a href="http://www.smartmetertexas.com/" target="_blank">smartmetertexas.com</a>, which lets you register and get logs of your power usage in 15 minute increments. I thought that was really awesome and signed up. The concept is really cool, but unfortunately, their user interface isn't that great. It does, however, allow you to export all of that information in one large csv file.

After getting the file, I decided to write a small python script to get some more information about my usage. Right now it doesn't do much, but it shows me information like daily usage, hourly (ok, 15 minute-ly) averages, and weekday averages.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/daily.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="302" src="http://3.bp.blogspot.com/-0DaO3_U_6Oc/TzHgZHDEjpI/AAAAAAAABMI/VwGNgg2rsic/s640/daily.png" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><span style="font-size: small; text-align: -webkit-auto;">Total energy usage per day in kWh</span></td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/hourly.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="330" src="http://4.bp.blogspot.com/-FcOGRbBo2XY/TzHgZuxQT3I/AAAAAAAABMQ/B0RP6QKwYdo/s640/hourly.png" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><span style="font-size: small; text-align: -webkit-auto;">Average</span><span style="font-size: small; text-align: -webkit-auto;">energy</span><span style="font-size: small; text-align: -webkit-auto;"> usage in 15 minute increments from all of the days in the data set.</span></td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="/images/blgr/weekday.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="410" src="http://2.bp.blogspot.com/-4YQNa_5WlhA/TzHgaJAF7UI/AAAAAAAABMY/83VjTwcJUcc/s640/weekday.png" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;"><span style="font-size: small; text-align: -webkit-auto;"> Average</span><span style="font-size: small; text-align: -webkit-auto;">energy</span><span style="font-size: small; text-align: -webkit-auto;"> usage per day of the week</span></td></tr></tbody></table>

From looking at this data, I use the most energy on Saturdays (Washer, dryer, more tv than usual, etc...). It also seems that I use the most energy from 7:30-7:45am. That's usually when I'm making breakfast and using the stove.

The next step will be to figure out how to automate the graphing process. Right now, I export to csv files and then plot with excel. Maybe I can use gnuplot or some python extension to do it all at once.

I'll be putting the code I'm using up on github: <a href="https://github.com/alvarop/smartmetertexas_reader" target="_blank">https://github.com/alvarop/smartmetertexas_reader</a>


