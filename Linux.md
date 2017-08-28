# Ubuntu
## Drive Check
<pre>apt-get smartmontools</pre>
<pre>sudo smartctl -t long /dev/sda</pre>
Let it run
<pre>sudo smartctl -l selftest /dev/sda</pre>
### References
https://help.ubuntu.com/community/Smartmontools
## Network Adapter Check
 - Start computer without wireless plugged in
<pre>tail -f /var/log/syslog</pre>
 - Plug in wireless adapter
 - Get wireless adapter info
 ### references:
 https://www.centos.org/forums/viewtopic.php?t=25341
 https://askubuntu.com/questions/906636/ethernet-adapter-was-disable-on-ubuntu-17-04
 https://askubuntu.com/questions/838865/network-manager-refusing-to-manage-wired-interfaces
- To get it working edit the interfaces file located at: /etc/network to:

auto <WLAN-IDENTIFIER>
iface <WLAN-IDENTIFIER> inet dhcp
wpa-ssid <SSID>
wpa-psk <PASSWORD>

## Speed Test
<pre>curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -</pre>
