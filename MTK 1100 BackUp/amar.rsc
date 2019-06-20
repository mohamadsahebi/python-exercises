# oct/31/2017 08:38:11 by RouterOS 6.32.1
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
    Internet-Share-2M rate-limit=2M/2M session-timeout=12h shared-users=3 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-3M rate-limit=3M/3M session-timeout=12h shared-users=3 \
    status-autorefresh=9h transparent-proxy=yes
add idle-timeout=9h insert-queue-before=101 keepalive-timeout=9h name=\
    Internet-Share-4M rate-limit=4M/4M session-timeout=12h shared-users=3 \
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
/ip hotspot user
add name=b.solhjou password=123456 profile=Internet-1M
add name=f.sadeghi password=123 profile=Internet-768K
add name=g.bahrami password=gelare61 profile=Internet-768K
add name=h.jahani password=12345 profile=Internet-Share-1M
add name=m.amid password=8226100 profile=Internet-Share-1M
add name=m.monfared password=photoshop1 profile=Internet-2M
add name=sh.rahmani password=sh1234567 profile=Internet-768K
add name=a.saryazdi password=a.saryazdi profile=Internet-Share-2M server=\
    hs-VLAN-111
add name=n.arefi password=n.arefi profile=Internet-1M
add name=a.shahkouei password=a.shahkouei profile=Internet-768K
add name=p.isanejad password=p.isanejad profile=Internet-1M
add name=sh.tarverdizadeh password=12369 profile=Internet-768K
add name=f.karaji password=f.karaji profile=Internet-Share-4M
add name=m.vesali password=m.vesali profile=Internet-768K
add name=m.kamalinia password=mehran123 profile=Internet-1M
add name=r.zakariapour password=r.zakariapour profile=Internet-768K
add name=s.padegan password=123456 profile=Internet-2M
add disabled=yes name=sh.sadeghian password=987654321 profile=\
    Internet-Share-1M
add name=m.rostammi password=654321 profile=Internet-Share-3M
add name=s.baziar password=baziar123 profile=Internet-768K
add name=m.khakshoor password=123456 profile=Internet-Share-2M
add name=m.rostammi.mob password=963 profile=Internet-1M
add name=a.vakilian password=a.vakilian profile=Internet-01M
add name=z.vanaki password=z.vanaki profile=Internet-768K
add name=s.padegan.mobile password=padegan1234 profile=Internet-1M
add name=s.khaki password=khaki123 profile=Internet-768K
add name=h.rahimi password=h.rahimi profile=Internet-768K
add name=f.aminian password=123456 profile=Internet-768K
add name=f.barari password=28490 profile=Internet-Share-2M
add name=f.rava password=6820 profile=Internet-Share-2M
add name=f.ziyarati password=241024 profile=Internet-768K
add name=s.poorjoazi password=s.poorjoazi profile=Internet-4M
add name=m.shahbeigi password=shahbeigi8520 profile=Internet-768K
add disabled=yes name=s.sofi password=s.sofi profile=Internet-768K
add name=b.sol.mob password=123456 profile=Internet-768K
add name=jahani password=12345 profile=Internet-Share-1M
add name=f.karaji.mobile password=karaji123 profile=Internet-2M
add name=m.sahebi password=m_sahebi1362 profile=Internet-Share-4M
add name=b.haghighi password=b.haghighi profile=Internet-Share-3M
add disabled=yes name=h.morakabi password=h.morakabi profile=Internet-768K
add name=m.nourinejad password=30520 profile=Internet-768K
add name=b.khodadad password=b.khodadad profile=Internet-768K
add name=a.eslami password=a.eslami profile=Internet-Share-2M
add disabled=yes name=l.vojdani password=l.vojdani profile=Internet-768K
add name=a.fazeli password=a.fazeli profile=Internet-Share-4M
add name=h.rezaee password=h.rezaee profile=Internet-768K
add name=a.talari password=a.talari profile=Internet-768K
add disabled=yes name=haghighi.mob password=haghighi.mob profile=Internet-3M
add name=s.khodadi password=s.khodadi profile=Internet-Share-768K server=\
    hs-VLAN-103
add name=h.aleali password=h.aleali profile=Internet-768K
add name=n.sadeghi password=123456 profile=Internet-Share-1M
add name=n.moradi password=n.moradi profile=Internet-768K
add name=f.amiri password=f.amiri profile=Internet-4M
add name=b.gerayeli password=123456 profile=Internet-Share-1M
add name=z.haghayeghi password=14145537 profile=Internet-Share-768K
add name=k.dolati password=k.dolati profile=Internet-768K
add name=m.bagheri password=m.bagheri profile=Internet-768K
add name=e.afza password=e.afza profile=Internet-768K
add name=s.salehi password=s.salehi profile=Internet-768K
add name=n.rajabpour password=n.rajabpour profile=Internet-768K
add name=a.baniardalan password=1234 profile=Internet-768K
add name=s.khalily password=s.khalily profile=Internet-Share-2M
add name=s.ipchilar password=s.ipchilar profile=Internet-Share-3M
add name=e.ghazanfari password=e.ghazanfari profile=Internet-2M
add name=afshar.mob password=afshar.mob profile=Internet-768K
add name=m.ershadi password=m.ershadi profile=Internet-Share-2M
add name=y.zahedi password=y.zahedi profile=Internet-2M
add name=f.tolou password=f.tolou profile=Internet-768K
add name=m.mottaki password=m.mottaki profile=Internet-768K
add disabled=yes name=z.khatib password=z.khatib profile=Internet-768K
add name=m.mirzaee password=m.mirzaee profile=Internet-Share-1M
add name=m.afshar password=m.afshar profile=Internet-Share-2M
add name=n.shiry password=n.shiry profile=Internet-768K
add name=s.bakhtiari password=s.bakhtiari profile=Internet-1M
add disabled=yes name=f.bameri password=f.bameri profile=Internet-768K
add name=a.davoodi password=a.davoodi profile=Internet-Share-4M
add name=a.ramazani password=a.ramazani profile=Internet-768K
add name=m.azali password=m.azali profile=Internet-768K
add name=e.etemad password=e.etemad profile=Internet-Share-1M
add name=m.khakshoor.mob password=123456 profile=Internet-1M
add name=m.ariannejad password=m.ariannejad profile=Internet-Share-2M
add name=a.kargar password=a.kargar profile=Internet-768K
add name=a.rahmani password=a.rahmani profile=Internet-768K
add name=a.faeghi password=a.faeghi profile=Internet-1M
add name=m.vojdani password=m.vojdani profile=Internet-768K
add name=m.omrani.mob password=m.omrani profile=Internet-768K
add name=m.nezami password=m.nezami profile=Internet-Share-1M
add name=arianmob password=arianmob profile=Internet-Share-2M
add name=n.daneshpour password=n.daneshpour profile=Internet-Share-2M
add name=h.saleh password=h.saleh profile=Internet-768K
add disabled=yes name=a.pirzad password=a.pirzad profile=Internet-768K
add name=r.erami password=r.erami profile=Internet-4M
add name=m.hami password=m.hami profile=Internet-01M
add name=m.oghani password=m.oghani profile=Internet-768K
add name=e.rajabi password=e.rajabi profile=Internet-768K
add name=e.fakharzade password=e.fakharzade profile=Internet-01M
add name=a.najipor password=a.najipor profile=Internet-2M
add name=f.yazdani password=f.yazdani profile=Internet-768K
add name=a.rahbar password=a.rahbar profile=Internet-768K
add name=salehi password=salehi profile=Internet-768K
add name=p.fathi password=p.fathi profile=Internet-Share-2M
add name=a.karami password=a.karami profile=Internet-768K
add name=a.ebrahim password=a.ebrahim profile=Internet-768K
add name=m.hajiloo password=m.hajiloo profile=Internet-768K
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
add name=z.bakhtyari password=z.bakhtyari profile=Internet-Share-2M
add name=a.mehraban password=a.mehraban profile=Internet-1M
add disabled=yes name=h.ghasemi password=h.ghasemi profile=Internet-768K
add name=s.posti password=s.posti profile=Internet-768K
add name=m.rastegar password=m.rastegar profile=Internet-Share-2M
add disabled=yes name=f.ahmadi password=f.ahmadi profile=Internet-768K
add disabled=yes name=p.mosaed password=p.mosaed profile=Internet-768K
add name=a.jahani password=a.jahani profile=Internet-768K
add name=m.mansori password=m.mansori profile=Internet-768K
add name=m.mesbah password=m.mesbah profile=Internet-Share-1M
add name=s.kamyabpour password=s.kamyabpour profile=Internet-768K
add name=m.abdi password=m.abdi profile=Internet-768K
add name=a.fadaei password=a.fadaei profile=Internet-1M
add name=m.asadollahi password=m.asadollahi profile=Internet-768K
add name=m.safarzadeh password=m.safarzadeh profile=Internet-768K
add name=sp password=sp profile=Internet-Share-1M
add name=m.shafiee password=m.shafiee profile=Internet-768K
add name=f.mohammadi password=f.mohammadi profile=Internet-Share-2M
add name=sh.hosseinpour password=sh.hosseinpour profile=Internet-768K
add name=s.hatami password=s.hatami profile=Internet-768K
add name=f.bayat password=f.bayat profile=Internet-Share-1M
add name=m.sedighpour password=m.sedighpour profile=Internet-Share-01M
add name=m.omrani password=m.omrani profile=Internet-3M
add name=gh.heydari password=gh.heydari profile=Internet-768K
add name=z.moghadam password=z.moghadam profile=Internet-Share-768K
add name=s.khajehsalehani password=s.khajehsalehani profile=Internet-768K
add name=m.safarzadehfood password=m.safarzadehfood profile=Internet-768K
add name=e.kiani password=e.kiani profile=Internet-768K server=hs-VLAN-103
add disabled=yes name=f.shariattalab password=f.shariattalab profile=\
    Internet-Share-1M
add name=f.yahyae password=f.yahyae profile=Internet-768K
add name=m.aghazadeh password=m.aghazadeh profile=Internet-768K
add name=a.keneshloo password=a.keneshloo profile=Internet-768K
add disabled=yes name=a.yazdanpanah password=a.yazdanpanah profile=\
    Internet-Share-1M
add name=sh.gholipour password=sh.gholipour profile=Internet-768K
add name=m.hojjati password=m.hojjati profile=Internet-1M
add disabled=yes name=s.alirezayi password=s.alirezayi profile=Internet-1M
add name=s.arbabi password=s.arbabi profile=Internet-768K
add name=f.hosseini password=f.hosseini profile=Internet-768K
add name=k.ehrari password=k.ehrari profile=Internet-768K
add name=m.ahmadi password=m.ahmadi profile=Internet-768K
add name=b.fathi password=b.fathi profile=Internet-768K
add name=m.baghi password=m.baghi profile=Internet-768K
add name=h.edrisi password=h.edrisi profile=Internet-768K
add name=m.lali password=m.lali profile=Internet-768K
add disabled=yes name=s.ahmadikia password=s.ahmadikia profile=Internet-1M
add name=g1 password=g1 profile=Internet-1M
add name=m.arab password=m.arab profile=Internet-4M
add name=a.hoseini password=a.hoseini profile=Internet-768K
add name=f.najipour password=f.najipour profile=Internet-2M
add name=m.shirkhodae password=m.shirkhodae profile=Internet-768K
add name=a.safari password=a.safari profile=Internet-768K
add name=f.mehrzadegan password=f.mehrzadegan profile=Internet-768K
add name=ah password=ah profile=Internet-1M
add name=t.taghipour password=t.taghipour profile=Internet-Share-1M
add name=m.bazvand password=m.bazvand profile=Internet-768K
add name=l.khodabandeloo password=l.khodabandeloo profile=Internet-768K
add name=a.moosazadeh password=a.moosazadeh profile=Internet-768K
add name=a.gholizadeh password=a.gholizadeh profile=Internet-1M
add disabled=yes name=e.bahari password=e.bahari profile=Internet-768K
add name=a.alizade password=a.alizade profile=Internet-01M
add disabled=yes name=g.erami password=g.erami profile=Internet-768K
add name=m.farahani password=m.farahani profile=Internet-Share-2M
add name=m.mousavi password=m.mousavi profile=Internet-768K
add name=m.alagha password=m.alagha profile=Internet-01M
add name=h.eskandari password=h.eskandari profile=Internet-768K
add name=m.anbari password=m.anbari profile=Internet-Share-4M
add name=a.nematpasand password=a.nematpasand profile=Internet-2M
add name=r.kermanshahi password=r.kermanshahi profile=Internet-Share-1M
add name=h.sarfarazian password=h.sarfarazian profile=Internet-768K
add disabled=yes name=b.omidvar password=b.omidvar profile=Internet-1M
add name=k.nategh password=k.nategh profile=Internet-768K
add name=m.khakroo password=m.khakroo profile=Internet-768K
add name=o.hashemi password=o.hashemi profile=Internet-4M
add disabled=yes name=r.oveilaghi password=r.oveilaghi profile=Internet-1M
add name=m.aslani password=m.aslani profile=Internet-768K
add name=sh.karambakhsh password=sh.karambakhsh profile=Internet-768K
add name=a.davarzani password=a.davarzani profile=Internet-Share-2M
add name=s.nezami password=s.nezami profile=Internet-01M
add name=m.ghasemi password=m.ghasemi profile=Internet-768K
add name=e.mohamadgol password=e.mohamadgol profile=Internet-01M
add name=m.nourmohamadzadeh password=m.nourmohamadzadeh profile=Internet-768K
add name=a.mirkamali password=a.mirkamali profile=Internet-1M
add name=a.hozhabri password=a.hozhabri profile=Internet-1M
add name=f.khalagh password=f.khalagh profile=Internet-768K
add name=h.nodehi password=h.nodehi profile=Internet-01M
add name=m.houshosadat password=m.houshosadat profile=Internet-768K
add disabled=yes name=r.agahi password=r.agahi profile=Internet-Share-2M
add disabled=yes name=a.sharif password=a.sharif profile=Internet-768K
add name=ze.khatib password=ze.khatib profile=Internet-768K
add name=s.zamani password=s.zamani profile=Internet-2M
add name=a.farshbaf password=a.farshbaf profile=Internet-768K
add name=m.jalali password=m.jalali profile=Internet-768K
add name=p.mesdaghi password=p.mesdaghi profile=Internet-768K
add disabled=yes name=h.khodabandeh password=h.khodabandeh profile=\
    Internet-768K
add name=s.ebrahimi password=s.ebrahimi profile=Internet-4M
add name=f.dabaghha password=f.dabaghha profile=Internet-768K
add name=t.parsa password=t.parsa profile=Internet-Share-1M
add disabled=yes name=z.samadzadeh password=z.samadzadeh profile=\
    Internet-768K
add name=e.ghasemi password=e.ghasemi profile=Internet-768K
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
add name=k.khazeni password=k.khazeni profile=Internet-768K server=\
    hs-VLAN-103
add name=s.chamani password=s.chamani profile=Internet-768K
add name=drdr password=drdr profile=Internet-2M
add name=f.khodabandeh password=f.khodabandeh profile=Internet-Share-3M
add name=o.baniasad password=o.baniasad profile=Internet-Share-2M
add name=m.mohseni password=m.mohseni profile=Internet-Share-1M
add name=a.haghighi password=a.haghighi profile=Internet-Share-2M
add name=z.hezarpishe password=z.hezarpishe profile=Internet-768K server=\
    hs-VLAN-103
add name=m.rahchamani password=m.rahchamani profile=Internet-768K
add name=mh.rezaie password=mh.rezaie profile=Internet-768K
add name=bmn password=bmn profile=Unlimited
add name=v.mahdiun password=v.mahdiun profile=Internet-Share-2M
add name=m.jabbari password=m.jabbari profile=Internet-768K
add disabled=yes name=a.jabari password=a.jabari profile=Internet-768K
add disabled=yes name=p.latifi password=p.latifi profile=Internet-768K
add name=f.dehghanpoor password=f.dehghanpoor profile=Internet-2M
add name=m.arbabi password=m.arbabi profile=Internet-768K
add name=mh.malek password=mh.malek profile=Internet-Share-2M
add disabled=yes name=guest2 password=guest2 profile=Internet-4M
add disabled=yes name=guest password=guest profile=Internet-768K
add disabled=yes name=a.soizi password=a.soizi profile=Internet-768K
add name=e.adl password=e.adl profile=Internet-768K
add name=p.niknam password=p.niknam profile=Internet-768K
add name=s.shirani password=s.shirani profile=Internet-768K
add name=er.afza password=er.afza profile=Internet-768K
add disabled=yes name=guest3 password=guest3 profile=Internet-4M
add name=m.rajabi password=m.rajabi profile=Internet-768K
add disabled=yes name=guest1 password=guest1 profile=Internet-Share-4M
add name=m.dehghan password=m.dehghan profile=Internet-768K
add name=f.pourabbas password=f.pourabbas profile=Internet-768K
add name=e.fallah password=e.fallah profile=Internet-768K
add name=a.memarian password=a.memarian profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=n.ghiasi password=n.ghiasi profile=Internet-1M
add disabled=yes name=m.sabet password=m.sabet profile=Internet-1M
add comment="Sadeghian Guest" name=m.sadeghian password=m.sadeghian profile=\
    Internet-Share-2M
add comment=DrDr name=n.tolou password=n.tolou profile=Internet-Share-2M
add disabled=yes name=m.mesripour password=m.mesripour profile=\
    Internet-Share-2M
add name=a.pasayandeh password=a.pasayandeh profile=Internet-Share-1M
add name=s.shafiei password=s.shafiei profile=Internet-768K
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
add name=z.samadzad password=z.samadzad profile=Internet-Share-01M
add name=m.soleimanian password=m.soleimanian profile=Internet-01M
add name=m.issakhani password=m.issakhani profile=Internet-01M
add name=z.akbari password=z.akbari profile=Internet-768K
add name=m.mehdizadeh password=m.mehdizadeh profile=Internet-768K
add name=n.dehvan password=n.dehvan profile=Internet-Share-768K
add name=m.shoaei password=m.shoaei profile=Internet-768K server=hs-VLAN-103
add name=s.khaleghinasab password=s.khaleghinasab profile=Internet-4M
add name=sh.moradi password=sh.moradi profile=Internet-3M
add name=k.nejadi password=k.nejadi profile=Internet-768K
add name=e.kerdar password=e.kerdar profile=Internet-768K
add name=m.khani password=m.khani profile=Internet-768K
add name=s.bitaraf password=s.bitaraf profile=Internet-Share-2M
add name=r.hafezi password=r.hafezi profile=Internet-Share-2M
add name=a.zadehhoseini password=a.zadehhoseini profile=Internet-768K server=\
    hs-VLAN-103
add disabled=yes name=a.giahi password=a.giahi profile=Internet-768K
add name=s.orang password=s.orang profile=Internet-768K
add name=az.karami password=az.karami profile=Internet-768K
add name="h.allahyari " password="h.allahyari " profile=Internet-768K
add name=rostammi password=rostammi profile=Internet-4M
add name=m.hadavand password=m.hadavand profile=Internet-Share-4M
add name=g.farokhrooz password=g.farokhrooz profile=Internet-768K
add name=m.sahafzadeh password=m.sahafzadeh profile=Internet-768K
add name=a.yazdani password=a.yazdani profile=Internet-1M
add name=s.abedini password=s.abedini profile=Internet-1M
add name=z.azadian password=z.azadian profile=Internet-1M
add name=a.tondpour password=a.tondpour profile=Internet-Share-1M
add name=mrdkali password=123 profile=Internet-1M
add name=mrd2 password=123 profile=Internet-Share-4M
add name=s.rezaei password=s.rezaei profile=Internet-1M
add name=s.mohamadi password=s.mohamadi profile=Internet-768K
add name=m.asgarpour password=m.asgarpour profile=Internet-1M
add name=g.abaschian password=g.abaschian profile=Internet-1M
add name=l.hoznian password=l.hoznian profile=Internet-Share-768K
add name=s.hadadi password=s.hadadi profile=Internet-Share-768K
add name=i.rastegar password=i.rastegar profile=Internet-Share-768K
add name=a.emadizadeh password=a.emadizadeh profile=Internet-Share-768K
add name=f.maleki password=f.maleki profile=Internet-768K
add name=m.moaven password=m.moaven profile=Internet-3M
add name=m.nekouizadeh password=m.nekouizadeh profile=Internet-1M
add name=a.giyahi password=a.giyahi profile=Internet-1M
add name=e.ansari password=e.ansari profile=Internet-768K
add disabled=yes name=a.toni password=a.toni profile=Internet-768K server=\
    hs-VLAN-103
add name=h.syedmahdi password=h.syedmahdi profile=Internet-768K
add name=h.seyedmahdi password=h.seyedmahdi profile=Internet-768K
add name=m.hadadian password=m.hadadian profile=Internet-1M server=\
    hs-VLAN-103
add name=el.fallah password=el.fallah profile=Internet-768K server=\
    hs-VLAN-103
add name=sh.roozbahani password=sh.roozbahani profile=Internet-768K server=\
    hs-VLAN-103
add name=s.maleki password=s.maleki profile=Internet-768K server=hs-VLAN-103
add name=m.haeri password=m.haeri profile=Internet-768K server=hs-VLAN-103
add name=am.faeghi password=am.faeghi profile=Internet-768K server=\
    hs-VLAN-105
add name=s.sadeghmanesh password=s.sadeghmanesh profile=Internet-768K server=\
    hs-VLAN-105
add name=h.naderinejad password=h.naderinejad profile=Internet-768K server=\
    hs-VLAN-105
add name=a.solhjoo password=a.solhjoo profile=Internet-768K server=\
    hs-VLAN-105
add name=m.ghafari password=m.ghafari profile=Internet-768K server=\
    hs-VLAN-103
add name=a.motevali password=a.motevali profile=Internet-768K server=\
    hs-VLAN-103
add name=a.akbarpour password=a.akbarpour profile=Internet-768K server=\
    hs-VLAN-103
add name=m.ghafarian password=m.ghafarian profile=Internet-768K server=\
    hs-VLAN-103
add name=p.rostampoor password=p.rostampoor profile=Internet-768K
