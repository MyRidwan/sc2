#!/bin/bash

read -p "Isi Dengan Domain Mu : " domainbaru

#Validate
if [[ $domainbaru == "" ]]; then
echo "Isi Dengan Domain Baru"
exit 1
fi

#Input To Domain
cat > /etc/v2ray/domain << END
$domainbaru
END

clear 
echo "Berhasil Menambah Domain"