# may/25/2018 11:40:14 by RouterOS 6.32.1
# software id = I9ZZ-YBJX
#
/ip hotspot user profile
set [ find default=yes ] idle-timeout=9h
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-1M rate-limit=1M/1M session-timeout=12h status-autorefresh=9h \
    transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-2M rate-limit=2M/2M session-timeout=12h status-autorefresh=9h \
    transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-3M rate-limit=3M/3M session-timeout=12h status-autorefresh=9h \
    transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-768K rate-limit=768K/768K session-timeout=12h \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-4M rate-limit=4M/4M session-timeout=12h status-autorefresh=9h \
    transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-1M rate-limit=1M/1M session-timeout=12h shared-users=3 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-2M rate-limit=2M/2M session-timeout=12h shared-users=5 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-3M rate-limit=3M/3M session-timeout=12h shared-users=4 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-4M rate-limit=4M/4M session-timeout=12h shared-users=4 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-768K rate-limit=768K/768K session-timeout=12h \
    shared-users=2 status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Unlimited session-timeout=12h shared-users=3 status-autorefresh=9h \
    transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-01M rate-limit=1M/1M session-timeout=12h status-autorefresh=9h \
    transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-01M rate-limit=1M/1M session-timeout=12h shared-users=2 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-8M-Share rate-limit=8M/8M session-timeout=12h shared-users=4 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-10M rate-limit=10M/10M session-timeout=12h shared-users=8 \
    status-autorefresh=9h transparent-proxy=yes
/ip hotspot user
add name=b.solhjou password=123456 profile=Internet-1M server=hs-VLAN-105
add name=f.sadeghi password=123 profile=Internet-768K
add name=g.bahrami password=gelare61 profile=Internet-768K server=hs-VLAN-104
add name=h.jahani password=12345 profile=Internet-Share-1M
add name=m.amid password=8226100 profile=Internet-Share-2M
add name=m.monfared password=photoshop1 profile=Internet-3M server=\
    hs-VLAN-104
add name=s.gholampour password=s.gholampour profile=Internet-768K
add name=a.saryazdi password=a.saryazdi profile=Internet-Share-2M server=\
    hs-VLAN-111
add name=n.arefi password=n.arefi profile=Internet-1M
add name=a.shahkouei password=a.shahkouei profile=Internet-768K
add name=p.isanejad password=p.isanejad profile=Internet-2M
add name=sh.tarverdizadeh password=12369 profile=Internet-Share-1M
add name=f.karaji password=f.karaji profile=Internet-8M-Share
add name=m.vesali password=m.vesali profile=Internet-768K
add name=m.kamalinia password=mehran123 profile=Internet-1M
add name=r.zakariapour password=r.zakariapour profile=Internet-768K
add name=m.solgi password=m.solgi profile=Internet-768K
add name=h.farahmand password=h.farahmand profile=Internet-1M
add name=m.rostammi password=654321 profile=Internet-8M-Share
add name=s.baziar password=baziar123 profile=Internet-768K
add name=m.khakshoor password=123456 profile=Internet-Share-2M
add name=m.rostammi.mob password=963 profile=Internet-1M
add name=a.vakilian password=a.vakilian profile=Internet-2M
add name=z.vanaki password=z.vanaki profile=Internet-768K server=hs-VLAN-105
add name=s.padegan.mobile password=padegan1234 profile=Internet-1M
add name=s.khaki password=khaki123 profile=Internet-768K server=hs-VLAN-104
add name=a.soleimani password=a.soleimani profile=Internet-768K
add name=f.aminian password=123456 profile=Internet-768K server=hs-VLAN-105
add name=f.barari password=28490 profile=Internet-Share-1M
add disabled=yes name=f.rava password=6820 profile=Internet-Share-1M server=\
    hs-VLAN-105
add name=f.ziyarati password=241024 profile=Internet-Share-1M server=\
    hs-VLAN-105
add disabled=yes name=m.shahbeigi password=shahbeigi8520 profile=\
    Internet-768K
add name=m.kamvar password=m.kamvar profile=Internet-768K
add name=b.sol.mob password=123456 profile=Internet-768K
add name=jahani password=12345 profile=Internet-Share-1M
add name=f.karaji.mobile password=karaji123 profile=Internet-2M
add name=m.sahebi password=m_sahebi1362 profile=Internet-Share-10M
add name=b.haghighi password=b.haghighi profile=Internet-8M-Share
add disabled=yes name=h.morakabi password=h.morakabi profile=Internet-768K
add disabled=yes name=m.nourinejad password=30520 profile=Internet-768K
add name=b.khodadad password=b.khodadad profile=Internet-768K
add name=a.eslami password=a.eslami profile=Internet-8M-Share
add disabled=yes name=l.vojdani password=l.vojdani profile=Internet-768K
add name=a.fazeli password=a.fazeli profile=Internet-Share-4M
add name=h.rezaee password=h.rezaee profile=Internet-768K
add name=a.talari password=a.talari profile=Internet-768K
add disabled=yes name=haghighi.mob password=haghighi.mob profile=Internet-3M
add name=h.aleali password=h.aleali profile=Internet-768K
add name=n.sadeghi password=123456 profile=Internet-Share-2M
add name=n.moradi password=n.moradi profile=Internet-768K
add name=f.amiri password=f.amiri profile=Internet-3M
add name=b.gerayeli password=123456 profile=Internet-Share-1M
add name=z.haghayeghi password=14145537 profile=Internet-Share-2M
add name=k.dolati password=k.dolati profile=Internet-768K
add name=m.bagheri password=m.bagheri profile=Internet-768K server=\
    hs-VLAN-105
add name=e.afza password=e.afza profile=Internet-768K
add disabled=yes name=s.salehi password=s.salehi profile=Internet-768K \
    server=hs-VLAN-105
add name=n.rajabpour password=n.rajabpour profile=Internet-768K
add name=a.baniardalan password=123456 profile=Internet-768K server=\
    hs-VLAN-104
add name=s.khalily password=s.khalily profile=Internet-Share-2M
add name=s.ipchilar password=s.ipchilar profile=Internet-Share-3M
add name=e.ghazanfari password=e.ghazanfari profile=Internet-Share-1M
add name=afshar.mob password=afshar.mob profile=Internet-768K
add name=m.ershadi password=123456 profile=Internet-Share-3M
add name=y.zahedi password=y.zahedi profile=Internet-3M server=hs-VLAN-104
add name=f.tolou password=f.tolou profile=Internet-768K
add name=m.mottaki password=m.mottaki profile=Internet-768K
add disabled=yes name=z.khatib password=z.khatib profile=Internet-768K
add name=m.mirzaee password=m.mirzaee profile=Internet-Share-10M
add name=m.afshar password=m.afshar profile=Internet-Share-4M
add name=n.shiry password=n.shiry profile=Internet-1M
add name=s.bakhtiari password=s.bakhtiari profile=Internet-1M
add disabled=yes name=f.bameri password=f.bameri profile=Internet-768K
add name=a.davoodi password=a.davoodi profile=Internet-Share-4M
add disabled=yes name=a.ramazani password=a.ramazani profile=\
    Internet-Share-2M
add name=m.azali password=m.azali profile=Internet-768K
add name=e.etemad password=e.etemad profile=Internet-Share-1M
add disabled=yes name=m.khakshoor.mob password=123456 profile=Internet-1M
add name=m.ariannejad password=m.ariannejad profile=Internet-Share-10M
add name=a.kargar password=a.kargar profile=Internet-768K
add name=a.rahmani password=a.rahmani profile=Internet-768K
add name=a.faeghi password=faeghi123 profile=Internet-2M
add disabled=yes name=m.vojdani password=m.vojdani profile=Internet-768K
add disabled=yes name=m.omrani.mob password=m.omrani profile=Internet-768K
add name=m.nezami password=m.nezami profile=Internet-Share-1M
add name=arianmob password=arianmob profile=Internet-Share-2M
add name=n.daneshpour password=n.daneshpour profile=Internet-Share-2M
add name=h.saleh password=h.saleh profile=Internet-768K
add disabled=yes name=a.pirzad password=a.pirzad profile=Internet-768K
add name=r.erami password=r.erami profile=Internet-4M
add name=m.hami password=m.hami profile=Internet-Share-2M
add name=m.oghani password=m.oghani profile=Internet-768K
add disabled=yes name=e.rajabi password=e.rajabi profile=Internet-768K
add name=e.fakharzade password=2574435 profile=Internet-2M
add name=a.najipor password=a.najipor profile=Internet-2M
add name=f.yazdani password=f.yazdani profile=Internet-1M
add name=a.rahbar password=a.rahbar profile=Internet-768K
add name=salehi password=salehi profile=Internet-768K
add name=p.fathi password=p.fathi profile=Internet-Share-2M
add disabled=yes name=a.karami password=a.karami profile=Internet-768K
add name=a.ebrahim password=a.ebrahim profile=Internet-768K
add disabled=yes name=m.hajiloo password=m.hajiloo profile=Internet-768K
add name=z.bahrami password=z.bahrami profile=Internet-Share-1M
add disabled=yes name=a.safaee password=123456 profile=Internet-768K
add disabled=yes name=n.izadyar password=n.izadyar profile=Internet-768K
add name=kh.safdarian password=kh.safdarian profile=Internet-768K
add disabled=yes name=b.parsa password=b.parsa profile=Internet-01M
add name=m.sedaghati password=m.sedaghati profile=Internet-768K
add disabled=yes name=m.khosravi password=m.khosravi profile=Internet-768K
add name=m.latifi password=m.latifi profile=Internet-Share-2M
add name=s.motamed password=s.motamed profile=Internet-768K
add name=j.safari password=j.safari profile=Internet-768K
add name=p.memar password=p.memar profile=Internet-768K
add disabled=yes name=z.bakhtyari password=z.bakhtyari profile=\
    Internet-Share-2M
add disabled=yes name=a.mehraban password=a.mehraban profile=Internet-1M
add disabled=yes name=h.ghasemi password=h.ghasemi profile=Internet-768K
add name=s.posti password=s.posti profile=Internet-Share-2M
add name=m.rastegar password=m.rastegar profile=Internet-Share-2M
add disabled=yes name=f.ahmadi password=f.ahmadi profile=Internet-768K
add disabled=yes name=p.mosaed password=p.mosaed profile=Internet-768K
add name=a.jahani password=a.jahani profile=Internet-768K
add name=s.etefagh password=s.etefagh profile=Internet-768K
add name=m.mesbah password=m.mesbah profile=Internet-Share-1M
add name=s.kamyabpour password=s.kamyabpour profile=Internet-768K
add name=m.abdi password=m.abdi profile=Internet-768K
add name=a.fadaei password=a.fadaei profile=Internet-Share-1M
add disabled=yes name=m.asadollahi password=m.asadollahi profile=\
    Internet-768K
add name=m.safarzadeh password=m.safarzadeh profile=Internet-768K
add disabled=yes name=sp password=sp profile=Internet-Share-1M
add name=m.shafiee password=m.shafiee profile=Internet-768K
add name=f.mohammadi password=f.mohammadi profile=Internet-Share-2M
add name=sh.hosseinpour password=sh.hosseinpour profile=Internet-768K
add name=s.hatami password=s.hatami profile=Internet-768K
add name=f.bayat password=f.bayat profile=Internet-Share-1M
add name=m.sedighpour password=sedighpour123 profile=Internet-2M
add disabled=yes name=m.omrani password=m.omrani profile=Internet-3M
add name=gh.heydari password=gh.heydari profile=Internet-768K
add name=z.moghadam password=z.moghadam profile=Internet-Share-1M
add name=s.khajehsalehani password=s.khajehsalehani profile=Internet-768K
add name=m.safarzadehfood password=m.safarzadehfood profile=Internet-768K
add name=e.kiani password=e.kiani profile=Internet-2M server=hs-VLAN-103
add disabled=yes name=f.shariattalab password=f.shariattalab profile=\
    Internet-Share-1M
add disabled=yes name=f.yahyae password=f.yahyae profile=Internet-768K
add name=m.aghazadeh password=m.aghazadeh profile=Internet-768K
add name=a.keneshloo password=a.keneshloo profile=Internet-768K
add disabled=yes name=a.yazdanpanah password=a.yazdanpanah profile=\
    Internet-Share-1M
add name=sh.gholipour password=sh.gholipour profile=Internet-768K
add disabled=yes name=m.hojjati password=m.hojjati profile=Internet-1M
add disabled=yes name=s.alirezayi password=s.alirezayi profile=Internet-1M
add name=s.arbabi password=s.arbabi profile=Internet-768K
add name=f.hosseini password=f.hosseini profile=Internet-768K
add disabled=yes name=k.ehrari password=k.ehrari profile=Internet-768K
add name=m.ahmadi password=m.ahmadi profile=Internet-768K
add name=b.fathi password=b.fathi profile=Internet-768K
add name=m.baghi password=m.baghi profile=Internet-768K
add name=h.edrisi password=h.edrisi profile=Internet-768K
add name=m.lali password=m.lali profile=Internet-768K
add disabled=yes name=s.ahmadikia password=s.ahmadikia profile=Internet-1M
add name=g1 password=g1 profile=Internet-1M
add name=m.arab password=m.arab profile=Internet-4M server=hs-VLAN-105
add name=a.hoseini password=a.hoseini profile=Internet-768K
add name=f.najipour password=f.najipour profile=Internet-2M
add name=m.shirkhodae password=m.shirkhodae profile=Internet-768K
add name=a.safari password=a.safari profile=Internet-Share-1M
add name=f.mehrzadegan password=f.mehrzadegan profile=Internet-768K
add name=ah password=ah profile=Internet-1M
add disabled=yes name=t.taghipour password=t.taghipour profile=\
    Internet-Share-1M
add name=m.bazvand password=m.bazvand profile=Internet-Share-2M
add disabled=yes name=l.khodabandeloo password=l.khodabandeloo profile=\
    Internet-768K
add name=a.moosazadeh password=a.moosazadeh profile=Internet-768K
add name=a.gholizadeh password=a.gholizadeh profile=Internet-1M
add disabled=yes name=e.bahari password=e.bahari profile=Internet-768K
add name=a.alizade password=a.alizade profile=Internet-2M
add disabled=yes name=g.erami password=g.erami profile=Internet-768K
add name=m.farahani password=m.farahani profile=Internet-Share-2M
add disabled=yes name=m.mousavi password=m.mousavi profile=Internet-768K
add name=m.alagha password=m1369a profile=Internet-2M
add name=h.eskandari password=h.eskandari profile=Internet-768K
add name=m.anbari password=m.anbari profile=Internet-8M-Share
add name=a.nematpasand password=a.nematpasand profile=Internet-2M
add name=r.kermanshahi password=r.kermanshahi profile=Internet-Share-1M
add disabled=yes name=h.sarfarazian password=h.sarfarazian profile=\
    Internet-768K
add disabled=yes name=b.omidvar password=b.omidvar profile=Internet-1M
add name=k.nategh password=k.nategh profile=Internet-768K
add name=m.khakroo password=m.khakroo profile=Internet-768K
add name=o.hashemi password=o.hashemi profile=Internet-4M
add disabled=yes name=r.oveilaghi password=r.oveilaghi profile=Internet-1M
add name=m.aslani password=m.aslani profile=Internet-768K
add name=sh.karambakhsh password=sh.karambakhsh profile=Internet-768K
add name=a.davarzani password=a.davarzani profile=Internet-Share-2M
add name=s.nezami password=s.nezami profile=Internet-2M
add name=m.ghasemi password=m.ghasemi profile=Internet-768K
add name=e.mohamadgol password=e.mohamadgol profile=Internet-2M
add disabled=yes name=m.nourmohamadzadeh password=m.nourmohamadzadeh profile=\
    Internet-768K
add name=a.mirkamali password=a.mirkamali profile=Internet-1M
add disabled=yes name=a.hozhabri password=a.hozhabri profile=Internet-1M
add disabled=yes name=f.khalagh password=f.khalagh profile=Internet-768K
add name=h.nodehi password=h.nodehi profile=Internet-2M
add name=m.houshosadat password=m.houshosadat profile=Internet-768K
add disabled=yes name=r.agahi password=r.agahi profile=Internet-Share-2M
add disabled=yes name=a.sharif password=a.sharif profile=Internet-768K
add name=ze.khatib password=ze.khatib profile=Internet-768K
add name=s.zamani password=s.zamani profile=Internet-2M
add disabled=yes name=s.takmilsefat password=s.takmilsefat profile=\
    Internet-768K
add name=m.jalali password=m.jalali profile=Internet-768K
add name=p.mesdaghi password=p.mesdaghi profile=Internet-768K
add disabled=yes name=h.khodabandeh password=h.khodabandeh profile=\
    Internet-768K
add disabled=yes name=s.ebrahimi password=s.ebrahimi profile=Internet-4M
add name=f.dabaghha password=f.dabaghha profile=Internet-Share-1M
add name=t.parsa password=t.parsa profile=Internet-Share-1M
add disabled=yes name=z.samadzadeh password=z.samadzadeh profile=\
    Internet-768K
add disabled=yes name=e.ghasemi password=e.ghasemi profile=Internet-768K
add name=s.bagheri password=s.bagheri profile=Internet-1M
add name=n.vahdat password=n.vahdat profile=Internet-768K
add disabled=yes name=m.parastoo password=m.parastoo profile=Internet-768K
add disabled=yes name=a.baninajjar password=a.baninajjar profile=\
    Internet-768K
add disabled=yes name=a.kheradmandan password=a.kheradmandan profile=\
    Internet-768K
add name=a.ofogh password=a.ofogh profile=Internet-768K
add disabled=yes name=m.saryazdi password=m.saryazdi profile=Internet-768K \
    server=hs-VLAN-103
add disabled=yes name=sh.shahbazi password=sh.shahbazi profile=\
    Internet-Share-1M
add name=k.khazeni password=k.khazeni profile=Internet-Share-2M server=\
    hs-VLAN-103
add name=s.chamani password=s.chamani profile=Internet-768K
add name=drdr password=drdr profile=Internet-2M
add name=f.khodabandeh password=f.khodabandeh profile=Internet-Share-3M
add name=o.baniasad password=o.baniasad profile=Internet-Share-2M
add name=m.mohseni password=m.mohseni profile=Internet-Share-3M
add name=a.haghighi password=a.haghighi profile=Internet-Share-2M
add name=z.hezarpishe password=z.hezarpishe profile=Internet-768K server=\
    hs-VLAN-103
add name=m.rahchamani password=m.rahchamani profile=Internet-768K
add name=mh.rezaie password=mh.rezaie profile=Internet-768K
add name=bmn password=bmn profile=Unlimited
add disabled=yes name=v.mahdiun password=v.mahdiun profile=Internet-Share-2M
add name=m.jabbari password=m.jabbari profile=Internet-768K
add name=m.malmir password=m.malmir profile=Internet-768K
add disabled=yes name=p.latifi password=p.latifi profile=Internet-768K
add name=f.dehghanpoor password=f.dehghanpoor profile=Internet-2M
add name=m.arbabi password=m.arbabi profile=Internet-768K
add name=mh.malek password=mh.malek profile=Internet-Share-2M
add name=guest2 password=guest2 profile=Internet-Share-4M
add name=guest password=guest profile=Internet-1M
add disabled=yes name=a.soizi password=a.soizi profile=Internet-768K
add name=e.adl password=e.adl profile=Internet-768K
add disabled=yes name=p.niknam password=p.niknam profile=Internet-768K
add name=s.shirani password=s.shirani profile=Internet-768K
add name=er.afza password=er.afza profile=Internet-768K
add name=guest3 password=guest3 profile=Internet-Share-2M
add name=m.rajabi password=m.rajabi profile=Internet-768K
add name=guest1 password=guest1 profile=Internet-Share-4M
add name=m.dehghan password=m.dehghan profile=Internet-2M
add name=f.pourabbas password=f.pourabbas profile=Internet-1M
add name=e.fallah password=e.fallah profile=Internet-768K
add disabled=yes name=a.memarian password=a.memarian profile=Internet-768K \
    server=hs-VLAN-103
add disabled=yes name=n.ghiasi password=n.ghiasi profile=Internet-1M
add disabled=yes name=m.sabet password=m.sabet profile=Internet-1M
add comment="Sadeghian Guest" disabled=yes name=m.sadeghian password=\
    m.sadeghian profile=Internet-Share-2M
add comment=DrDr name=n.tolou password=n.tolou profile=Internet-Share-2M
add disabled=yes name=m.mesripour password=m.mesripour profile=\
    Internet-Share-2M
add name=a.pasayandeh password=a.pasayandeh profile=Internet-Share-1M
add disabled=yes name=s.shafiei password=s.shafiei profile=Internet-768K
add name=e.hashemi password=e.hashemi profile=Internet-768K
add name=a.ebrahimi password=a.ebrahimi profile=Internet-768K
add name=mo.rahimi password=mo.rahimi profile=Internet-768K
add disabled=yes name=f.najafi password=f.najafi profile=Internet-Share-768K \
    server=hs-VLAN-103
add name=h.berenji password=h.berenji profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=p.eslami password=p.eslami profile=Internet-768K \
    server=hs-VLAN-103
add name=y.pakseresht password=y.pakseresht profile=Internet-768K
add name=z.samadzad password=z.samadzad profile=Internet-2M
add disabled=yes name=m.soleimanian password=m.soleimanian profile=\
    Internet-01M
add name=m.issakhani password=m.issakhani profile=Internet-01M
add name=z.akbari password=z.akbari profile=Internet-768K
add name=m.mehdizadeh password=m.mehdizadeh profile=Internet-768K
add disabled=yes name=n.dehvan password=n.dehvan profile=Internet-Share-768K
add name=m.shoaei password=m.shoaei profile=Internet-768K server=hs-VLAN-103
add name=s.khaleghinasab password=s.khaleghinasab profile=Internet-4M
add disabled=yes name=sh.moradi password=sh.moradi profile=Internet-768K
add name=k.nejadi password=k.nejadi profile=Internet-768K
add name=e.kerdar password=e.kerdar profile=Internet-768K
add name=m.khani password=m.khani profile=Internet-768K
add name=s.bitaraf password=s.bitaraf profile=Internet-Share-2M
add name=r.hafezi password=r.hafezi profile=Internet-Share-2M
add name=a.zadehhoseini password=a.zadehhoseini profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=a.giahi password=a.giahi profile=Internet-768K
add disabled=yes name=s.orang password=s.orang profile=Internet-768K
add name=az.karami password=az.karami profile=Internet-768K
add disabled=yes name="h.allahyari " password="h.allahyari " profile=\
    Internet-768K
add name=rostammi password=rostammi profile=Internet-4M
add name=m.hadavand password=m.hadavand profile=Internet-Share-4M
add name=g.farokhrooz password=g.farokhrooz profile=Internet-768K
add name=m.sahafzadeh password=m.sahafzadeh profile=Internet-768K
add name=a.yazdani password=a.yazdani profile=Internet-2M
add name=s.abedini password=s.abedini profile=Internet-2M
add disabled=yes name=z.azadian password=z.azadian profile=Internet-1M
add name=a.tondpour password=a.tondpour profile=Internet-Share-10M
add name=s.rezaei password=s.rezaei profile=Internet-1M
add name=s.mohamadi password=s.mohamadi profile=Internet-2M
add disabled=yes name=m.asgarpour password=m.asgarpour profile=Internet-1M
add name=g.abaschian password=g.abaschian profile=Internet-1M
add name=l.hoznian password=l.hoznian profile=Internet-Share-768K
add name=s.hadadi password=s.hadadi profile=Internet-Share-768K
add name=i.rastegar password=i.rastegar profile=Internet-1M server=\
    hs-VLAN-105
add disabled=yes name=a.emadizadeh password=a.emadizadeh profile=Internet-1M \
    server=hs-VLAN-105
add name=f.maleki password=f.maleki profile=Internet-768K
add name=m.moaven password=m.moaven profile=Internet-Share-2M
add name=m.nekouizadeh password=m.nekouizadeh profile=Internet-1M
add name=a.giyahi password=a.giyahi profile=Internet-1M server=hs-VLAN-105
add name=e.ansari password=e.ansari profile=Internet-2M
add disabled=yes name=a.toni password=a.toni profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=h.syedmahdi password=h.syedmahdi profile=Internet-768K
add name=h.seyedmahdi password=h.seyedmahdi profile=Internet-768K
add name=m.hadadian password=m.hadadian profile=Internet-1M server=\
    hs-VLAN-103
add name=el.fallah password=el.fallah profile=Internet-768K server=\
    hs-VLAN-103
add name=sh.roozbahani password=sh.roozbahani profile=Internet-768K server=\
    hs-VLAN-103
add name=s.maleki password=s.maleki profile=Internet-768K server=hs-VLAN-103
add name=m.haeri password=m.haeri profile=Internet-2M server=hs-VLAN-103
add name=am.faeghi password=am.faeghi profile=Internet-1M server=hs-VLAN-105
add disabled=yes name=s.sadeghmanesh password=s.sadeghmanesh profile=\
    Internet-1M server=hs-VLAN-105
add disabled=yes name=h.naderinejad password=h.naderinejad profile=\
    Internet-1M server=hs-VLAN-105
add disabled=yes name=a.solhjoo password=a.solhjoo profile=Internet-Share-2M
add name=m.ghafari password=m.ghafari profile=Internet-2M server=hs-VLAN-103
add name=a.motevali password=a.motevali profile=Internet-2M server=\
    hs-VLAN-103
add name=a.akbarpour password=a.akbarpour profile=Internet-2M server=\
    hs-VLAN-103
add name=m.ghafarian password=m.ghafarian profile=Internet-768K server=\
    hs-VLAN-103
add name=p.rostampoor password=p.rostampoor profile=Internet-768K
add disabled=yes name=r.seyf password=r.seyf profile=Internet-Share-2M \
    server=hs-VLAN-106
add name=h.hoseini password=h.hoseini profile=Internet-768K
add name=m.pious password=m.pious profile=Internet-Share-1M
add name=work1 password=work1 profile=Internet-4M
add name=m.babaei password=m.babaei profile=Internet-1M
add name=z.rousta password=z.rousta profile=Internet-768K server=hs-VLAN-104
add name=a.rohani password=a.rohani profile=Internet-2M server=hs-VLAN-103
add name=app password=app profile=Internet-1M
add disabled=yes name=n.mehrjoo password=n.mehrjoo profile=Internet-768K \
    server=hs-VLAN-104
add name=m.shahheydari password=m.shahheydari profile=Internet-Share-2M
add disabled=yes name=h.shahroudi password=h.shahroudi profile=Internet-2M
add name=m.shahroudi password=m.shahroudi profile=Internet-2M
add name=b.shaygan password=b.shaygan profile=Internet-2M
add name=m.rohanian password=m.rohanian profile=Internet-2M
add name=m.abbasi password=m.abbasi profile=Internet-768K
add name=s.simayi password=s.simayi profile=Internet-2M server=hs-VLAN-103
add name=sh.marzayi password=sh.marzayi profile=Internet-768K server=\
    hs-VLAN-103
add name=sh.marzaei password=sh.marzaei profile=Internet-768K server=\
    hs-VLAN-103
add name=s.chavoshi password=s.chavoshi profile=Internet-768K
add name=m.shakiba password=m.shakiba profile=Internet-2M
add disabled=yes name=a.alimardani password=a.alimardani profile=Internet-1M
add name=m.esmaeilzadeh password=m.esmaeilzadeh profile=Internet-768K
add name=m.bahavar password=m.bahavar profile=Internet-1M
add name=m.heydari password=m.heydari profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=m.jamali password=m.jamali profile=Internet-768K \
    server=hs-VLAN-103
add name=a.sharbatdar password=a.sharbatdar profile=Internet-768K
add name=a.dehghan password=a.dehghan profile=Internet-768K
add name=s.pourjowzi password=713405 profile=Internet-Share-2M
add disabled=yes name=n.nobahar password=n.nobahar profile=Internet-768K
add name=a.ghafarian password=a.ghafarian profile=Internet-2M
add name=y.yousefi password=y.yousefi profile=Internet-768K
add name=m.ababie password=m.ababie profile=Internet-768K
add name=n.jalali password=n.jalali profile=Internet-2M
add name=m.jafari password=m.jafari profile=Internet-Share-2M
add name=p.isanejad password=p.isanejad profile=Internet-768K server=\
    hs-VLAN-103
add name=m.yaghoubi password=m.yaghoubi profile=Internet-2M server=\
    hs-VLAN-103
add name=f.rostami password=f.rostami profile=Internet-2M server=hs-VLAN-103
add name=n.salimi password=n.salimi profile=Internet-768K server=hs-VLAN-103
add name=m.asgari password=m.asgari profile=Internet-768K
add name=m.karimi password=m.karimi profile=Internet-Share-3M
add name=d.khorsandi password=d.khorsandi profile=Internet-768K server=\
    hs-VLAN-104
add name=s.bagheri password=s.bagheri profile=Internet-768K server=\
    hs-VLAN-104
add name=sa.bagheri password=sa.bagheri profile=Internet-768K server=\
    hs-VLAN-104
add name=s.ghanbari password=s.ghanbari profile=Internet-2M server=\
    hs-VLAN-103
add name=f.hami password=f.hami profile=Internet-2M
add name=m.mohamadpour password=m.mohamadpour profile=Internet-768K server=\
    hs-VLAN-104
add name=m.yeganeh password=m.yeganeh profile=Internet-768K server=\
    hs-VLAN-104
add name=m.mohamadzadeh password=m.mohamadzadeh profile=Internet-768K server=\
    hs-VLAN-104
add name=m.vahdat password=m.vahdat profile=Internet-768K server=hs-VLAN-103
add name=a.shoorabi password=a.shoorabi profile=Internet-Share-3M
add name=a.andarzgou password=a.andarzgou profile=Internet-2M server=\
    hs-VLAN-103
add name=n.sagheb password=n.sagheb profile=Internet-01M
add name=f.dehghan password=f.dehghan profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=e.rostami password=e.rostami profile=Internet-768K \
    server=hs-VLAN-103
add name=e.etesami password=e.etesami profile=Internet-768K
add name=p.moghaddam password=p.moghaddam profile=Internet-768K server=\
    hs-VLAN-103
add name=p.ramezani password=p.ramezani profile=Internet-1M server=\
    hs-VLAN-103
add name=m.mohamadi password=m.mohamadi profile=Internet-768K server=\
    hs-VLAN-103
add name=b.moradi password=b.moradi profile=Internet-1M
add name=m.golmohammadi password=m.golmohammadi profile=Internet-1M
add name=m.salehi password=m.salehi profile=Internet-4M
add name=b.kahvand password=b.kahvand profile=Internet-Share-3M
add name=s.hasani password=s.hasani profile=Internet-768K server=hs-VLAN-103
add name=mrdk1 password=mrdk1 profile=Internet-Share-10M
add name=mrdk2 password=mrdk2 profile=Internet-Share-10M
add name=s.jozak password=s.jozak profile=Internet-Share-4M
add name=d.mehrabani password=d.mehrabani profile=Internet-768K server=\
    hs-VLAN-103
add name=n.mohamadzade password=n.mohamadzade profile=Internet-768K server=\
    hs-VLAN-104
add name=h.rostami password=h.rostami profile=Internet-Share-1M
add name=f.chamani password=f.chamani profile=Internet-768K server=\
    hs-VLAN-103
add name=a.ghasemi password=a.ghasemi profile=Internet-1M
add name=se.pourjozi password=se.pourjozi profile=Internet-768K server=\
    hs-VLAN-103
add name=f.rafiee password=f.rafiee profile=Internet-2M server=hs-VLAN-103
add name=a.abasi password=a.abasi profile=Internet-2M server=hs-VLAN-103
add disabled=yes name=a.karimi password=a.karimi profile=Internet-768K \
    server=hs-VLAN-104
add name=z.heidarlaki password=z.heidarlaki profile=Internet-768K server=\
    hs-VLAN-103
add name=m.mohsenifar password=m.mohsenifar profile=Internet-2M
add name="r.ebrahimi  " password=123456 profile=Internet-2M
add name=n.esmaeili password=n.esmaeili profile=Internet-768K server=\
    hs-VLAN-105
add name=i.ghafoori password=i.ghafoori profile=Internet-2M
add name=m.moradi password=m.moradi profile=Internet-1M
add disabled=yes name=a.khodaparast password=a.khodaparast profile=\
    Internet-768K
add name=ho.rahimi password=ho.rahimi profile=Internet-768K
add name=moj.rahimi password=moj.rahimi profile=Internet-768K
add name=m.ghanbari password=m.ghanbari profile=Internet-768K
add name=i.ghafouri password=i.ghafouri profile=Internet-Share-2M
add name=n.seirafi password=n.seirafi profile=Internet-1M
add name=m.salmanzadeh password=m.salmanzadeh profile=Internet-768K
add name=r.hasani password=r.hasani profile=Internet-768K server=hs-VLAN-104
add disabled=yes name=gh password=gh profile=Internet-2M
add name=p.tavakol password=p.tavakol profile=Internet-768K
add name=a.aminian password=a.aminian profile=Internet-768K
add name=m.roudgarian password=m.roudgarian profile=Internet-1M server=\
    hs-VLAN-105
add name=m.kazemi password=m.kazemi profile=Internet-Share-1M
add name=n.esmaielzadeh password=n.esmaielzadeh profile=Internet-1M
add name=n.nikol password=n.nikol profile=Internet-768K
add name=m.najafi password=m.najafi profile=Internet-1M
add name=m.sarli password=m.sarli profile=Internet-1M
add name=v.vahedi password=v.vahedi profile=Internet-2M
add name=a.asgari password=a.asgari profile=Internet-Share-1M
add name=p.zahedi password=p.zahedi profile=Internet-1M
add name=a.paydar password=a.paydar profile=Internet-768K
add name=d.sheybani password=d.sheybani profile=Internet-1M
add name=ma.zare password=ma.zare profile=Internet-1M
add name=n.esmayilzade password=n.esmayilzade profile=Internet-1M
add name=r.paknezhad password=r.paknezhad profile=Internet-Share-768K
add name=f.akrami password=f.akrami profile=Internet-Share-768K
add name=m.samiei password=m.samiei profile=Unlimited
add name=m.tahmooresi password=m.tahmooresi profile=Internet-4M
add name=p.hasani password=p.hasani profile=Internet-2M
add name=p.fatahi password=p.fatahi profile=Internet-2M
add name=g.shemirani password=g.shemirani profile=Internet-1M
add name=s.golshan password=s.golshan profile=Internet-1M
add name=h.torkzade password=h.torkzade profile=Internet-2M
add name=a.neysari password=a.neysari profile=Internet-768K
add name=m.arian password=m.arian profile=Internet-768K
add name=a.faghihi password=a.faghihi profile=Internet-768K
add name=mrdk3 password=mrdk3 profile=Internet-Share-10M
add name=m.daghighi password=m.daghighi profile=Internet-768K
add name=m.ghaneyi password=m.ghaneyi profile=Internet-768K
add name=m.tehrani password=m.tehrani profile=Internet-768K
add name=p.shahbazi password=p.shahbazi profile=Internet-768K
add name=a.bakhshi password=a.bakhshi profile=Internet-Share-1M
add name=o.keshavarz password=o.keshavarz profile=Internet-768K
add name=f.yekani password=f.yekani profile=Internet-Share-1M
add name=s.mansouri password=s.mansouri profile=Internet-4M
add name=s.abdifar password=s.abdifar profile=Internet-1M
add name=mo.jafari password=mo.jafari profile=Internet-1M
add name=m.mehrvash password=m.mehrvash profile=Internet-1M
add name=v.ghorbani password=v.ghorbani profile=Internet-768K
add name=a.haghighat password=a.haghighat profile=Internet-768K
add name=h.sharafdini password=h.sharafdini profile=Internet-768K
add name=a.hacoupian password=a.hacoupian profile=Internet-Share-2M
add name=z.roozdar password=z.roozdar profile=Internet-768K
add name=a.jobedar password=a.jobedar profile=Internet-768K
add name=k.kavand password=k.kavand profile=Internet-768K
add name=m.mohebbi password=m.mohebbi profile=Internet-768K
add name=m.ghaemi password=m.ghaemi profile=Internet-768K
add name=e.eslamipour password=e.eslamipour profile=Internet-768K
add name=f.fakhri password=f.fakhri profile=Internet-768K
add name=m.zarei password=m.zarei profile=Internet-768K
add name=e.ghasemi password=e.ghasemi profile=Internet-768K
add name=s.mogharabi password=s.mogharabi profile=Internet-768K
add name=m.ghafouri password=m.ghafouri profile=Internet-Share-2M
add name=h.bazrafkan password=h.bazrafkan profile=Internet-768K
add name=e.hosseinnezhad password=e.hosseinnezhad profile=Internet-768K
add name="n.hajjihadi " password="n.hajjihadi " profile=Internet-768K
add name=a.jahandide password=a.jahandide profile=Internet-768K
add name=a.emadizade password=a.emadizade profile=Internet-768K
add name=e.borhani password=e.borhani profile=Internet-768K
add name=a.khaki password=a.khaki profile=Internet-768K
add name=a.hoseynzade password=a.hoseynzade profile=Internet-768K
add name=a.sheykhnezhad password=a.sheykhnezhad profile=Internet-768K
add name=b.taleghani password=b.taleghani profile=Internet-768K
add name=n.shahed password=n.shahed profile=Internet-768K
add name=h.gharedaghi password=h.gharedaghi profile=Internet-768K
add name=m.sadeghi password=m.sadeghi profile=Internet-768K
add name=s.askarian password=s.askarian profile=Internet-768K
