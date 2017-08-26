# Ubuntu
## Drive Check
<pre>apt-get smartmontools</pre>
<pre>sudo smartctl -t long /dev/sda</pre>
Let it run
<pre>sudo smartctl -l selftest /dev/sda</pre>
