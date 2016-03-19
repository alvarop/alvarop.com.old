---
layout: post
title: Remote Camera Trigger
categories:
- projects
- random
tags: []
status: publish
type: post
comments: true
meta:
  blogger_blog: blog.alvarop.com
  blogger_author: ''
  blogger_permalink: /2010/03/remote-camera-trigger.html
  dsq_thread_id: '617772979'
---
I made a remote trigger using an MCT6 Optocoupler, some buttons, LED's, and 2.5mm stereo jack.<br />This will hopefully be able to connect to a microcontroller to take pictures at set intervals. By using the 2.5mm connector, this device should also work with the Canon EOS DSLR cameras. (Which I don't have, but I'll find one to test this on...)

Here are some details...

<a href="/images/blgr/IMG_0765.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 226px;" src="http://1.bp.blogspot.com/_k2p8q4xyXYc/S6u5BselLAI/AAAAAAAAAF0/PUGdS7BQjPQ/s320/IMG_0765.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655212632550402" border="0" /></a>

Opening the HP camera was more complicated than I expected. I had to remove about 15 screws, disconnect several ribbon-cables, and use more force than I am comfortable with with circuit boards. Eventually I got to the shutter button.

<a href="/images/blgr/IMG_0766.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 247px;" src="http://1.bp.blogspot.com/_k2p8q4xyXYc/S6u5B3iYzkI/AAAAAAAAAF8/8W5gpty0QSo/s320/IMG_0766.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655215601307202" border="0" /></a>

The shutter button has two different pressing modes. When you press the button down lightly, the camera focuses, and once you press it all the way down, it takes the picture.  I used my multimeter to figure out which pins did what. I figured out that there one pin is connected to ground, the second to the focus trigger and the third to the shutter trigger.

<a href="/images/blgr/IMG_0769.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 221px;" src="http://3.bp.blogspot.com/_k2p8q4xyXYc/S6u5CmbbQCI/AAAAAAAAAGE/5i1GhvdkUJc/s320/IMG_0769.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655228188573730" border="0" /></a>

Once I soldered some very thin wires to the button pins I spent some time putting the camera back together. I had to make a small hole in the top so the wires wouldn't be cut by the front cover.

<a href="/images/blgr/IMG_0777.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 287px;" src="http://1.bp.blogspot.com/_k2p8q4xyXYc/S6u5C46QsyI/AAAAAAAAAGM/IOeAhP0rXfU/s320/IMG_0777.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655233149743906" border="0" /></a>

Once I closed it, I soldered the wires to a 2.5mm female stereo connector. This is also used by the Canon DSLRs, so I figured it was a good idea to use it, since I'm planning to upgrade. I also used some heat-shrink tube to protect the tiny wires from breaking too easily.

<a href="/images/blgr/IMG_0781.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 308px;" src="http://2.bp.blogspot.com/_k2p8q4xyXYc/S6u5I2zZQNI/AAAAAAAAAGc/NLDFy9fDwI4/s320/IMG_0781.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655335663288530" border="0" /></a>

After the camera was all set, I made a small circuit to trigger the camera. I used an MCT6 optocoupler from Fairchild Semiconductors to isolate the camera from the rest of the circuit. I then connected two button/switches that I found lying around, two resistors, and two LED's to show when each is enabled. The bottom cable assembly with three wires coming out is a 2.5mm male stereo jack that connects to the camera. The left red/white wires come from a homemade 5V power supply.

<a href="/images/blgr/IMG_0780.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 240px;" src="http://3.bp.blogspot.com/_k2p8q4xyXYc/S6u5DQS0ANI/AAAAAAAAAGU/kEeLjzY7dBA/s320/IMG_0780.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655239426736338" border="0" /></a>

The full setup can be seen here. The circuit on the right is just a 5V regulator with some filtering capacitors I use for various projects.

The main goal of this project was to test the optocoupler and circuit before I test it with a much more expensive DSLR. I also wanted to see what was inside my old digital camera. Now that this works, I can connect it to a microcontroller and use it for long term time-lapse shots.

Here is a [bad]video of me explaining how it works.

<div align="center"><iframe width="420" height="315" src="//www.youtube.com/embed/psGO0CFjkV8?rel=0" frameborder="0" allowfullscreen></iframe></div>

This is the picture that was taken while making the video. The camera in the background on the gorillapod was recording the video.

<a href="/images/blgr/HPIM2978.jpg"><img style="display: block; margin: 0px auto 10px; text-align: center; cursor: pointer; width: 320px; height: 241px;" src="http://1.bp.blogspot.com/_k2p8q4xyXYc/S6u5JF375oI/AAAAAAAAAGk/LxpVIcf3PcM/s320/HPIM2978.jpg" alt="" id="BLOGGER_PHOTO_ID_5452655339708868226" border="0" /></a>

Thanks to <a href="http://als-project.blogspot.com/2009/03/trigger-time.html">http://als-project.blogspot.com/2009/03/trigger-time.html</a> for the pin-out for the canon trigger.
