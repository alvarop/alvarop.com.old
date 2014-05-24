---
layout: post
title: Debugging ARM Cortex-M3 Devices with GDB and openOCD
categories:
- ARM
- projects
tags:
- arm
- cortex-m3
- gcc
- gdb
- lpc1769
status: publish
type: post
published: true
meta:
  _edit_last: '1'
  _wpas_done_all: '1'
  dsq_thread_id: '1101374613'
---
After <a title="GCC-ARM for Cortex-M3 on Ubuntu" href="http://alvarop.com/2013/02/gcc-arm-for-cortex-m3-on-ubuntu/">getting the gcc-arm compiler working with the mbed</a>, I decided to take a look at my <a href="http://www.lpctools.com/lpc1768.lpcxpresso.aspx">LPCXpresso LPC1769</a> development board. The mbed is really easy to program. It mounts as a flash drive and you just drag and drop the binary file onto it. Unfortunately, that's it. There is no way to get any debug information out of it. The LPCXpresso, on the other hand, comes with a nice LPC-link board attached just for this purpose. Unfortunately(again), it only works with certain IDE's, like <a href="http://www.code-red-tech.com/">code_red</a>. I cut the lpc-link board off and instead used a <a href="http://dangerousprototypes.com/docs/Bus_Blaster">BusBlaster </a>from Dangerous Prototypes along with <a href="http://openocd.sourceforge.net/">OpenOCD</a>. It took me a while to actually program the device, so I'll leave that for later. This post is about debugging!

<a href="http://162.243.232.167/wp-content/uploads/2013/02/IMG_0037.jpg"><img class="size-large wp-image-349" alt="BusBlaster and LPCXpresso LPC1769" src="http://162.243.232.167/wp-content/uploads/2013/02/IMG_0037-640x415.jpg" width="640" height="415" /></a> BusBlaster and LPCXpresso LPC1769

<div><span style="font-size: 14px;">So why, you might ask, do I go to all this trouble to get a debugger working? Because debuggers are awesome! Without them, one has to resort to printf statements(if you're lucky enough to have that working) and LED's. Sure, those are useful sometimes, but having access to memory, registers, stepping through code, etc. makes debugging much easier!</span></div>
&nbsp;
<div><strong style="font-size: 14px;">* All of the following takes place in Ubuntu 12.04.</strong></div>
<div><strong>* I'm using a simple<a href="https://github.com/alvarop/arm-gcc-barebones/blob/master/main.c"> blinking led program </a>as an example</strong></div>
<div><strong>* Here's some <a href="http://dangerousprototypes.com/docs/Bus_Blaster_OpenOCD_guide">info about openOCD and the BusBlaster</a></strong></div>
&nbsp;
<div>
<ol>
	<li><span style="font-size: 14px; line-height: 21px;"><a href="http://alvarop.com/2013/02/gcc-arm-for-cortex-m3-on-ubuntu/">Compile </a>your code with arm-gcc and make sure to pass the -g flag to generate debugging information.</span></li>
	<li>Run openOCD to connect to the device.
<pre class="brush: bash; gutter: false">$ openocd -f openocd.cfg</pre>
</li>
	<li>Run GDB and connect to openOCD
<pre class="brush: bash; gutter: false"> $ arm-none-eabi-gdbtui -ex &quot;target remote localhost:3333&quot; blink.elf</pre>
If you see [No source available], it's probably because the core is running. Do the following to halt it the first time:
<pre class="brush: bash; gutter: false">(gdb) continue
(gdb) Ctrl+c</pre>
The c source should now be visible</li>
	<li><span style="font-size: 14px; line-height: 21px;"><span style="font-size: 14px; line-height: 21px;">Setup split view to see dissasembly (if you want)
</span></span>
<pre class="brush: bash; gutter: false">(gdb) layout split</pre>
</li>
	<li>Debug away!</li>
</ol>
</div>
<div>

<a href="http://162.243.232.167/wp-content/uploads/2013/02/split.png"><img class="size-large wp-image-350" alt="Split view in GDB" src="http://162.243.232.167/wp-content/uploads/2013/02/split-464x480.png" width="464" height="480" /></a> Split view in GDB

</div>
<div>It's been a while since I use GDB, but here are some examples of commands that are useful:</div>
<div><strong>(gdb) Ctrl+C</strong> - Halts execution</div>
<div><strong>(gdb) step/next</strong> - step through a line (of c code)</div>
<div><strong>(gdb) stepi/nexti</strong> - step through an individual instruction</div>
<div><strong>(gdb) continue</strong> - Continue execution</div>
<div><strong>(gdb) break 22</strong> - set a breakpoint in line 22 (you can also name a function instead)</div>
<div><strong>(gdb) delete</strong> - get rid of all the breakpoints</div>
<div><strong>(gdb) where/backtrace</strong> - print backtrace of all stack frames</div>
<div><strong>(gdb) info locals</strong> - see local variables</div>
<div><strong>(gdb) info registers</strong> - see all registers and values</div>
<div><strong>(gdb) x/2xw 0x2009C018</strong> - show 2 words(in hex!) starting from memory address 0x2009C018</div>
<div><strong>(gdb) set {uint32_t}0x2009C018 = 0x400000</strong> - set value of memory address 0x2009C018 to 0x400000</div>
<div></div>
<div>There are many more things you can do with GDB. For more info. check out <a href=" http://www.delorie.com/gnu/docs/gdb/gdb_toc.html">Debugging with GDB</a>.</div>
<div></div>
