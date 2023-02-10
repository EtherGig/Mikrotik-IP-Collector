# IP collector for youtube by EtherGig
# Please add your client IP addresses / networks to address list using CLIENT as list name

/ip firewall raw
add action=add-dst-to-address-list address-list=ethergig-youtube address-list-timeout=\
    1d chain=prerouting comment="Get IP YT" content=ytimg.com \
    dst-address-list=!ethergig-youtube protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-youtube address-list-timeout=\
    1d chain=prerouting content=googlevideo.com dst-address-list=!ethergig-youtube \
    protocol=tcp src-address-list=CLIENT