Remove-NetFirewallRule
Set-NetFirewallProfile -All -DefaultInboundAction Block
netsh advfirewall firewall add rule name="SSH IN TCP 20" dir=in action=allow protocol=TCP localport=20
netsh advfirewall firewall add rule name="SSH OUT TCP 20" dir=out action=allow protocol=TCP localport=20