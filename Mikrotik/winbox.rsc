# jan/05/2021 12:26:38 by RouterOS 6.45.6
# software id = J5CP-HE1Y
#
# model = 951Ui-2HnD
# serial number = 7BCA06373130
/ip service
set telnet disabled=yes
set ftp disabled=yes
set www disabled=yes
set ssh disabled=yes
set api disabled=yes port=8770
set winbox address="193.106.73.217/32,193.106.73.63/32,94.251.82.62/32,217.77.\
    105.156/32,192.168.1.0/24,194.186.190.2/32"
set api-ssl disabled=yes port=8712
