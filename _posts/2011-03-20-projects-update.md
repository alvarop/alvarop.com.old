---
layout: post-no-feature
title: Projects Update
categories:
- projects
tags: []
status: publish
type: post
comments: true
meta:
  blogger_blog: blog.alvarop.com
  blogger_author: ''
  blogger_permalink: /2011/03/projects-update.html
  dsq_thread_id: '615803682'
---
I’ve decided to actually write about what I’ve been up to in the past few years. Today, I’m going to start with a project from the summer of 2006. I decided to go to <a href="http://www.defcon.org/">DEFCON</a> and take part in the <a href="http://defconbots.org/">defconbots </a>competition. The main goal of the competition was to build a device that shot targets using autonomous control only. You can see the competition page <a href="http://defconbots.org/defcon14/">here</a> and the <a href="http://defconbots.org/defcon14/final_results.php">results</a>. Unfortunately, I didn’t start working on it until two or three weeks before.
Here’s a brief description of how it happened. Since I was right out of high school, my budget was extremely limited. I decided to get a webcam mount with two servos and a USB servo controller, along with a really cheap BB gun.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh6.googleusercontent.com/-ISx4n2wzg8I/TYaNLDlPoxI/AAAAAAAAALA/Ty66VN4vih0/s1600/1.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh6.googleusercontent.com/-ISx4n2wzg8I/TYaNLDlPoxI/AAAAAAAAALA/Ty66VN4vih0/s400/1.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">One of three BB guns. </td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh3.googleusercontent.com/-X_pV1b98jvA/TYaNiu7SGoI/AAAAAAAAALU/tcH3lxofR5s/s1600/6.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh3.googleusercontent.com/-X_pV1b98jvA/TYaNiu7SGoI/AAAAAAAAALU/tcH3lxofR5s/s400/6.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">USB Servo Controller </td></tr></tbody></table>

After receiving the gun, I took it apart to figure out how it worked. It was basically a DC motor with some gears pulling back a spring that loaded, then fired, the BBs

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh5.googleusercontent.com/-LCOnqE0HHtM/TYaNQrrM2xI/AAAAAAAAALE/5HhkwHsX2kE/s1600/2.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="300" src="https://lh5.googleusercontent.com/-LCOnqE0HHtM/TYaNQrrM2xI/AAAAAAAAALE/5HhkwHsX2kE/s400/2.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Firing Mechanism </td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh3.googleusercontent.com/-SsXpZHTuT30/TYaNVe1j5OI/AAAAAAAAALI/w9JJgj4c3J0/s1600/3.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh3.googleusercontent.com/-SsXpZHTuT30/TYaNVe1j5OI/AAAAAAAAALI/w9JJgj4c3J0/s400/3.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">The Guts </td></tr></tbody></table>

Instead of buying a webcam, I took one from my dad and (after some modifications) mounted it in front of the gun.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh3.googleusercontent.com/-m4X84qtE1E8/TYaNeiPORpI/AAAAAAAAALQ/ZccVAMR3QHw/s1600/5.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh3.googleusercontent.com/-m4X84qtE1E8/TYaNeiPORpI/AAAAAAAAALQ/ZccVAMR3QHw/s400/5.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Cannibalized Webcam </td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh6.googleusercontent.com/-HwR4AYgHTWw/TYaNq1sE4kI/AAAAAAAAALc/XM0imRNPdwY/s1600/8.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh6.googleusercontent.com/-HwR4AYgHTWw/TYaNq1sE4kI/AAAAAAAAALc/XM0imRNPdwY/s400/8.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Gun with Mount and Webcam </td></tr></tbody></table>

At the time, my knowledge of programming was limited to PHP and VisualBasic. I figured out how to talk to the webcam and servo controller using VB and proceeded to write my aiming program. I had no idea about any image processing algorithms or anything like that, so I had to make it very simple. The targets were lit by infrared LED’s, and by using a filter in front of the webcam, I was able to isolate IR light from everything else. My high tech filter consisted of some developed film. After going through the filter, infrared light showed up as white pixels, while everything else was red or black. This allowed me to “find” IR light by counting white pixels in the image. I divided the image into a grid and counted how many white pixels were in each section. After figuring out which square had the most white pixels, I would move the gun in that direction. Once the most white pixels were in the center of the image, the gun would fire until the lights disappeared.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh6.googleusercontent.com/-L1R59p5xNWs/TYaNmmQRT-I/AAAAAAAAALY/EyP7jkJGs1Q/s1600/7.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh6.googleusercontent.com/-L1R59p5xNWs/TYaNmmQRT-I/AAAAAAAAALY/EyP7jkJGs1Q/s400/7.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Fancy IR Filter and Laptop with Aiming Program </td></tr></tbody></table>

I tried a few different methods for firing the gun, but ended up going with the simplest. I connected another servo and glued a temporary switch to it. All I needed to do to fire was move that servo so it would push the button and close the circuit driving the DC motor in the gun.

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh6.googleusercontent.com/-2R2_Zdr2Pek/TYaNZ_B8atI/AAAAAAAAALM/aApn_RDyCDU/s1600/4.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="301" src="https://lh6.googleusercontent.com/-2R2_Zdr2Pek/TYaNZ_B8atI/AAAAAAAAALM/aApn_RDyCDU/s400/4.jpg" width="400" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Firing Servo </td></tr></tbody></table>

The gun was not designed to hold too many BBs, so I added a parmesan cheese container to hold more. After everything (almost) worked, I packed it in a box and flew to Vegas. The TSA people were rather intrigued when they searched my luggage, but let me through after a few minutes.
The actual competition was a lot of fun. I came in 5th place (out of 6), but had a lot of fun doing it. Some of the competition consisted of university senior design projects with awesome equipment, so I really had no chance. Here are some photos from the competition. These last two photos were not taken by me. I can’t find who took the second one, so if it’s you, let me know so I can give appropriate credit!

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://defconbots.org/defcon14/photos/" style="margin-left: auto; margin-right: auto;"><img border="0" height="480" src="https://lh6.googleusercontent.com/-pX55r8cxjZk/TYaNseaq0bI/AAAAAAAAALk/-UMDfojUOBU/s1600/IMG_5719.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">During Competition 1</td></tr></tbody></table>

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="https://lh3.googleusercontent.com/-9pz05ChNv2o/TYaNr91dORI/AAAAAAAAALg/NbOtRDtvaFc/s640/als.jpg" style="margin-left: auto; margin-right: auto;"><img border="0" height="427" src="https://lh3.googleusercontent.com/-9pz05ChNv2o/TYaNr91dORI/AAAAAAAAALg/NbOtRDtvaFc/s640/als.jpg" width="640" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">During Competition 2</td></tr></tbody></table>

Oh, I also added an “about me” page over <a href="/about">here</a>.
