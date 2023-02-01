# RAW Get IP tiktok by EtherGig
/ip firewall raw
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting comment="Get IP tiktok" dst-address-list=!LOKAL \
    protocol=tcp src-address-list=LOKAL tls-host=*.tiktok.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.tiktokv.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.tiktokcdn.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.byteoversea.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.byteoversea.net*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.ibyteimg.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.byteimg.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.ttlivecdn.com*
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    1d chain=prerouting dst-address-list=!LOKAL protocol=tcp \
    src-address-list=LOKAL tls-host=*.ttoversea.net*
