# RAW Get IP whatsapp by EtherGig
/ip firewall raw
add action=add-dst-to-address-list address-list=whatsapp \
    address-list-timeout=1d chain=prerouting comment="Get IP WA" \
    dst-address-list=!LOKAL protocol=tcp src-address-list=LOKAL tls-host=\
    *.whatsapp.com*
add action=add-dst-to-address-list address-list=whatsapp \
    address-list-timeout=1d chain=prerouting dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*.wa.me*
add action=add-dst-to-address-list address-list=whatsapp \
    address-list-timeout=1d chain=prerouting dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*.whatsapp.net*
add action=add-dst-to-address-list address-list=whatsapp \
    address-list-timeout=12h chain=prerouting dst-address-list=!LOKAL \
    dst-port=5222 protocol=tcp src-address-list=LOKAL
add action=add-dst-to-address-list address-list=whatsapp \
    address-list-timeout=12h chain=prerouting dst-address-list=!LOKAL \
    dst-port=5228 protocol=tcp src-address-list=LOKAL
add action=add-dst-to-address-list address-list=whatsapp \
    address-list-timeout=12h chain=prerouting dst-address-list=!LOKAL \
    dst-port=3478 protocol=udp src-address-list=LOKAL
