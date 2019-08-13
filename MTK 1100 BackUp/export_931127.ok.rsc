# feb/16/2015 10:28:34 by RouterOS 6.27
# software id = I9ZZ-YBJX
#
/interface bridge
add name=WAN
/interface vlan
add interface=ether6 l2mtu=1594 name=VLAN-101-FLOOR1-DATA vlan-id=101
add interface=ether6 l2mtu=1594 name=VLAN-102-FLOOR2-DATA vlan-id=102
add interface=ether6 l2mtu=1594 name=VLAN-103-FLOOR3-DATA vlan-id=103
add interface=ether8 l2mtu=1594 name=VLAN-108-VOICE vlan-id=108
/ip hotspot profile
set [ find default=yes ] login-by=http-chap
add hotspot-address=192.168.103.1 login-by=http-chap name=hsprof1
add hotspot-address=192.168.102.1 login-by=http-chap name=hsprof2
add hotspot-address=192.168.101.1 login-by=http-chap name=hsprof3
/ip hotspot user profile
add name=User-Unlimited shared-users=unlimited transparent-proxy=yes
add name=user-1M rate-limit=1M/1M transparent-proxy=yes
add name=user-unlimited transparent-proxy=yes
add name=user-512k rate-limit=512K/512K transparent-proxy=yes
add name=user-2M rate-limit=2M/2M transparent-proxy=yes
add name=user-3M rate-limit=3M/3M transparent-proxy=yes
/ip pool
add name=DHCP-POOL-VLAN-108-VOICE ranges=192.168.108.16-192.168.108.254
add name=DHCP-POOL-VLAN-101-DATA ranges=192.168.101.16-192.168.101.254
add name=DHCP-POOL-VLAN-102-DATA ranges=192.168.102.16-192.168.102.254
add name=DHCP-POOL-VLAN-103-DATA ranges=192.168.103.16-192.168.103.254
/ip dhcp-server
add address-pool=DHCP-POOL-VLAN-108-VOICE disabled=no interface=\
    VLAN-108-VOICE lease-time=1d name=DHCP-VLAN-108-VOICE
add address-pool=DHCP-POOL-VLAN-101-DATA disabled=no interface=\
    VLAN-101-FLOOR1-DATA lease-time=1d name=DHCP-VLAN-101-DATA
add address-pool=DHCP-POOL-VLAN-102-DATA disabled=no interface=\
    VLAN-102-FLOOR2-DATA lease-time=1d name=DHCP-VLAN-102-DATA
add address-pool=DHCP-POOL-VLAN-103-DATA disabled=no interface=\
    VLAN-103-FLOOR3-DATA lease-time=1d name=DHCP-VLAN-103-DATA
/ip hotspot
add address-pool=DHCP-POOL-VLAN-103-DATA disabled=no interface=\
    VLAN-103-FLOOR3-DATA name=HOTSPOT-VLAN-103-FLOOR3-DATA profile=hsprof1
add address-pool=DHCP-POOL-VLAN-102-DATA disabled=no interface=\
    VLAN-102-FLOOR2-DATA name=HOTSPOT-VLAN-102-FLOOR2-DATA profile=hsprof2
add address-pool=DHCP-POOL-VLAN-101-DATA disabled=no interface=\
    VLAN-101-FLOOR1-DATA name=HOTSPOT-VLAN-101-FLOOR1-DATA profile=hsprof3
/port
set 0 name=serial0
set 1 name=serial1
/tool user-manager customer
set admin access=\
    own-routers,own-users,own-profiles,own-limits,config-payment-gw
/interface bridge port
add bridge=WAN interface=ether1
add bridge=WAN interface=ether2
add bridge=WAN interface=ether3
/ip address
add address=188.121.127.3/28 comment=WAN interface=ether1 network=\
    188.121.127.0
add address=192.168.108.1/24 comment=INT-VLAN-108-VOICE interface=\
    VLAN-108-VOICE network=192.168.108.0
add address=192.168.101.1/24 comment=VLAN-101-FLOOR1-DATA interface=\
    VLAN-101-FLOOR1-DATA network=192.168.101.0
add address=192.168.102.1/24 comment=VLAN-102-FLOOR2-DATA interface=\
    VLAN-102-FLOOR2-DATA network=192.168.102.0
add address=192.168.103.1/24 comment=VLAN-103-FLOOR3-DATA interface=\
    VLAN-103-FLOOR3-DATA network=192.168.103.0
/ip dhcp-server network
add address=192.168.101.0/24 dns-server=8.8.8.8,4.2.2.4 gateway=192.168.101.1
add address=192.168.102.0/24 dns-server=8.8.8.8,4.2.2.4 gateway=192.168.102.1
add address=192.168.103.0/24 dns-server=8.8.8.8,4.2.2.4 gateway=192.168.103.1
add address=192.168.108.0/24 dns-server=8.8.8.8,4.2.2.4 gateway=192.168.108.1
/ip dns
set servers=8.8.8.8,4.2.2.4
/ip firewall filter
add action=drop chain=input disabled=yes src-address=!192.168.0.0/16
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
/ip firewall nat
add action=dst-nat chain=dstnat dst-address=188.121.127.3 dst-port=2222 \
    protocol=tcp to-addresses=192.168.108.2 to-ports=22
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=masquerade chain=srcnat comment=HOTSPOT-NAT out-interface=WAN
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.103.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.102.0/24
add action=masquerade chain=srcnat comment="masquerade hotspot network" \
    src-address=192.168.101.0/24
/ip hotspot ip-binding
add comment=Mr.Bahmani disabled=yes mac-address=00:26:C7:AB:D6:EA type=\
    bypassed
add comment=ANTIVIRUSSERVER mac-address=BC:EE:7B:59:3B:0B type=bypassed
add comment="Server Fanni" mac-address=D0:27:88:75:8F:07 type=bypassed
add comment=S.Almasi disabled=yes mac-address=80:BE:05:3A:39:8F type=bypassed
add comment=F.Eidi disabled=yes mac-address=A8:5B:78:09:C2:DD type=bypassed
add comment=S.Mazaheri disabled=yes mac-address=AC:CF:5C:9F:2A:2D type=\
    bypassed
add comment=IT-Wifi mac-address=48:D2:24:DC:A9:AC type=bypassed
add comment=Parsa disabled=yes mac-address=50:46:5D:70:E8:59 type=bypassed
add comment=Parsa.M mac-address=34:23:BA:9B:68:5C type=bypassed
add comment="S.Mazeheri 2" disabled=yes mac-address=9C:D2:1E:FD:B2:B5 type=\
    bypassed
add comment=IT-Lan mac-address=3C:97:0E:C3:60:E3 type=bypassed
add comment=Najafian disabled=yes mac-address=90:72:40:8F:1C:1B type=bypassed
add comment=Parsa.Iphone mac-address=2C:BE:08:9D:66:B0 type=bypassed
/ip hotspot user
add name=p.aghabeikzadeh password=parsa1234 profile=User-Unlimited
add name=a.aliabadi password=136800 profile=user-2M
add name=a.baniardalan password=1234 profile=user-1M
add name=b.solhjou password=saeed59 profile=user-2M
add name=b.zibanezhad password=ziba123 profile=user-2M
add name=f.eidi password=888 profile=user-2M
add name=f.sadeghi password=123 profile=user-1M
add name=g.bahrami password=gelare61 profile=user-1M
add name=h.khakshoor password=loosi profile=user-2M
add name=h.jahani password=j321h profile=user-1M
add name=m.amid password=8226100 profile=user-3M
add name=m.edrisi password=m1234567 profile=user-1M
add name=m.monfared password=photoshop1 profile=user-2M
add name=m.nourinejad password=30520 profile=user-1M
add name=m.sadeghi password=334sadeghi profile=user-3M
add name=m.shayesteh password=1362 profile=user-2M
add name=r.najafiyan password=ro64sa profile=user-2M
add name=s.almasi password=1234 profile=user-2M
add name=s.mafi password=09125541674 profile=user-1M
add name=s.mirfakhrai password=2851371 profile=user-1M
add name=sh.lotfinia password=654321 profile=user-1M
add name=t.taghipour password=3264 profile=user-2M
add name=y.mohamadi password=00660066 profile=user-2M
add name=z.abbasbeigi password=zibaziba profile=user-1M
add disabled=yes name=pgeb password=pgeb profile=User-Unlimited
add name=s.sadeghian password=123456 profile=user-3M
add name=a.sadeghian password=123456 profile=user-unlimited
add name=hamkari password=arefi963 profile=user-1M
add name=y.rastegari password=y123456 profile=user-3M
add name=city password=5528648 profile=user-1M
add name=t.javadi password=javadi/*89 profile=user-1M
add name=m.dashti password=123456 profile=user-1M
add name=m.nouri password=5032318 profile=user-2M
add name=l.zolfaghari password=l1234567 profile=user-1M
add name=f.abasnezhad password=f1234567 profile=user-1M
add name=s.karimi password=s1234567 profile=user-1M
add name=m.rezaie password=m1234567 profile=user-1M
add name=m.dadkhah password=m1234567 profile=user-2M
add name=a.jafari password=a1234567 profile=user-2M
add name=a.najafi password=165718 profile=user-2M
add name=y.sabokrooh password=1234 profile=user-1M
add name=f.atot password=2350041 profile=user-2M
add name=m.shahgolzadeh password=m1234567 profile=user-2M
add name=f.muomeni password=f1234567 profile=user-2M
add name=a.mishani password=amishannetbarg profile=user-2M
add name=m.abed password=leavemealone110101 profile=user-1M
add name=sh.rahmani password=sh1234567 profile=user-1M
add name=r.hassani password=r1234567 profile=user-1M
add name=f.eskandari password=f1234567 profile=user-1M
add name=l.jafari password=611643 profile=user-1M
add name=a.farshbaf password=f09122373147 profile=user-1M
add name=amozesh password=13757549 profile=user-1M
add name=s.yari password=38265 profile=user-1M
add name=s.mokhtari password=s1234567 profile=user-1M
add name=f.karaji password=f1989 profile=user-1M
add name=m.omidi password=m1234567 profile=user-1M
add name=m.nouri.mobile password=5032318 profile=user-1M
add name=sh.kia password=kia123 profile=user-1M
add name=m.niknab.mobile password=5630 profile=user-512k
add name=h.khakshoor.mobile password=loosi profile=user-512k
add name=b.zibanezhad.mobile password=ziba123 profile=user-512k
add name=f.eidi.mobile password=888 profile=user-512k
add name=a.najafi.mobile password=1234 profile=user-512k
add name=a.mahmoudi password=mahmoudi profile=user-1M
add name=amozesh1 password=1375754949 profile=user-1M
add name=t.javadi.mobile password=javadi/*89 profile=user-512k
add disabled=yes name=s.imani password=guilan2438 profile=user-1M
add name=m.shayesteh.mobile password=1362 profile=user-1M
add name=m.kamalinia password=mehran123 profile=user-1M
add name=z.zamanipoor password=9572 profile=user-1M
add name=zibanezhad password=ziba123 profile=user-2M
add name=iranbahar password=6697nn profile=user-1M
add name=m.miri password=40302255 profile=user-1M
add name=h.kazemi password=h12345 profile=user-1M
add name=e.gholami password=377331366 profile=user-1M
add name=m.niknab.pc password=5630 profile=user-2M
add name=s.almasi.mobile password=987654321 profile=user-2M
add name=m.pournajaf password=netbarg2311 profile=user-1M
add name=h.zeynali password=9359330912h profile=user-1M
add name=s.padegan password=123456 profile=user-2M
add name=sh.sadeghian password=987654321 profile=user-2M
add name=sh.tarverdizadeh password=12369 profile=user-1M
add name=m.rostammi password=654321 profile=user-3M
add name=m.madadi password=madadi123 profile=user-1M
add name=a.adl password=adl123 profile=user-1M
add name=m.taremi password=taremi123 profile=user-1M
add name=s.baziar password=baziar123 profile=user-1M
add name=s.mogooie password=mogooie123 profile=user-1M
add name=m.khakshoor password=123456 profile=user-2M
add name=m.safaie password=6064 profile=user-2M
add name=m.naghdi password=naghdi123 profile=user-1M
add name=b.solhjou.mobile password=123456 profile=user-512k
add name=rahimi password=123 profile=user-512k
add name=m.rahimi password=12777 profile=user-1M
add name=mazaheri password=123456 profile=user-2M
add name=m.rostammi.mobile password=963 profile=user-512k
add disabled=yes name=admin password=netbarg13608 profile=user-unlimited
add name=s.sebterasoul password=123456 profile=user-1M
add name=m.arjmandi password=arjmandi123 profile=user-1M
add name=h.kafaei password=1234 profile=user-1M
add name=g.pajoohan password=1234 profile=user-512k
add name=najafian password=1234 profile=user-2M
add name=soleimany password=1234 profile=user-1M
add name=m.pourparsa password=1234 profile=user-1M
add name=s.rahimi password=1234 profile=user-1M
add name=g.jenabi password=1234 profile=user-1M
add name=m.sadeghi.mobile password=1234 profile=user-1M
add name=mazaheri2 password=12345 profile=user-2M
add name=n.arasteh password=1234 profile=user-1M
add name=a.jafari.mobile password=1234 profile=user-1M
add name=m.namdar password=1234 profile=user-3M
add name=n.baradaran password=1234 profile=user-1M
add name=forosh password=1234 profile=user-1M
add name=n.chaharmahali password=1234 profile=user-1M
add name=f.ghasemi password=1234 profile=user-1M
add name=m.sadeghpour password=sadeghpour1234 profile=user-1M
add name=p.khaloo password=khaloo1234 profile=user-1M
add name=p.khaloo.mobile password=khaloo1234 profile=user-1M
add name=p.aaly password=aaly1234 profile=user-1M
add name=s.padegan.mobile password=padegan1234 profile=user-1M
add name=a.mahmoudi.mobile password=mahmoudi1234 profile=user-1M
add name=e.esmailbeigi password=13411366 profile=user-1M
add name=s.khaki password=khaki123 profile=user-1M
add name=s.mirfakhraie password=sepehr000 profile=user-1M
add name=sh.shokri password=shayan963 profile=user-1M
add name=s.majidi password=majidi456 profile=user-1M
add name=s.rahimi.mobile password=4321 profile=user-512k
add name=n.baradaran.mobile password=baradaran4321 profile=user-512k
add name=f.aminian password=farzad654321 profile=user-1M
add name=h.kafaei.mobile password=kafaei profile=user-512k
add name=younes password=0000 profile=user-1M
add name=ali password=4321 profile=user-1M
add name=m.naseri password=1234 profile=user-3M
add name=m.nobakht password=nobakht963 profile=user-1M
add name=bahmani password=1234 profile=user-3M
/ip route
add distance=1 gateway=188.121.127.1
/ip service
set telnet disabled=yes
set ftp disabled=yes
set www disabled=yes
set ssh disabled=yes
set api disabled=yes
set api-ssl disabled=yes
/system clock
set time-zone-name=Asia/Tehran
/system identity
set name=RouterOS
/tool user-manager database
set db-path=user-manager
