# jan/05/2021 12:11:17 by RouterOS 6.45.6
# software id = J5CP-HE1Y
#
# model = 951Ui-2HnD
# serial number = 7BCA06373130
/ip firewall filter
# lte1 not ready
add action=accept chain=input in-interface=*8
add action=accept chain=input dst-port=8291 protocol=tcp
add action=accept chain=input dst-port=2045 protocol=tcp
add action=accept chain=input comment="defconf: accept ICMP" protocol=icmp
add action=drop chain=output disabled=yes dst-address=8.8.8.8 out-interface=\
    ether1 protocol=icmp src-address=0.0.0.0
add action=accept chain=input comment="defconf: accept established,related" \
    connection-state=established,related
add action=drop chain=output comment="denu ping from eth4 to 8.8.4.4" \
    dst-address=8.8.4.4 out-interface=ether4 protocol=icmp
add action=drop chain=input comment="defconf: drop all from WAN" disabled=yes \
    in-interface=ether1
add action=fasttrack-connection chain=forward comment="defconf: fasttrack" \
    connection-state=established,related
add action=accept chain=forward comment="defconf: accept established,related" \
    connection-state=established,related
add action=drop chain=forward comment="defconf: drop invalid" \
    connection-state=invalid
add action=drop chain=forward comment=\
    "defconf:  drop all from WAN not DSTNATed" connection-nat-state=!dstnat \
    connection-state=new in-interface=ether1
