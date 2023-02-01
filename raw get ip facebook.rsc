# RAW Get IP facebook by EtherGig
/ip firewall raw
add action=add-dst-to-address-list address-list=facebook \
    address-list-timeout=1d chain=prerouting comment="Get IP Facebook" \
    dst-address-list=!LOKAL protocol=tcp src-address-list=LOKAL tls-host=\
    *facebook.com*
add action=add-dst-to-address-list address-list=facebook \
    address-list-timeout=1d chain=prerouting dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*facebook.net*
add action=add-dst-to-address-list address-list=facebook \
    address-list-timeout=1d chain=prerouting dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*m.me*
add action=add-dst-to-address-list address-list=facebook \
    address-list-timeout=1d chain=prerouting dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*messenger.com*