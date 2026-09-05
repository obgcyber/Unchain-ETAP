#!/bin/bash

# Script etapadmin olarak çalışmıyorsa etapadmin'e geçer
if [ "$(whoami)" != "etapadmin" ]; then
    SIFRE="etap+pardus!"
    echo "$SIFRE" | su - etapadmin -c "bash '$0' --etapadmin"
    exit $?
fi

echo "Unchain-ETAP programına hoşgeldiniz! Bu program ile E-kilit servisi durdurabilir ve şifresiz açabilirsiniz!"

echo "----ÖNEMLİ BİLGİLENDİRME----"
echo "Bu programın garantisi bulunmamaktadır. Cihazın bozulması taktirde bu programı çalıştıran öğrenci başına geleceklerden sorumludur. Lütfen buna göre çalıştırınız. Eğer çalıştırmakta emin değilseniz lütfen Ctrl ile C tuşlarına basarak durdurunuz veya terminali kapatınız. Sadece Pardus 23 için desteklidir"

echo "----ETAPADMİN ŞİFRESİ----"
SIFRE="etap+pardus!"

echo "İşlem 3 saniye içinde başlayacaktır..."
sleep 3

# E-kilit ve EbaQR servislerini durdurur
echo "$SIFRE" | sudo -S systemctl stop eta-kilit.service ebaqr.service
echo "$SIFRE" | sudo -S systemctl disable eta-kilit.service ebaqr.service

# Kritik bekçi servislerini de susturur
echo "$SIFRE" | sudo -S systemctl stop mcnd.service etausblogin.service eta-right-click.service eta-shutdown.service
echo "$SIFRE" | sudo -S systemctl disable mcnd.service etausblogin.service eta-right-click.service eta-shutdown.service

echo "----İŞLEM TAMAMLANDI----"
echo "E-Kilit Servisleri devre dışı bırakıldı."
echo "https://github.com/obgcyber hesabına destek verin!"
