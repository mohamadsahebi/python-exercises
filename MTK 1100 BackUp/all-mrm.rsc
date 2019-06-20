# jan/03/2002 18:33:09 by RouterOS 6.19
# software id = I9ZZ-YBJX
#
/interface bridge
add l2mtu=1598 name=bridge2 protocol-mode=none
/interface ethernet
set [ find default-name=ether13 ] comment="Connect TO Router 2800"
/ip neighbor discovery
set ether13 comment="Connect TO Router 2800"
/ip hotspot profile
add hotspot-address=192.168.1.1 login-by=http-chap,http-pap name=hsprof1
/ip ipsec proposal
set [ find default=yes ] enc-algorithms=3des
/ip pool
add name=dhcp_pool1 ranges=192.168.1.11-192.168.1.250
add name=hs-pool-12 ranges=10.5.50.20-10.5.50.254
add name=dhcp_pool2 ranges=192.168.5.2-192.168.5.254
/ip dhcp-server
add address-pool=dhcp_pool1 disabled=no interface=ether2 lease-time=1d name=\
    dhcp1
/ip hotspot
add address-pool=dhcp_pool1 disabled=no interface=ether2 name=hotspot1 \
    profile=hsprof1
/ip hotspot user profile
add address-pool=dhcp_pool1 name=user-1M rate-limit=1M/1M transparent-proxy=\
    yes
add address-pool=dhcp_pool1 name=user-unlimited transparent-proxy=yes
add address-pool=dhcp_pool1 name=user-512k rate-limit=512K/512K \
    transparent-proxy=yes
add address-pool=dhcp_pool1 name=user-2M rate-limit=2M/2M transparent-proxy=\
    yes
/port
set 0 name=serial0
set 1 name=serial1
/ppp profile
add change-tcp-mss=yes local-address=192.168.5.1 name=PPTP use-encryption=yes
/queue simple
add limit-at=512k/512k max-limit=512k/512k name=Elastix target=192.168.1.2/32
add max-limit=2M/2M name=m.dashti target=192.168.1.98/32
/system logging action
set 0 memory-lines=100
set 1 disk-lines-per-file=100
/interface bridge port
add bridge=bridge2 interface=ether12
add bridge=bridge2 interface=ether1
/interface pptp-server server
set authentication=pap,chap,mschap1,mschap2 enabled=yes max-mru=1460 max-mtu=\
    1460
/ip address
add address=192.168.1.1/24 interface=ether2 network=192.168.1.0
add address=188.121.127.3/28 interface=ether1 network=188.121.127.0
add address=188.121.127.5/28 disabled=yes interface=ether1 network=\
    188.121.127.0
add address=192.168.169.123/24 disabled=yes interface=ether2 network=\
    192.168.169.0
add address=192.169.168.123/24 disabled=yes interface=ether2 network=\
    192.169.168.0
add address=192.168.2.253/24 interface=ether13 network=192.168.2.0
add address=192.168.49.200/24 interface=ether1 network=192.168.49.0
add address=188.121.127.8/28 disabled=yes interface=ether1 network=\
    188.121.127.0
/ip dhcp-server network
add address=192.168.1.0/24 dns-server=8.8.8.8,4.2.2.3 gateway=192.168.1.1
/ip dns
set allow-remote-requests=yes servers=217.218.127.127,8.8.8.8
/ip firewall address-list
add address=192.168.1.0/24 list=nat-list
add address=94.101.183.0/24 list=permit_VOIP
add address=217.170.252.0/23 list=permit_VOIP
add address=192.168.1.0/24 list=permit_VOIP
add address=5.134.133.0/24 list=permit_VOIP
add address=5.134.132.0/23 list=permit_VOIP
add address=2.144.0.0/14 list=permit_VOIP
add address=86.128.0.0/11 comment=Mr.Sadeghian list=permit_VOIP
add address=5.22.0.0/17 list=permit_VOIP
add address=5.22.192.0/19 list=permit_VOIP
add address=5.23.112.0/21 list=permit_VOIP
add address=5.28.32.0/21 list=permit_VOIP
add address=5.34.192.0/19 list=permit_VOIP
add address=5.52.0.0/16 list=permit_VOIP
add address=5.53.32.0/19 list=permit_VOIP
add address=5.56.128.0/22 list=permit_VOIP
add address=5.56.132.0/24 list=permit_VOIP
add address=5.56.134.0/23 list=permit_VOIP
add address=5.57.32.0/21 list=permit_VOIP
add address=5.61.24.0/23 list=permit_VOIP
add address=5.61.26.0/24 list=permit_VOIP
add address=5.61.30.0/23 list=permit_VOIP
add address=5.61.72.0/21 list=permit_VOIP
add address=5.63.8.0/21 list=permit_VOIP
add address=5.102.32.0/20 list=permit_VOIP
add address=5.112.0.0/12 list=permit_VOIP
add address=5.132.114.0/24 list=permit_VOIP
add address=5.134.128.0/18 list=permit_VOIP
add address=5.144.128.0/21 list=permit_VOIP
add address=5.145.112.0/21 list=permit_VOIP
add address=5.159.48.0/21 list=permit_VOIP
add address=5.160.0.0/15 list=permit_VOIP
add address=5.190.0.0/16 list=permit_VOIP
add address=5.198.160.0/19 list=permit_VOIP
add address=5.200.64.0/18 list=permit_VOIP
add address=5.200.128.0/17 list=permit_VOIP
add address=5.201.128.0/17 list=permit_VOIP
add address=5.202.0.0/16 list=permit_VOIP
add address=5.208.0.0/12 list=permit_VOIP
add address=5.224.114.0/24 list=permit_VOIP
add address=5.225.114.0/24 list=permit_VOIP
add address=5.226.48.0/21 list=permit_VOIP
add address=5.232.0.0/13 list=permit_VOIP
add address=5.250.0.0/17 list=permit_VOIP
add address=31.7.64.0/18 list=permit_VOIP
add address=31.7.128.0/20 list=permit_VOIP
add address=31.24.200.0/21 list=permit_VOIP
add address=31.24.232.0/21 list=permit_VOIP
add address=31.25.88.0/21 list=permit_VOIP
add address=31.25.104.0/21 list=permit_VOIP
add address=31.25.128.0/21 list=permit_VOIP
add address=31.25.232.0/21 list=permit_VOIP
add address=31.29.32.0/19 list=permit_VOIP
add address=31.40.0.0/21 list=permit_VOIP
add address=31.47.32.0/19 list=permit_VOIP
add address=31.56.0.0/14 list=permit_VOIP
add address=31.130.176.0/20 list=permit_VOIP
add address=31.170.48.0/20 list=permit_VOIP
add address=31.171.216.0/21 list=permit_VOIP
add address=31.184.128.0/18 list=permit_VOIP
add address=31.193.112.0/21 list=permit_VOIP
add address=31.193.144.0/20 list=permit_VOIP
add address=31.217.208.0/21 list=permit_VOIP
add address=37.9.248.0/21 list=permit_VOIP
add address=37.19.80.0/20 list=permit_VOIP
add address=37.32.0.0/19 list=permit_VOIP
add address=37.32.32.0/20 list=permit_VOIP
add address=37.32.112.0/20 list=permit_VOIP
add address=37.44.56.0/21 list=permit_VOIP
add address=37.49.144.0/21 list=permit_VOIP
add address=37.63.128.0/17 list=permit_VOIP
add address=37.75.240.0/21 list=permit_VOIP
add address=37.98.0.0/17 list=permit_VOIP
add address=37.98.200.0/21 list=permit_VOIP
add address=37.114.192.0/18 list=permit_VOIP
add address=37.123.192.0/21 list=permit_VOIP
add address=37.128.240.0/20 list=permit_VOIP
add address=37.130.200.0/21 list=permit_VOIP
add address=37.137.0.0/16 list=permit_VOIP
add address=37.143.144.0/21 list=permit_VOIP
add address=37.152.160.0/19 list=permit_VOIP
add address=37.191.64.0/19 list=permit_VOIP
add address=37.221.0.0/18 list=permit_VOIP
add address=37.222.114.0/24 list=permit_VOIP
add address=37.223.114.0/24 list=permit_VOIP
add address=37.235.16.0/20 list=permit_VOIP
add address=37.252.216.0/21 list=permit_VOIP
add address=37.254.0.0/15 list=permit_VOIP
add address=46.18.248.0/21 list=permit_VOIP
add address=46.21.80.0/20 list=permit_VOIP
add address=46.28.72.0/21 list=permit_VOIP
add address=46.32.0.0/19 list=permit_VOIP
add address=46.34.96.0/19 list=permit_VOIP
add address=46.34.160.0/19 list=permit_VOIP
add address=46.36.96.0/19 list=permit_VOIP
add address=46.38.128.0/20 list=permit_VOIP
add address=46.38.144.0/21 list=permit_VOIP
add address=46.38.152.0/22 list=permit_VOIP
add address=46.38.156.0/23 list=permit_VOIP
add address=46.38.158.0/24 list=permit_VOIP
add address=46.41.192.0/18 list=permit_VOIP
add address=46.62.128.0/17 list=permit_VOIP
add address=46.100.0.0/16 list=permit_VOIP
add address=46.136.37.0/24 list=permit_VOIP
add address=46.136.113.0/24 list=permit_VOIP
add address=46.136.249.0/24 list=permit_VOIP
add address=46.143.0.0/16 list=permit_VOIP
add address=46.148.32.0/20 list=permit_VOIP
add address=46.164.64.0/18 list=permit_VOIP
add address=46.209.0.0/16 list=permit_VOIP
add address=46.224.0.0/15 list=permit_VOIP
add address=46.245.0.0/17 list=permit_VOIP
add address=46.248.32.0/19 list=permit_VOIP
add address=46.249.96.0/24 list=permit_VOIP
add address=46.249.100.0/22 list=permit_VOIP
add address=46.249.104.0/21 list=permit_VOIP
add address=46.249.112.0/20 list=permit_VOIP
add address=46.251.160.0/19 list=permit_VOIP
add address=46.255.216.0/21 list=permit_VOIP
add address=62.32.50.0/24 list=permit_VOIP
add address=62.60.128.0/17 list=permit_VOIP
add address=62.102.128.0/20 list=permit_VOIP
add address=62.145.89.0/24 list=permit_VOIP
add address=62.145.96.0/22 list=permit_VOIP
add address=62.145.109.0/24 list=permit_VOIP
add address=62.193.0.0/19 list=permit_VOIP
add address=62.220.96.0/19 list=permit_VOIP
add address=77.36.128.0/17 list=permit_VOIP
add address=77.67.32.0/24 list=permit_VOIP
add address=77.77.64.0/18 list=permit_VOIP
add address=77.95.219.0/24 list=permit_VOIP
add address=77.95.220.0/24 list=permit_VOIP
add address=77.104.64.0/18 list=permit_VOIP
add address=77.237.64.0/19 list=permit_VOIP
add address=77.237.160.0/19 list=permit_VOIP
add address=77.245.224.0/20 list=permit_VOIP
add address=78.38.0.0/15 list=permit_VOIP
add address=78.109.192.0/20 list=permit_VOIP
add address=78.110.112.0/20 list=permit_VOIP
add address=78.111.0.0/20 list=permit_VOIP
add address=78.154.32.0/19 list=permit_VOIP
add address=78.157.32.0/19 list=permit_VOIP
add address=78.158.160.0/19 list=permit_VOIP
add address=79.127.0.0/17 list=permit_VOIP
add address=79.132.192.0/19 list=permit_VOIP
add address=79.143.84.0/23 list=permit_VOIP
add address=79.174.160.0/21 list=permit_VOIP
add address=79.175.128.0/19 list=permit_VOIP
add address=79.175.160.0/22 list=permit_VOIP
add address=79.175.164.0/23 list=permit_VOIP
add address=79.175.166.0/24 list=permit_VOIP
add address=79.175.168.0/22 list=permit_VOIP
add address=79.175.173.0/24 list=permit_VOIP
add address=79.175.174.0/23 list=permit_VOIP
add address=79.175.176.0/20 list=permit_VOIP
add address=80.66.176.0/20 list=permit_VOIP
add address=80.69.240.0/20 list=permit_VOIP
add address=80.71.112.0/20 list=permit_VOIP
add address=80.75.0.0/20 list=permit_VOIP
add address=80.191.0.0/16 list=permit_VOIP
add address=80.231.68.0/24 list=permit_VOIP
add address=80.242.0.0/20 list=permit_VOIP
add address=80.250.192.0/20 list=permit_VOIP
add address=80.253.128.0/19 list=permit_VOIP
add address=81.12.0.0/17 list=permit_VOIP
add address=81.28.32.0/19 list=permit_VOIP
add address=81.29.240.0/20 list=permit_VOIP
add address=81.31.160.0/19 list=permit_VOIP
add address=81.31.224.0/19 list=permit_VOIP
add address=81.90.144.0/20 list=permit_VOIP
add address=81.91.128.0/19 list=permit_VOIP
add address=81.163.0.0/21 list=permit_VOIP
add address=82.99.192.0/18 list=permit_VOIP
add address=82.115.0.0/20 list=permit_VOIP
add address=82.115.16.0/22 list=permit_VOIP
add address=82.115.20.0/23 list=permit_VOIP
add address=82.115.29.0/24 list=permit_VOIP
add address=82.115.30.0/23 list=permit_VOIP
add address=83.147.192.0/18 list=permit_VOIP
add address=83.170.26.0/24 list=permit_VOIP
add address=83.170.52.0/24 list=permit_VOIP
add address=84.11.2.0/24 list=permit_VOIP
add address=84.11.15.0/24 list=permit_VOIP
add address=84.11.31.0/24 list=permit_VOIP
add address=84.11.32.0/24 list=permit_VOIP
add address=84.11.34.0/23 list=permit_VOIP
add address=84.11.63.0/24 list=permit_VOIP
add address=84.11.68.0/23 list=permit_VOIP
add address=84.11.72.0/24 list=permit_VOIP
add address=84.11.76.0/24 list=permit_VOIP
add address=84.39.176.0/21 list=permit_VOIP
add address=84.47.204.0/24 list=permit_VOIP
add address=84.47.208.0/23 list=permit_VOIP
add address=84.47.210.0/24 list=permit_VOIP
add address=84.47.212.0/22 list=permit_VOIP
add address=84.47.216.0/21 list=permit_VOIP
add address=84.47.224.0/20 list=permit_VOIP
add address=84.47.248.0/21 list=permit_VOIP
add address=84.241.0.0/18 list=permit_VOIP
add address=85.9.64.0/18 list=permit_VOIP
add address=85.15.0.0/18 list=permit_VOIP
add address=85.133.128.0/17 list=permit_VOIP
add address=85.185.0.0/16 list=permit_VOIP
add address=85.198.0.0/18 list=permit_VOIP
add address=86.57.0.0/17 list=permit_VOIP
add address=86.109.32.0/19 list=permit_VOIP
add address=87.107.0.0/16 list=permit_VOIP
add address=87.247.160.0/19 list=permit_VOIP
add address=87.248.128.0/19 list=permit_VOIP
add address=88.135.32.0/20 list=permit_VOIP
add address=89.144.128.0/18 list=permit_VOIP
add address=89.165.0.0/17 list=permit_VOIP
add address=89.184.192.0/19 list=permit_VOIP
add address=89.221.80.0/20 list=permit_VOIP
add address=89.235.64.0/18 list=permit_VOIP
add address=91.98.0.0/15 list=permit_VOIP
add address=91.106.64.0/19 list=permit_VOIP
add address=91.108.128.0/19 list=permit_VOIP
add address=91.133.128.0/17 list=permit_VOIP
add address=91.184.64.0/19 list=permit_VOIP
add address=91.186.192.0/19 list=permit_VOIP
add address=91.206.122.0/23 list=permit_VOIP
add address=91.207.138.0/23 list=permit_VOIP
add address=91.208.165.0/24 list=permit_VOIP
add address=91.209.242.0/24 list=permit_VOIP
add address=91.212.16.0/24 list=permit_VOIP
add address=91.212.19.0/24 list=permit_VOIP
add address=91.212.252.0/24 list=permit_VOIP
add address=91.216.4.0/24 list=permit_VOIP
add address=91.217.64.0/23 list=permit_VOIP
add address=91.220.79.0/24 list=permit_VOIP
add address=91.222.196.0/22 list=permit_VOIP
add address=91.224.110.0/23 list=permit_VOIP
add address=91.224.176.0/23 list=permit_VOIP
add address=91.225.52.0/22 list=permit_VOIP
add address=91.226.224.0/23 list=permit_VOIP
add address=91.228.189.0/24 list=permit_VOIP
add address=91.229.214.0/23 list=permit_VOIP
add address=91.230.32.0/24 list=permit_VOIP
add address=91.232.64.0/22 list=permit_VOIP
add address=91.232.68.0/23 list=permit_VOIP
add address=91.232.72.0/22 list=permit_VOIP
add address=91.233.56.0/22 list=permit_VOIP
add address=91.236.168.0/23 list=permit_VOIP
add address=91.237.254.0/23 list=permit_VOIP
add address=91.238.0.0/24 list=permit_VOIP
add address=91.239.14.0/24 list=permit_VOIP
add address=91.239.54.0/23 list=permit_VOIP
add address=91.239.108.0/22 list=permit_VOIP
add address=91.239.214.0/24 list=permit_VOIP
add address=91.240.60.0/22 list=permit_VOIP
add address=91.240.180.0/22 list=permit_VOIP
add address=91.241.20.0/23 list=permit_VOIP
add address=91.241.92.0/24 list=permit_VOIP
add address=91.242.44.0/23 list=permit_VOIP
add address=91.243.126.0/23 list=permit_VOIP
add address=91.243.160.0/20 list=permit_VOIP
add address=91.247.66.0/23 list=permit_VOIP
add address=92.42.48.0/21 list=permit_VOIP
add address=92.50.0.0/18 list=permit_VOIP
add address=92.61.176.0/20 list=permit_VOIP
add address=92.62.176.0/20 list=permit_VOIP
add address=92.242.192.0/19 list=permit_VOIP
add address=93.110.0.0/16 list=permit_VOIP
add address=93.126.0.0/18 list=permit_VOIP
add address=93.170.24.0/24 list=permit_VOIP
add address=93.190.24.0/21 list=permit_VOIP
add address=94.74.128.0/18 list=permit_VOIP
add address=94.101.128.0/20 list=permit_VOIP
add address=94.101.176.0/20 list=permit_VOIP
add address=94.101.240.0/20 list=permit_VOIP
add address=94.139.160.0/19 list=permit_VOIP
add address=94.182.0.0/15 list=permit_VOIP
add address=94.184.0.0/16 list=permit_VOIP
add address=94.232.168.0/21 list=permit_VOIP
add address=94.241.128.0/18 list=permit_VOIP
add address=95.38.0.0/16 list=permit_VOIP
add address=95.80.128.0/18 list=permit_VOIP
add address=95.81.64.0/18 list=permit_VOIP
add address=95.82.0.0/17 list=permit_VOIP
add address=95.130.56.0/21 list=permit_VOIP
add address=95.130.240.0/21 list=permit_VOIP
add address=95.142.224.0/20 list=permit_VOIP
add address=95.215.160.0/22 list=permit_VOIP
add address=95.215.173.0/24 list=permit_VOIP
add address=109.72.192.0/20 list=permit_VOIP
add address=109.74.224.0/20 list=permit_VOIP
add address=109.95.56.0/21 list=permit_VOIP
add address=109.95.64.0/21 list=permit_VOIP
add address=109.109.32.0/19 list=permit_VOIP
add address=109.110.160.0/19 list=permit_VOIP
add address=109.111.32.0/22 list=permit_VOIP
add address=109.111.39.0/24 list=permit_VOIP
add address=109.111.40.0/21 list=permit_VOIP
add address=109.111.48.0/20 list=permit_VOIP
add address=109.122.192.0/18 list=permit_VOIP
add address=109.125.128.0/18 list=permit_VOIP
add address=109.162.128.0/17 list=permit_VOIP
add address=109.201.0.0/19 list=permit_VOIP
add address=109.203.160.0/19 list=permit_VOIP
add address=109.225.128.0/18 list=permit_VOIP
add address=109.230.64.0/18 list=permit_VOIP
add address=109.238.176.0/20 list=permit_VOIP
add address=109.239.0.0/20 list=permit_VOIP
add address=128.65.160.0/19 list=permit_VOIP
add address=128.140.0.0/17 list=permit_VOIP
add address=130.185.72.0/22 list=permit_VOIP
add address=130.185.78.0/23 list=permit_VOIP
add address=130.255.192.0/18 list=permit_VOIP
add address=146.66.128.0/22 list=permit_VOIP
add address=151.232.0.0/14 list=permit_VOIP
add address=151.238.0.0/15 list=permit_VOIP
add address=151.240.0.0/13 list=permit_VOIP
add address=158.58.184.0/21 list=permit_VOIP
add address=159.20.96.0/20 list=permit_VOIP
add address=159.255.32.0/21 list=permit_VOIP
add address=164.138.16.0/21 list=permit_VOIP
add address=164.215.40.0/21 list=permit_VOIP
add address=164.215.56.0/21 list=permit_VOIP
add address=164.215.128.0/17 list=permit_VOIP
add address=176.12.64.0/20 list=permit_VOIP
add address=176.46.128.0/19 list=permit_VOIP
add address=176.56.144.0/20 list=permit_VOIP
add address=176.62.144.0/21 list=permit_VOIP
add address=176.67.64.0/20 list=permit_VOIP
add address=176.101.32.0/20 list=permit_VOIP
add address=176.101.48.0/21 list=permit_VOIP
add address=176.102.224.0/19 list=permit_VOIP
add address=176.110.108.0/22 list=permit_VOIP
add address=176.122.210.0/23 list=permit_VOIP
add address=176.123.64.0/18 list=permit_VOIP
add address=176.124.64.0/22 list=permit_VOIP
add address=176.221.16.0/20 list=permit_VOIP
add address=176.221.64.0/21 list=permit_VOIP
add address=178.21.40.0/21 list=permit_VOIP
add address=178.21.160.0/21 list=permit_VOIP
add address=178.22.72.0/22 list=permit_VOIP
add address=178.22.76.0/23 list=permit_VOIP
add address=178.22.78.0/24 list=permit_VOIP
add address=178.131.0.0/16 list=permit_VOIP
add address=178.157.0.0/18 list=permit_VOIP
add address=178.173.128.0/17 list=permit_VOIP
add address=178.215.0.0/18 list=permit_VOIP
add address=178.219.224.0/20 list=permit_VOIP
add address=178.236.32.0/20 list=permit_VOIP
add address=178.238.192.0/20 list=permit_VOIP
add address=178.239.144.0/20 list=permit_VOIP
add address=178.248.40.0/21 list=permit_VOIP
add address=178.251.208.0/21 list=permit_VOIP
add address=178.252.128.0/18 list=permit_VOIP
add address=178.253.0.0/18 list=permit_VOIP
add address=185.2.12.0/22 list=permit_VOIP
add address=185.3.124.0/22 list=permit_VOIP
add address=185.3.200.0/22 list=permit_VOIP
add address=185.3.212.0/22 list=permit_VOIP
add address=185.4.0.0/22 list=permit_VOIP
add address=185.4.16.0/22 list=permit_VOIP
add address=185.4.28.0/22 list=permit_VOIP
add address=185.4.104.0/22 list=permit_VOIP
add address=185.4.220.0/22 list=permit_VOIP
add address=185.5.156.0/22 list=permit_VOIP
add address=185.8.172.0/23 list=permit_VOIP
add address=185.10.72.0/22 list=permit_VOIP
add address=185.11.68.0/22 list=permit_VOIP
add address=185.11.88.0/22 list=permit_VOIP
add address=185.11.176.0/22 list=permit_VOIP
add address=185.12.60.0/22 list=permit_VOIP
add address=185.12.100.0/22 list=permit_VOIP
add address=185.13.228.0/22 list=permit_VOIP
add address=185.14.80.0/22 list=permit_VOIP
add address=185.14.160.0/22 list=permit_VOIP
add address=185.16.232.0/22 list=permit_VOIP
add address=185.18.212.0/22 list=permit_VOIP
add address=185.20.160.0/22 list=permit_VOIP
add address=185.21.68.0/22 list=permit_VOIP
add address=185.21.76.0/22 list=permit_VOIP
add address=185.22.28.0/22 list=permit_VOIP
add address=185.23.128.0/22 list=permit_VOIP
add address=185.24.136.0/22 list=permit_VOIP
add address=185.24.148.0/22 list=permit_VOIP
add address=185.24.228.0/22 list=permit_VOIP
add address=185.24.252.0/22 list=permit_VOIP
add address=185.26.32.0/22 list=permit_VOIP
add address=185.26.208.0/22 list=permit_VOIP
add address=185.26.232.0/22 list=permit_VOIP
add address=185.29.220.0/22 list=permit_VOIP
add address=185.30.4.0/22 list=permit_VOIP
add address=185.30.76.0/22 list=permit_VOIP
add address=185.31.124.0/22 list=permit_VOIP
add address=185.32.128.0/22 list=permit_VOIP
add address=185.34.160.0/22 list=permit_VOIP
add address=185.36.192.0/22 list=permit_VOIP
add address=185.37.52.0/22 list=permit_VOIP
add address=185.39.180.0/22 list=permit_VOIP
add address=185.40.224.0/22 list=permit_VOIP
add address=185.40.240.0/22 list=permit_VOIP
add address=185.41.0.0/22 list=permit_VOIP
add address=185.42.24.0/22 list=permit_VOIP
add address=185.42.212.0/22 list=permit_VOIP
add address=185.42.224.0/22 list=permit_VOIP
add address=185.44.36.0/22 list=permit_VOIP
add address=185.44.64.0/22 list=permit_VOIP
add address=185.44.100.0/22 list=permit_VOIP
add address=185.44.112.0/22 list=permit_VOIP
add address=185.45.188.0/22 list=permit_VOIP
add address=185.46.0.0/22 list=permit_VOIP
add address=185.46.108.0/22 list=permit_VOIP
add address=185.46.216.0/22 list=permit_VOIP
add address=185.47.48.0/22 list=permit_VOIP
add address=188.34.0.0/16 list=permit_VOIP
add address=188.75.64.0/18 list=permit_VOIP
add address=188.93.64.0/21 list=permit_VOIP
add address=188.118.64.0/18 list=permit_VOIP
add address=188.121.96.0/19 list=permit_VOIP
add address=188.121.128.0/19 list=permit_VOIP
add address=188.125.80.0/21 list=permit_VOIP
add address=188.126.128.0/19 list=permit_VOIP
add address=188.136.128.0/17 list=permit_VOIP
add address=188.158.0.0/15 list=permit_VOIP
add address=188.191.176.0/21 list=permit_VOIP
add address=188.240.36.0/22 list=permit_VOIP
add address=188.245.0.0/16 list=permit_VOIP
add address=188.253.0.0/17 list=permit_VOIP
add address=193.0.156.0/24 list=permit_VOIP
add address=193.8.139.0/24 list=permit_VOIP
add address=193.19.128.0/22 list=permit_VOIP
add address=193.19.144.0/23 list=permit_VOIP
add address=193.28.181.0/24 list=permit_VOIP
add address=193.32.80.0/23 list=permit_VOIP
add address=193.35.62.0/24 list=permit_VOIP
add address=193.104.22.0/24 list=permit_VOIP
add address=193.104.212.0/24 list=permit_VOIP
add address=193.105.2.0/24 list=permit_VOIP
add address=193.105.6.0/24 list=permit_VOIP
add address=193.151.128.0/19 list=permit_VOIP
add address=193.178.200.0/22 list=permit_VOIP
add address=193.189.122.0/23 list=permit_VOIP
add address=193.222.51.0/24 list=permit_VOIP
add address=193.242.194.0/23 list=permit_VOIP
add address=193.242.208.0/23 list=permit_VOIP
add address=194.33.104.0/22 list=permit_VOIP
add address=194.33.122.0/23 list=permit_VOIP
add address=194.33.124.0/22 list=permit_VOIP
add address=194.60.228.0/22 list=permit_VOIP
add address=194.143.140.0/23 list=permit_VOIP
add address=194.146.148.0/22 list=permit_VOIP
add address=194.146.164.0/22 list=permit_VOIP
add address=194.225.0.0/18 list=permit_VOIP
add address=194.225.64.0/19 list=permit_VOIP
add address=194.225.96.0/20 list=permit_VOIP
add address=194.225.112.0/21 list=permit_VOIP
add address=194.225.121.0/24 list=permit_VOIP
add address=194.225.122.0/23 list=permit_VOIP
add address=194.225.124.0/22 list=permit_VOIP
add address=194.225.128.0/17 list=permit_VOIP
add address=195.20.136.0/24 list=permit_VOIP
add address=195.88.188.0/23 list=permit_VOIP
add address=195.110.38.0/23 list=permit_VOIP
add address=195.146.32.0/19 list=permit_VOIP
add address=195.170.163.0/24 list=permit_VOIP
add address=195.191.74.0/23 list=permit_VOIP
add address=195.211.44.0/22 list=permit_VOIP
add address=195.219.71.0/24 list=permit_VOIP
add address=195.245.70.0/23 list=permit_VOIP
add address=196.3.91.0/24 list=permit_VOIP
add address=212.1.192.0/21 list=permit_VOIP
add address=212.6.37.0/24 list=permit_VOIP
add address=212.6.38.0/24 list=permit_VOIP
add address=212.6.42.0/24 list=permit_VOIP
add address=212.6.45.0/24 list=permit_VOIP
add address=212.6.47.0/24 list=permit_VOIP
add address=212.6.48.0/23 list=permit_VOIP
add address=212.6.50.0/24 list=permit_VOIP
add address=212.16.73.0/24 list=permit_VOIP
add address=212.16.74.0/23 list=permit_VOIP
add address=212.16.76.0/22 list=permit_VOIP
add address=212.16.80.0/20 list=permit_VOIP
add address=212.33.192.0/19 list=permit_VOIP
add address=212.50.224.0/19 list=permit_VOIP
add address=212.80.0.0/20 list=permit_VOIP
add address=212.80.16.0/21 list=permit_VOIP
add address=212.80.24.0/22 list=permit_VOIP
add address=212.80.28.0/24 list=permit_VOIP
add address=212.80.30.0/23 list=permit_VOIP
add address=212.86.64.0/19 list=permit_VOIP
add address=212.95.128.0/19 list=permit_VOIP
add address=212.120.192.0/19 list=permit_VOIP
add address=213.109.240.0/20 list=permit_VOIP
add address=213.147.128.0/19 list=permit_VOIP
add address=213.176.0.0/17 list=permit_VOIP
add address=213.195.0.0/18 list=permit_VOIP
add address=213.207.192.0/18 list=permit_VOIP
add address=213.217.32.0/19 list=permit_VOIP
add address=213.233.160.0/19 list=permit_VOIP
add address=217.11.16.0/20 list=permit_VOIP
add address=217.24.146.0/23 list=permit_VOIP
add address=217.24.150.0/24 list=permit_VOIP
add address=217.24.152.0/21 list=permit_VOIP
add address=217.25.48.0/20 list=permit_VOIP
add address=217.64.144.0/20 list=permit_VOIP
add address=217.66.192.0/19 list=permit_VOIP
add address=217.146.191.0/24 list=permit_VOIP
add address=217.146.208.0/20 list=permit_VOIP
add address=217.161.16.0/23 list=permit_VOIP
add address=217.170.240.0/20 list=permit_VOIP
add address=217.172.96.0/22 list=permit_VOIP
add address=217.172.104.0/21 list=permit_VOIP
add address=217.172.112.0/22 list=permit_VOIP
add address=217.172.120.0/21 list=permit_VOIP
add address=217.174.16.0/20 list=permit_VOIP
add address=217.218.0.0/15 list=permit_VOIP
add address=85.156.255.0/24 list=permit_VOIP
add address=213.205.192.0/18 comment=Mr.Sadeghian list=permit_VOIP
add address=31.120.0.0/15 list=permit_VOIP
add address=109.144.0.0/12 comment=Mr.Sadeghian list=permit_VOIP
add address=31.96.0.0/11 comment=Mr.Sadeghian list=permit_VOIP
add address=172.56.18.0/23 list=permit_VOIP
add address=208.44.0.0/14 comment="Mr Sadeghian" list=permit_VOIP
add address=192.168.5.0/24 list=permit_VOIP
/ip firewall filter
add action=drop chain=forward dst-port=443 in-interface=all-ethernet log=yes \
    protocol=tcp src-address=192.168.1.2
add action=drop chain=forward dst-port=53 in-interface=all-ethernet log=yes \
    protocol=udp src-address=192.168.1.2
add action=drop chain=forward dst-port=80 in-interface=all-ethernet log=yes \
    protocol=tcp src-address=192.168.1.2
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
/ip firewall nat
add action=dst-nat chain=dstnat disabled=yes dst-address=188.121.127.5 \
    dst-port=8080 protocol=tcp to-addresses=192.168.1.18 to-ports=80
add action=masquerade chain=srcnat disabled=yes src-address=192.168.1.111
add action=dst-nat chain=dstnat disabled=yes dst-address=188.121.127.5 \
    dst-port=4000 protocol=tcp to-addresses=192.168.1.2 to-ports=443
add action=dst-nat chain=dstnat disabled=yes dst-address=188.121.127.5 \
    dst-port=8080 protocol=tcp to-addresses=192.168.1.198 to-ports=80
add action=dst-nat chain=dstnat comment="Allow All IPs Iran TO VOIP Server" \
    disabled=yes dst-address=188.121.127.5 src-address-list=permit_VOIP \
    to-addresses=192.168.1.2
add action=src-nat chain=srcnat src-address-list=nat-list to-addresses=\
    188.121.127.3
add action=src-nat chain=srcnat disabled=yes src-address=192.168.5.0/24 \
    to-addresses=188.121.127.5
add action=dst-nat chain=dstnat dst-address=188.121.127.3 dst-port=8291 \
    protocol=tcp to-addresses=188.121.127.3 to-ports=8291
add action=dst-nat chain=dstnat dst-address=188.121.127.3 to-addresses=\
    192.168.1.2
add action=dst-nat chain=dstnat dst-address=188.121.127.3 dst-port=7777 \
    protocol=tcp to-addresses=192.168.1.2 to-ports=7777
add action=dst-nat chain=dstnat disabled=yes dst-address=188.121.127.3 \
    dst-port=23 protocol=tcp to-addresses=192.168.2.4 to-ports=23
add action=dst-nat chain=dstnat dst-address=188.121.127.3 dst-port=8081 \
    protocol=tcp to-addresses=192.168.1.3 to-ports=80
add action=dst-nat chain=dstnat dst-address=188.121.127.3 dst-port=8080 \
    protocol=tcp to-addresses=192.168.1.84 to-ports=8080
add action=dst-nat chain=dstnat dst-address=188.121.127.3 dst-port=10000 \
    protocol=tcp to-addresses=192.168.1.2 to-ports=10000
add action=dst-nat chain=dstnat disabled=yes dst-address=188.121.127.3 \
    dst-port=5060 protocol=udp to-addresses=192.168.1.2 to-ports=5060
add action=dst-nat chain=dstnat disabled=yes dst-address=188.121.127.3 \
    dst-port=5060 protocol=tcp to-addresses=192.168.1.2 to-ports=5060
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add chain=srcnat
/ip hotspot ip-binding
add mac-address=9C:B6:54:12:0E:BC type=bypassed
add mac-address=00:0E:A9:31:6E:A6 type=bypassed
add mac-address=00:07:88:BB:64:86 type=bypassed
add comment=najafi mac-address=90:72:40:8F:1C:1B type=bypassed
add mac-address=00:07:88:BB:64:85 type=bypassed
add mac-address=00:15:65:51:EF:75 type=bypassed
add mac-address=78:31:C1:C9:20:3C type=bypassed
add mac-address=00:24:BE:E9:B9:6A type=bypassed
add mac-address=00:15:65:4C:E0:55 type=bypassed
add mac-address=00:07:88:BB:64:87 type=bypassed
add mac-address=00:15:65:51:E8:91 type=bypassed
add mac-address=00:15:65:51:EF:71 type=bypassed
add mac-address=00:15:65:51:E8:DD type=bypassed
add mac-address=00:15:65:51:E8:63 type=bypassed
add address=192.168.1.4 comment=Cisco mac-address=00:21:A0:7D:11:F1 type=\
    bypassed
add mac-address=00:15:65:51:E8:CF type=bypassed
add mac-address=00:15:65:51:E8:B5 type=bypassed
add mac-address=00:15:65:51:E8:E7 type=bypassed
add mac-address=00:15:65:51:E9:23 type=bypassed
add mac-address=00:15:65:51:E8:0D type=bypassed
add mac-address=00:15:65:51:E8:DF type=bypassed
add comment="PC- Mehrdad" mac-address=B8:50:E6:41:0C:5A type=bypassed
add mac-address=00:15:65:51:E8:71 type=bypassed
add mac-address=00:15:65:51:E8:C3 type=bypassed
add mac-address=00:15:65:51:EF:AF type=bypassed
add mac-address=00:15:65:51:EF:55 type=bypassed
add mac-address=00:15:65:51:E8:55 type=bypassed
add mac-address=24:BE:05:E9:A8:4F type=bypassed
add mac-address=00:15:65:51:E6:C3 type=bypassed
add mac-address=00:15:65:51:E6:77 type=bypassed
add address=192.168.1.185 mac-address=00:0F:17:10:29:45 type=bypassed
add mac-address=00:15:65:51:E6:69 type=bypassed
add mac-address=00:15:65:51:E6:93 type=bypassed
add mac-address=00:15:65:51:EF:5F type=bypassed
add mac-address=00:15:65:51:E6:17 type=bypassed
add mac-address=00:15:65:4C:DE:49 type=bypassed
add mac-address=00:15:65:4C:E0:A7 type=bypassed
add mac-address=00:15:65:4C:DF:2F type=bypassed
add mac-address=00:15:65:51:E8:31 type=bypassed
add mac-address=00:15:65:51:EF:E5 type=bypassed
add mac-address=00:15:65:51:E8:0B type=bypassed
add mac-address=00:15:65:51:E8:5D type=bypassed
add mac-address=00:15:65:51:E8:11 type=bypassed
add mac-address=00:15:65:51:E8:0F type=bypassed
add mac-address=00:15:65:51:E7:F3 type=bypassed
add mac-address=00:15:65:51:E8:F1 type=bypassed
add mac-address=00:15:65:51:E8:43 type=bypassed
add mac-address=00:15:65:51:E8:4F type=bypassed
add mac-address=00:15:65:51:E8:33 type=bypassed
add mac-address=00:15:65:51:E7:5F type=bypassed
add mac-address=00:15:65:4C:E0:AB type=bypassed
add mac-address=24:A2:E1:3E:53:76 type=bypassed
add mac-address=5C:F8:A1:93:2B:87 type=bypassed
add mac-address=B8:E8:56:02:A6:66 type=bypassed
add mac-address=28:E1:4C:04:3C:D8 type=bypassed
add mac-address=BC:EE:7B:59:3B:0B type=bypassed
add mac-address=84:8E:0C:37:B1:26 type=bypassed
add mac-address=84:7A:88:6A:00:91 type=bypassed
add mac-address=D8:50:E6:6A:04:81 type=bypassed
add mac-address=F8:27:93:46:21:6A type=bypassed
add address=192.168.1.14 type=bypassed
add comment="Server fanni" mac-address=D0:27:88:75:8F:07 type=bypassed
add mac-address=E0:3F:49:4A:C2:93 type=bypassed
add address=192.168.2.4 type=bypassed
add mac-address=84:38:38:1C:F5:CF type=bypassed
add address=192.168.1.199 mac-address=E0:3F:49:4A:C2:93 server=hotspot1 \
    to-address=192.168.1.199
/ip hotspot user
add name=a.aliabadi password=136800 profile=user-2M
add name=a.baniardalan password=13507549 profile=user-1M
add name=a.nadimi password=1993nadimi profile=user-1M
add name=b.solhjou password=123456 profile=user-1M
add name=b.zibanezhad password=ziba123 profile=user-2M
add name=e.pashaee password=123456 profile=user-1M
add name=f.asef password=123 profile=user-1M
add name=f.eidi password=888 profile=user-2M
add name=f.sadeghi password=123 profile=user-1M
add name=g.bahrami password=gelare61 profile=user-1M
add name=g.pajoohan password=29785 profile=user-2M
add name=h.khakshoor password=loosi profile=user-2M
add name=h.jahani password=j321h profile=user-1M
add name=m.amid password=8226100 profile=user-2M
add name=m.edrisi password=m1234567 profile=user-1M
add name=m.monfared password=photoshop1 profile=user-2M
add name=m.nourinejad password=30520 profile=user-1M
add name=m.rostammi password=654321 profile=user-unlimited
add name=m.sadeghi password=334sadeghi profile=user-unlimited
add name=m.salehi password=123456 profile=user-1M
add name=m.shayesteh password=1362 profile=user-2M
add name=n.behrouz password=netbarg123 profile=user-1M
add name=r.najafiyan password=ro64sa profile=user-1M
add name=s.abtahi password=123456 profile=user-1M
add name=s.almasi password=4400560soh profile=user-2M
add name=s.ghadami password=123456 profile=user-1M
add name=s.mafi password=09125541674 profile=user-1M
add name=s.mirfakhrai password=2851371 profile=user-1M
add name=s.nabavieh password=86222264 profile=user-1M
add name=sh.lotfinia password="lotfinia.1\?2\?3" profile=user-1M
add name=t.taghipour password=3264 profile=user-2M
add name=y.mohamadi password=00660066 profile=user-1M
add name=y.zahedi password=123456 profile=user-1M
add name=z.abbasbeigi password=zibaziba profile=user-1M
add name=pgeb password=pgeb profile=user-1M
add name="m.es'haghi" password=123456 profile=user-1M
add name=s.sadeghian password=123456 profile=user-unlimited
add name=a.sadeghian password=123456 profile=user-unlimited
add name=hamkari password=arefi963 profile=user-1M
add name=y.rastegari password=y123456 profile=user-2M
add name=city password=5528648 profile=user-1M
add name=n.azimi password=azimi@852 profile=user-1M
add name=t.javadi password=javadi/*89 profile=user-2M
add name=m.dashti password=123456 profile=user-2M
add name=e.soleimany password=123456 profile=user-1M
add name=m.nouri password=5032318 profile=user-2M
add name=a.moulaee password=a1234567 profile=user-1M
add name=l.zolfaghari password=l1234567 profile=user-1M
add name=f.abasnezhad password=f1234567 profile=user-1M
add name=s.karimi password=s1234567 profile=user-1M
add name=m.rezaie password=m1234567 profile=user-1M
add name=m.dadkhah password=m1234567 profile=user-2M
add name=a.jafari password=a1234567 profile=user-2M
add name=p.bakhshande password=p1234567 profile=user-1M
add name=a.najafi password=165718 profile=user-2M
add name=y.sabokrooh password=y1234567 profile=user-1M
add name=f.atot password=2350041 profile=user-2M
add name=m.shahgolzadeh password=m1234567 profile=user-2M
add name=f.muomeni password=f1234567 profile=user-1M
add name=m.naseri password=rn9136025620059 profile=user-unlimited
add name=admin password=mn9136025620059 profile=user-unlimited
add name=a.mishani password=amishannetbarg profile=user-2M
add name=m.abed password=leavemealone110101 profile=user-1M
add name=n.zahedi password=n123456 profile=user-1M
add name=sh.rahmani password=sh1234567 profile=user-512k
add name=r.hassani password=r1234567 profile=user-1M
add name=f.eskandari password=f1234567 profile=user-1M
add name=l.jafari password=611643 profile=user-1M
add name=a.farshbaf password=f09122373147 profile=user-1M
add name=amozesh password=13757549 profile=user-1M
add name=s.yari password=38265 profile=user-1M
add name=s.mokhtari password=s1234567 profile=user-1M
add name=m.khakshoor password=m123456789 profile=user-2M
add name=f.karaji password=f1989 profile=user-2M
add name=m.omidi password=m1234567 profile=user-1M
add name=m.nouri.mobile password=5032318 profile=user-2M
add name=sh.kia password=kia123 profile=user-1M
add name=s.sedehi password=netbarg2754 profile=user-2M
add name=m.niknab.mobile password=5630 profile=user-512k
add name=h.khakshoor.mobile password=loosi profile=user-512k
add name=b.zibanezhad.mobile password=ziba123 profile=user-512k
add name=r.najafiyan.mobile password=ro64sa profile=user-2M
add name=f.eidi.mobile password=888 profile=user-512k
add name=a.aliabadi.mobile password=136800 profile=user-1M
add name=a.najafi.mobile password=165718 profile=user-1M
add name=f.karaji.mobile password=f1989 profile=user-512k
add name=a.mahmoudi.mobile password=mahmoudi profile=user-512k
add name=a.mahmoudi password=mahmoudi profile=user-2M
add name=amozesh1 password=1375754949 profile=user-1M
add name=a.jafari.mobile password=a1234567 profile=user-1M
add name=t.javadi.mobile password=javadi/*89 profile=user-2M
add name=s.imani password=guilan2438 profile=user-1M
add name=m.shayesteh.mobile password=1362 profile=user-512k
add name=m.shahgolzadeh.mobile password=m1234567 profile=user-512k
add name=s.imani.mobile password=imani profile=user-1M
add name=forosh password=1234567 profile=user-1M
add name=m.kamalinia password=mehran123 profile=user-1M
add name=z.zamanipoor password=9572 profile=user-1M
add name=p.aghabeikzadeh password=parsa1234 profile=user-2M
add name=zibanezhad password=ziba123 profile=user-512k
add name=iranbahar password=432n profile=user-1M
add name=m.miri password=40302255 profile=user-1M
add name=h.kazemi password=h12345 profile=user-1M
add name=e.gholami password=377331366 profile=user-1M
add name=m.niknab.pc password=5630 profile=user-1M
add name=p.aghabeikzadeh.mobile password=parsa1234 profile=user-1M
add name=s.almasi.mobile password=987654321 profile=user-2M
add name=m.pournajaf password=netbarg2311 profile=user-1M
add name=h.zeynali password=9359330912h profile=user-1M
add name=mmm password=123456 profile=user-unlimited
add name=s.padegan password=123456 profile=user-2M
add name=sh.sadeghian password=987654321 profile=user-2M
add name=sh.tarverdizadeh password=176176176 profile=user-1M
add name=test password=test profile=user-unlimited
/ip hotspot walled-garden
add comment="place hotspot rules here" disabled=yes
add dst-host=www.netbarg.com server=hotspot1
/ip hotspot walled-garden ip
add action=accept disabled=no dst-address=192.168.1.2
add action=accept disabled=no dst-address=192.168.1.4
add action=accept disabled=yes dst-address=192.168.1.111
add action=accept disabled=no dst-address=192.168.2.4
add action=accept disabled=no dst-address=192.168.2.253
/ip proxy
set parent-proxy=0.0.0.0
/ip route
add distance=1 gateway=188.121.127.1
/ip service
set telnet disabled=yes
set www disabled=yes
set ssh disabled=yes
/ip upnp
set allow-disable-external-interface=no
/ppp secret
add name=test password=test profile=PPTP remote-address=192.168.5.5
/system identity
set name=RouterOS
/tool sniffer
set filter-interface=ether1
