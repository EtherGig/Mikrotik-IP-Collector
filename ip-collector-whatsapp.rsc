# IP collector for whatsapp by EtherGig
# Please add your client IP addresses / networks to address list using CLIENT as list name

/ip firewall raw
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting comment="Get IP WA" content=\
    whatsapp.net dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=\
    CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp.com \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp.cc \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp.tv \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp.org \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp-plus.me \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp-plus.net \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=whatsapp-plus.info \
    dst-address-list=!ethergig-whatsapp protocol=tcp src-address-list=CLIENT
add action=add-dst-to-address-list address-list=ethergig-whatsapp \
    address-list-timeout=1d chain=prerouting content=wa.me dst-address-list=\
    !ethergig-whatsapp protocol=tcp src-address-list=CLIENT