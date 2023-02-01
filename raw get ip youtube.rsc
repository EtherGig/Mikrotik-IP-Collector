# RAW Get IP youtube by EtherGig
/ip firewall raw
add action=add-dst-to-address-list address-list=youtube address-list-timeout=\
    1d chain=prerouting comment="Get IP YouTube" dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*ytimg.com*
add action=add-dst-to-address-list address-list=youtube address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*googlevideo.com*